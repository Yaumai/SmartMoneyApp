import 'package:flutter/material.dart';
import 'module.dart';
import 'module_slide.dart';

class ModuleCarousel extends StatelessWidget {
  final List<Module> modules = [
    Module(
      index: 0,
      title: "Общие понятия концепции Smart Money",
      imagePath: 'images/module_0.png',
      levels: [
        Level(
          title: "Что подразумевается под \"умными деньгами\"?",
          carouselContent: CarouselContent(
            items: [
              Container(
                child: const Center(
                  child: Text(
                    "Умные деньги — это крупные участники рынка, имеющие достаточные объемы, чтобы оказывать влияние на цену. Это небольшая группа, в которую входят банки и крупные фонды.",
                    style: TextStyle(
                      fontSize: 21.0,
                    ),
                  ),
                ),
              ),
              Container(
                child: const Center(
                  child: Text(
                    "Каждое движение до мельчайшей детали контролируется. Это делается с помощью искусственного интеллекта, программы, которая доставляет цену на определенные значения.",
                    style: TextStyle(
                      fontSize: 21.0,
                    ),
                  ),
                ),
              ),
              Container(
                child: const Center(
                  child: Text(
                    "Уникальные алгоритмы, которые опускают и поднимают цену, эффективны, потому что они знают поведение людей, которое неизменно будет основываться на страхе и жадности.",
                    style: TextStyle(
                      fontSize: 21.0,
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRect(
                      child: Align(
                        alignment: Alignment.topCenter,
                        heightFactor: 1, //Управляет размером изображения
                        child: Image.asset(
                          'images/Module_0_Level_1/Module_0_Level_1_1.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Парадигма рыночной эффективности",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: const Center(
                  child: Text(
                    "По другую сторону находится большинство трейдеров, около 95%, включая нас – это не информированные деньги. В такую группу входят ритейл трейдеры и небольшие фонды.",
                    style: TextStyle(
                      fontSize: 21.0,
                    ),
                  ),
                ),
              ),
              Container(
                child: const Center(
                  child: Text(
                    "Резиденты такой группы считают, что из-за их численности они двигают рынок. Но на самом деле розничный сектор не может оказывать никакого влияния на цену.",
                    style: TextStyle(
                      fontSize: 21.0,
                    ),
                  ),
                ),
              ),
              Container(
                child: const Center(
                  child: Text(
                    "Обуславливается это низкими объемами: большая группа в денежном эквиваленте не так уж велика, как может показаться. Крупные объемы, способные это делать, находятся в небольшой группе — умных денег.",
                    style: TextStyle(
                      fontSize: 21.0,
                    ),
                  ),
                ),
              ),
              Container(
                child: const Center(
                  child: Text(
                    "Ритейл трейдеры слишком малы и составляют только небольшой процент обращаемых денег на рынке (~5%), поэтому основной целью для умного капитала всегда выступают фонды.",
                    style: TextStyle(
                      fontSize: 21.0,
                    ),
                  ),
                ),
              ),
              Container(
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Что подразумевается под торговлей по концепции Smart Money?",
                      style: TextStyle(
                        fontSize: 21.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30.0), // Расстояние между текстами
                    Text(
                      "Следование за крупными участниками рынка. С помощью институциональных инструментов вы сможете идентифицировать и отслеживать действия умных денег.",
                      style: TextStyle(
                        fontSize: 21.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Концепция Smart Money становится популярной, это может быть причиной, почему она перестанет работать?",
                      style: TextStyle(
                        fontSize: 21.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30.0), // Расстояние между текстами
                    Text(
                      "Никакая концепция, включая Smart Money, не дает возможности торговать со 100% винрейтом, всё из-за субъективности анализа отдельной рыночной ситуации.",
                      style: TextStyle(
                        fontSize: 21.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: const Center(
                  child: Text(
                    "Трейдеры получают прибыль на дистанции из-за следования своим же правилам при анализе графика и открытии сделок, соблюдения соотношения риска и прибыли и контроля риска.",
                    style: TextStyle(
                      fontSize: 21.0,
                    ),
                  ),
                ),
              ),
              Container(
                child: const Center(
                  child: Text(
                    "Концепция анализа не является гарантом прибыльности трейдера. Только системный подход и самодисциплина дадут возможность стабильно получать прибыль. Пока на рынке будет ликвидность, до тех пор концепция будет эффективна в применении.",
                    style: TextStyle(
                      fontSize: 21.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Level(title: "Swing High и Swing Low", carouselContent: CarouselContent(items: [])),
        Level(title: "Структура рынка", carouselContent: CarouselContent(items: [])),
        Level(title: "Фибоначчи", carouselContent: CarouselContent(items: [])),
        Level(title: "Закон силы (LoE)", carouselContent: CarouselContent(items: [])),
        Level(title: "Риск – менеджмент", carouselContent: CarouselContent(items: [])),
      ],
    ),
    Module(
      index: 1,
      title: "Тренды и Ликвидность",
      imagePath: 'images/module_1.png',
      levels: [
        Level(title: "Ликвидность", carouselContent: CarouselContent(items: [])),
        Level(title: "Имбаланс цены", carouselContent: CarouselContent(items: [])),
      ],
    ),
    Module(
      index: 2,
      title: "Стратегии торговли с Блоками и Тенью свечи",
      imagePath: 'images/module_2.png',
      levels: [
        Level(title: "Ордер Блок", carouselContent: CarouselContent(items: [])),
        Level(title: "Брейкер Блок", carouselContent: CarouselContent(items: [])),
        Level(title: "Митигейшн блок", carouselContent: CarouselContent(items: [])),
        Level(title: "Тень свечи", carouselContent: CarouselContent(items: [])),
      ],
    ),
    Module(
      index: 3,
      title: "Паттерны и Сигналы",
      imagePath: 'images/module_3.png',
      levels: [
        Level(title: "Дивергенция", carouselContent: CarouselContent(items: [])),
        Level(title: "Three Drive Pattern (TDP)", carouselContent: CarouselContent(items: [])),
        Level(title: "Three Tap Setup (TTS)", carouselContent: CarouselContent(items: [])),
      ],
    ),
    Module(
      index: 4,
      title: "Временные Факторы и Управление Позицией",
      imagePath: 'images/module_4.png',
      levels: [
        Level(title: "Открытие дня, недели, месяца, года", carouselContent: CarouselContent(items: [])),
        Level(title: "Сессии", carouselContent: CarouselContent(items: [])),
        Level(title: "Power of three", carouselContent: CarouselContent(items: [])),
        Level(title: "Управление позицией", carouselContent: CarouselContent(items: [])),
      ],
    ),
    Module(
      index: 5,
      title: "Рендж и Принципы Вайкоффа",
      imagePath: 'images/module_5.png',
      levels: [
        Level(title: "Рендж", carouselContent: CarouselContent(items: [])),
        Level(title: "Вайкофф", carouselContent: CarouselContent(items: [])),
      ],
    ),
    Module(
      index: 6,
      title: "Торговые Сетапы, Стратегии управления рисками и Анализ Индексов",
      imagePath: 'images/module_6.png',
      levels: [
        Level(title: "Торговые сетапы", carouselContent: CarouselContent(items: [])),
        Level(title: "Стоп-лосс", carouselContent: CarouselContent(items: [])),
        Level(title: "Соотношение риска и прибыли", carouselContent: CarouselContent(items: [])),
        Level(title: "Индексы", carouselContent: CarouselContent(items: [])),
      ],
    ),
    Module(
      index: 7,
      title: "Стили Торговли, Торговый План и Эмоциональное Состояние",
      imagePath: 'images/module_7.png',
      levels: [
        Level(title: "Стили торговли", carouselContent: CarouselContent(items: [])),
        Level(title: "Торговый план", carouselContent: CarouselContent(items: [])),
        Level(title: "Эмоциональное состояние трейдера", carouselContent: CarouselContent(items: [])),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: modules.length,
      itemBuilder: (context, index) {
        return ModuleSlide(module: modules[index]);
      },
    );
  }
}
