---
layout: post
title:  "PinePhone + pastmarketOS + Phosh в българска среда"
date:   2021-05-20 18:49:00 +0200
excerpt_separator: <!--more-->
---

![PinePhone поставен на бюро]({{ "/assets/pine-phone/cover.jpeg" | absolute_url }})

От доста време не е ставало въпрос за пингвини в този блог и мисля, че е назрял момента този пропуска да бъде поправен. Едно от нещата които искам да постигна с живота си е възможно най - пълна автономност от големите технологични компании. С почти всичко друго съм се справил вече, но има една голяма и страшна дупка. Може би в крайна сметка най - важната от всички части в пъзела. А именно телефона. На практика е невъзможно човек да се измъкне от лапите на Apple и Google когато става въпрос за мобилно устройство. Всички те не работят в интерес на "собственика" си, ами по - скоро защитават интересите на компаниите зад тях. Много е тъжно как няма начин човек да има в джоба си хардуер и софтуер който да е под пълен негов контрол. Или пък вече има? ... там-там-там-дам!

<!--more-->

{% include image.html
            img="/assets/pine-phone/20210520_22h38m12s_grim.jpeg"
            title="Основния екран на postmarketOS на който се виждат иконки на различните програми"
            maxWidth=260
            right=true %}

В последно време започнаха да се появяват "отворени" телефони на които могат да се инсталират операционни системи уважаващи потребителя си. Най - популярните сред тях са [Pine Phone](https://www.pine64.org/pinephone/) и [Librem 5](https://puri.sm/products/librem-5/). Съвсем скоро си купих Pine Phone и реших да го пробвам. Става ли за нещо вече?

На кратко отговора е "не особено все още, но има потенциал". Като начало дойде инсталиран с Manjaro и [Plasma Mobile](https://www.plasma-mobile.org/). В този си вид беше абсолютно неизползваем. Не разбирам този избор за операционна система по подразбиране. Но както и да е, това е хубавото на свободния хардуер. Мога да си инсталирам нещо друго! Друг проблем е липсата на софтуер подходящ за такива телефони. Точно тук идвам аз! Имам намерението да върна малко на цялото това общество, което ми е дало толкова много и да понапиша някоя полезна програма.

(Вече наричаме тези неща "ап", "арр", "приложение"? Или може би нещо друго. В крайна сметка говоря за същото - софтуер, работещ на компютър. Пък бил той и толкова малък, че да се събере в джоба.)

## Инсталация на postmarketOS

Добро птиче ми подшушна, че това е много добър вариант за точно този телефон. Инсталацията става най - лесно ако се използва SD карта. Не правете моята грешка, опитвайки се да използвате стара карта от 2GB, намерена в гардероба ;D Просто не стига мястото. В моя случай заетото място на телефона е 4.6GB след инсталацията и слагане на най - важните програми. Така че за спокойствие използвайте по - голяма, например поне 8GB. Веднъж като се сдобих с достатъчно голяма карта просто следвах [инструкциите от уикито на postmarketOS](https://wiki.postmarketos.org/wiki/PINE64_PinePhone_(pine64-pinephone)#Installation) и всичко мина идеало.

## Болежки

Веднъж като запали новата операционна система, имаше купища неща които трябваше да си настроя. Много от тях изхождаха от това че живея в България. Следват изброени тези които смятам за най - интересни, заедно с инструкции как човек може да се справи с тях.

## Българска клавиатура

{% include image.html
            img="/assets/pine-phone/20210520_23h12m03s_grim.jpeg"
            title="Скрийншот с отворена българска фонетична виртуална клавиатура"
            maxWidth=260
            right=true %}

Гледайки [хранилището на виртуалната клавиатура](https://source.puri.sm/Librem5/squeekboard/-/tree/master/data/keyboards) (squeekboard) изглежда, че има български език. Но не би. Опитах всички варианти - фонетична, БДС или новата фонетична на БАН. Нищо не проработваше. За това реших да последвам [документацията на клавиатурата](https://developer.puri.sm/projects/squeekboard/tutorial.html) и добавих фонетичната българска с име `bg+phonetic.yaml` в `~/.local/share/squeekboard/keyboards/`. Съдържанието на файла взех от [вече съществуващата](https://source.puri.sm/Librem5/squeekboard/-/blob/07d7486e06f62a59c5892c855f2c312053ac16b8/data/keyboards/bg.yaml), която би трябвало да работи по начало.

При първа възможност ще се опитам да поправя всичко това в хранилището на клавиатурата. Иска ми се всички варианти на българската клавиатура да работят от раз без да се налагат действия от страна на потребителя.

## Теленор мобилен интернет

По подразбиране мобилния интернет на Теленор не работи. Настройките му изглеждат твърде стари и споменават Global. За да се подкара използвах настройките от [този сайт](https://apn.global/pk/telenor-apn/). По някаква причина са в секцията за Пакистан! На кратко: **Settings** -> **Mobile** -> **Access Point Names** и там създадох нов ред със следните полета:

* Name: `Telenor BG` (не би трябвало да има значение)
* APN: `Internet`
* Username: `Telenor`
* Password: `Telenor`

След това избрах този нов ред. След едно пускане и спиране на Mobile Data-та всичко проработи.

## Японски език

{% include image.html
            img="/assets/pine-phone/20210520_23h12m29s_grim.jpeg"
            title="Скрийншот японска кана клавиатура"
            maxWidth=260
            right=true %}

Добре, излъгах че ще говоря за изцяло български проблеми! :D По една или друга причина съм мазохист и си правя по - сложен живота като най - важните контакти в адресната ми книга са на японски език. По подразбиране фонта на операционната система не можеше да го изобразява. И сред вече инсталираните не можах да разпозная кой би се справил и кой не. А ръчното търесене из няколко десетки (стотин?) възможности хич не е забавно. За това реших да инсталирам такъв, за който знам че поддържа - Noto CJK. За да сменя фонта използвах Postmarket OS Tweaks арр-чето.

Как става?

```
apk add postmarketos-tweaks-phosh font-noto-cjk
```

След като се инсталира всичко това пуснете програмата **Tweaks** -> **Fonts**. От там си изберете някой вариант на фонта. На мен много ми харесват "Noto Sans CJK JP Regular" за интерфейс и документи, а "Noto Sans Mono CJK JP Regular" за monospace фонт.

## И как е в крайна сметка?

Всъщност съм много доволен! Всичко е по - бавно и нестабилно от кокото би ми харесало. И нетърпелив човек, без много опит с пингвини, би избягал надалеч с писъци. Но въпреки това мога да правя голяма част от нещата за които използвам досегашния си телефон. Но и много повече! Например, в момента телефона е включен към монитор, клавиатура и мишка. По този начин се превръща в съвсем нормален (бавен!) лаптоп. Пиша тази статия точно по този начин.

Какво работи добре?

{% include image.html
            img="/assets/pine-phone/20210520_22h39m25s_grim.jpeg"
            title="Скрийншот с медия плеър"
            maxWidth=260
            right=true %}

* Обаждания по телефона. Не е смешно! До скоро не беше съвсем безпроблемно.
* SMS-ите работят. Не че някога ги ползвам за нещо повече от паркиране в зоните в София.
* Могат да се правят снимки с [Megapixels](https://sr.ht/~martijnbraam/Megapixels/). Яко е бъгав и забавен, но в крайна сметка услява да свърши работа.
* Import на контаките ми от Owncloud беше лесен. Макар че все още не съм настроил синхронизация.
* Слушане на музика с изключително добрия [Lollypop](https://wiki.gnome.org/Apps/Lollypop). Местенето на музика от компютъра към телефона, например, е светлинни години по - просто от ужасите на които съм изложен с iPhone-а на този фронт.
* Слушането на podcast-и е възможно с [Gnome Podcasts](https://wiki.gnome.org/Apps/Podcasts). Макар и малко дразнещо заради липсата на стрийминг.
* Има приемлив браузър в лицето на Firefox с модификации за по - удобно ползване на мобилно устройство. Става, но трябват още много модификации :) И е доста бавен за нещастие.
* [Password Safe](https://gitlab.gnome.org/World/PasswordSafe) е функционален password manager който се интегрира идеално с всичките ми останали операционни системи. Това ще каже "чете .kbx файловете на KeePass".
* Има прилична карта в лицето на [Gnome Maps](https://wiki.gnome.org/Apps/Maps), но навигацията ѝ е отчайваща и работи само докато си оналйн.
* Има прост и удобен Two Factor Auth арр - [numberstation](https://sr.ht/~martijnbraam/numberstation/).
* ТЕРМИНАЛ! Има супер удобен терминален емулатор!
* Мога да си чатя с най - важните ми хора по Matrix протокола с [Fractal](https://wiki.gnome.org/Apps/Fractal). Ако искате да ме намерите - `@me:doycho.com`. Fractal все още не поддържа криптирани чатове, но чувам че е близо.

А едно от най - яките неща е че повечето от изброените програми е с размер 800KB-2MB! Истинско удоволствие е да получиш цяла функционална програма от и тя да е 950KB. Супер яко! Голямото изключение е Firefox, който си е също толкова голям колкото сте свикнали да е.

Какво определено **не работи** особено добре?

* Не мога да си чатя с останалите хора тъй като няма Viber, Messenger, WhatsApp, Signal и други от този вид.
* Никакъв шанс да се появят програмите на банките за онлайн банкиране в някакво разумно близко време.
* Казах ли, че всичко е доста бааавно? Никакви 60 кадъра в секунда няма да се видят скоро.
* Най - хубавия четец за книги е [Foliate](https://johnfactotum.github.io/foliate/) и изискваше ръчно компилиране в моя случай. Но все още не съм успял да отворя и една книга с него.
* Телефона от време на време crash-ва ако изпадне в по - нестандартна ситуация. Например, докато пишех тази статия поне веднъж загубих един час писане. Тъй като при едно заключване на екрана, телефона реши че ще е най - добре да се рестартира!
* Батерията издържа изненадващо малко. Или по - точно, програмите и операционните системи не са особено енергийно ефективни. Ще има да се борят за европейските програми, май.
* Като цяло липсва огромното количество програми с които изобилстват Google и Apple store-овете.

{% include image.html
            img="/assets/pine-phone/20210520_22h41m29s_grim.jpeg"
            title="Скрийншот с карта на София"
            maxWidth=260
            right=true %}

{% include image.html
            img="/assets/pine-phone/20210520_22h42m38s_grim.jpeg"
            title="Скрийншот с менюто за избор на работеща програми"
            maxWidth=260
            right=true %}

И точно тук идвам аз! Мисля първият ми по - голям проект е да направя програма за стриймване от [Euterpe](https://listen-to-euterpe.eu/). Ако аз не поддържам собствения си софтуер, кой друг да го прави? :P

## А бъдещето?

Мисля, че този тип телефони имат хубаво бъдеще и ще могат изцяло да заменят андроидите и ай устройствата. За да стане това, обаче, има две предпоставки:

* Да съумеем да направим повече удобни за тази форма програми. Както и да ги направи много по - ефикасни.
* Хардуера да се забърза мааалко. Да стигне поне 2015-2016 ниво.

