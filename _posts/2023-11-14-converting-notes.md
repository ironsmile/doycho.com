---
title: "Бележките: От ColorNote до Joplin"
date: 2023-11-14 20:30:00 +0300
categories: personal
---

_Чувствайте се предупредени, тази статия има нормално количество пингвини!_

Това ще е How-To статия. Беше ми поставена най - отговорната задача да прехвърля бележки от приложението ColorNote за Android до Joplin на iPhone, друго приложение за бележки. При това без използване на online акаунти. Ще разказвам историята на живота си по - нататък, нека сега минем на същественото. За да успеете нататък ще трябва да се чувствате комфортно с използване на терминал и пускане на програми, писани от други хора.

<!--more-->

## Стъпка 1: Бекъп файл

Направете си бекъп на ColorNotes. Според [документацията на приложението](https://www.colornote.com/faq-question/what-is-the-location-on-the-device-where-my-notes-backed-up-to/) бекъпа трябва да направи файл в директорията `/data/colornote/backup`. Ако това не е достатъчно обяснение, може да разгледате цялата им [FAQ секция](https://www.colornote.com/faq-category/device-backup/).

Но в крайна сметка трябва да се сдобиете с бекъп файл. В моя случай беше с име `colornote-20231104.backup`.

## Стъпка 2: Разкриптиране

Тук е момента да се чувствате като хакери. От ColorNote са решили да пречат на хората максимално и са криптирали бекъпа. За щастие добър интернет човек е написал програма за декриптиране, добре кръстена [ColorNote-backup-decryptor](https://github.com/olejorgenb/ColorNote-backup-decryptor).

Клонирайте си хранилището и гледайте да имате Java. Програмата поддържа четири формата за разкриптиране, явно с времето и версиите на Android приложението са се променяли. Трябва да налучкате коя от версиите е правилната. Също, ако бекъпа е криптиран ще ви трябва паролата му. Ако не е криптиран, паролата `0000`. Въоръжени с програмата, да разкриптираме файла. За мен беше следното:

```sh
java -jar colornote-decrypt.jar 0000 28 < ../colornote-20231104.backup | ./fixup-v2 > ../notes.jsons
```

Резултата трябва да е `notes.json` файл с JSON на всеки ред. Един JSON обект - една бележка. Вижте README-то на програмата за разкриптиране ако не се справяте.

## Стъпка 3: Генериране на `.md` файлове

Тук целта ще е всяка бележка да бъде превърната от JSON ред в създадения на предишната стъпка файл в отделен файл само със заглавието и текста на бележката. За целта направих следния Bash скрипт използващ [jq](https://jqlang.github.io/jq/):

```bash
#!/usr/bin/env bash

IFS=''
while read -r line; do
    fname="output/$(echo "${line}"| jq -r .modified_date).md"
    echo "${line}"| jq -r .title > "${fname}"
    echo >> "${fname}"
    echo "${line}" | jq -r .note >> "${fname}"
done
```

Изпълнява се така:

```sh
./convert.sh < notes.jsons
```

Той чете на стандартния си вход файла направен в стъпка 2 и за всяка бележка създава файл в директорията `output/`. Имената на файловете са Unix timestamp-а на последната промяна на бележката. Вероятно може да има конфликт ако сте променяли бележки в една и съща наносекунда. Тогава може да промените реда с името на `fname="output/$(echo "${line}"| jq -r .uuid).md"`.

Резултата тук е директорията `output/`.

## Стъпка 4: Import в Joplin

В този момент можете да използвате възможността на Joplin да [импортне цяла директория с Markdown файлове](https://joplinapp.org/help/apps/import_export#importing-from-markdown-files). Минуса е, че имената на бележките в Joplin ще са имената на файловете, тоест Unix време или UUID, което сте избрали. Което е досадно.

За щастие добър човек е написал [Python програма](https://discourse.joplinapp.org/t/script-to-import-md-files-with-first-line-as-title/2864), която използва API-то на Joplin и import-ва бележките, така че заглавието им да е първия ред от генерираните ни файлове. За да проработи това трябва да си пуснете "Web Clipper" на Joplin, поне колкото да направите import-а. После можете да си го изтриете. Той се намира в "Tools" -> "Options" -> "Web Clipper". Когато го пуснете ще ви един тоукън. Копирайте си го.

Ако нямате библиотеката за Python, ще трябва да си я инсталирате:

```sh
pip install docopt
```

Свалете си [питонския скрипт](https://gitlab.com/-/snippets/1871587), аз го кръстих `md_file_import.py`. Ще трябва да го редактирате и да добавите тоукъна си около 23-ти ред. След това го изпълнете:

```sh
python md_file_import.py output/
```

Тук `output/` е директорията създадена в предишната стъпка.

По подразбиране скрипта добавя заглавието към тялото на бележката в Joplin. Което не ми харесваше и го редактирах малко.

## Резултат

Всичките ви бележки са вече в Joplin 🗒🎉

## Размисли

ColorNote няма нормален начин за извличане (export) на бележките. Може би е нарочно, искат да "заключат" потребителите си, които няма да искат ръчно да прехвърлят данни. Но все пак се намери начин, благодарение на интернетА, непознати с добри сърца и малко сглобяване.

От своя страна Joplin е направен много добре. Има цяла плеада от опции за извличане и добавяне на бележки. По никакъв начин не се опитва да ви "заключи". Все повече съм впечатлен от него.

В заключение:

* Joplin 👍
* ColorNote 👎