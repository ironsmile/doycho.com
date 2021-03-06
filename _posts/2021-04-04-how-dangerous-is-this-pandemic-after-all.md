---
layout: post
title: "Колко опасна се оказа тази пандемия в крайна сметка"
date: 2021-04-04 15:52:00 +0200
categories: politics
excerpt_separator: <!--more-->
---

За бъдещите историци, пиша това във втората година от Ковид-19. Жалко че такова изречение е изобщо възможно. В началото на пандемията съвсем нормален въпрос за всеки беше "колко е опасно това". В условията на малко информация трябваше да взимаме решения с потенциално големи последствия. Реакции имаше във всякаква посока. От никаква до прекалена. Спомняте ли си хората, които пародираха че са си купили амуниции и оръжие да защитават семейството си? Хората купуващи ориз и тоалетна хартия сякаш цивилизацията ще свърши след няколко седмици? Или пък израза "то си е като грип". След една година събиране на информация вече бихме могли да отговорим изхождайки от данни.

<!--more-->

{% include image.html
            img="/assets/deaths-2016-2021.png"
            title="Бар графика с брой умрели по година в периода 2016г. до 2020г."
            url="/assets/deaths-2016-2021.png"
            maxWidth=500
            right=true %}

За нетърпеливите отговора е **доста е опасна**. В крайна сметка най - лошото нещо което може да ти се случи по време на пандемия е да умреш (по време на каквото и да било, всъщност). За това реших да разгледам статистиката на [НСИ](https://www.nsi.bg) и да видя колко хора са умрели през първата ни пандемична година. И да я сравня с предишни години. Освен графиката, ето ги и данните в табличен вид:

```
год  | умрели  | промяна   |
----------------------------
2016 | 110,645 | --------  |
2017 | 107,228 | (-0.03%)  |
2018 | 109,192 | (+0.01%)  |
2019 | 105,626 | (-0.03%)  |
2020 | 129,223 | (+22.34%) |
```

Данните на всеки ред са за умирания от 11-та седмица едната година до 10-та седмица следващата. Тоест където пише 2017, например, става въпрос за период 11-та седмица на 2017 до 10-та седмица на 2018. Включително и от двете страни. Избрах го за да рефлектира точно една година с Ковид-19 за 2020.

### Анализ

След като прочетете данните, то вече може сами да си правите изводите. Ако искате даже може да спрете да четете, мисля че всичко е достатъчно красноречиво. Но все пак аз ще продължа с моя анализ. Дори без да знаехте за наличието на опасна заразна болест, разпространяваща се сред населението, то пак бихте забелязали че нещо особено се случва.

За периода 2016-2020г. нищо друго съществено не се е случило със страната ни. Нито сме участвали във война, [нито миграционните процеси са се променили значително](https://www.nsi.bg/bg/content/3058/%D0%BC%D0%B8%D0%B3%D1%80%D0%B0%D1%86%D0%B8%D1%8F), [нито раждаемостта](https://www.nsi.bg/bg/content/2953/%D1%80%D0%B0%D0%B6%D0%B4%D0%B0%D0%B5%D0%BC%D0%BE%D1%81%D1%82). Пък ако се е случило нещо голямо, то аз някак съм пропуснал. А дори бихме очаквали числата да вървят в другата посока! [Населението на страната малко по малко намалява през годините](https://www.nsi.bg/bg/content/2972/%D0%BD%D0%B0%D1%81%D0%B5%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B8-%D0%B4%D0%B5%D0%BC%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D1%81%D0%BA%D0%B8-%D0%BF%D1%80%D0%BE%D0%B3%D0%BD%D0%BE%D0%B7%D0%B8), така че дори се очаква бройката умрели на година също да намалява. Точно както е било в периода 2016-2019г. В началото на 2020г. се върнаха хора в България. Но определено населението не се е увеличило с 22.34%. И определено върналите се не са били на прага на смъртта.

В крайна сметка около 24-25 хиляди българи повече са починали през годината на пандемията. Повече от колкото естествено би се очаквало. Това число е различно от [официалното публикувано](https://coronavirus.bg/) за починали от Ковид-19 към 04.04.2021г. - 13,507. Разликата най - вероятно до някъде се дължи на непълно диагностициране. До някъде се дължи и на факта, че много хора не са получили лекарска помощ за други проблеми, която иначе биха в година без глобална пандемия. Аз твърдя че пряко или почти пряко увеличаването на броя умрели се дължи точно на скапания вирус. Не съм учен опитващ се да публикува и целящ `p <= 0.05`, за това мога да си позволя смели твърдения. 24-25 хиляди българи са загубили години от живота си [защото главата на рибата вече сериозно смърди]({{ site.baseurl }}{% post_url 2021-04-03-rotten-fish %}). И това е само първата година.

При това в началото на 2020 имахме няколкомесечно предизвестие. За вируса се знаеше _широко_ още от Януари. Ето за пример тази статия в Guardian - [UK emergency committee discuss outbreak as more than 33 million people affected by lockdown measures in China](https://www.theguardian.com/science/live/2020/jan/23/coronavirus-china-virus-flu-scotland-testing-wuhan-live-news-updates). Хората които наистина се интересуваха, и тези на които им е работата да следят за такива неща, знаеха от Декември. И за какво използва това време нашето любимо управление? Най - вероятно да си строи сараи, да си брои кюлчетата, апартаментите или да си избира новия модел джип. Докато по света [има](https://www.openstreetmap.org/#map=5/-40.514/171.387) [държави](https://www.openstreetmap.org/#map=5/15.790/108.239), които се справиха изключително добре с този проблем. Броят умрели там се брои в стотици, десетки или дори по - малко.

Не забравяйте, че днес все още има избори и можете да инсталирате нова, все още добре миришеща глава. Пък ако много внимателно избирате може и да изберете някоя с мозък в нея!

### Източници

Първичните данни в този пост са публикувани от НСИ. Следват връзки към тях за да може всеки да ги провери за себе си.

* [Инфостат](https://infostat.nsi.bg/infostat/pages/reports/query.jsf?x_2=1818)
* [Таблица с умирания по седмица 2016-2021](https://www.nsi.bg/sites/default/files/files/pages/covid/Deaths_2016-2021_W11.xlsx)
