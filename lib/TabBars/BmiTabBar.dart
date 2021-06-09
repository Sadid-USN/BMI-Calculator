import 'package:flutter/material.dart';

class BMItabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1536147116438-62679a5e01f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Container(
            height: 600,
            child: ListView(
              padding: EdgeInsets.all(20),
              physics: ClampingScrollPhysics(),
              children: [
                Text(
                  'В соответствии с рекомендациями ВОЗ разработана следующая интерпретация '
                  'показателей ИМТ: '
                  'менее 16.5	Выраженный дефицит массы тело \n'
                  '16.5 - 18.49	Недостаточная (дефицит) масса тела \n'
                  '18.5 - 24.99	Норма \n'
                  'Индекс массы тела — ИМТ (англ. body mass index (BMI))\nвеличина, позволяющая оценить степень соответствия массы человека и его роста и тем самым, косвенно, оценить, является ли масса недостаточной, нормальной, избыточной (ожирение). Он важен для определения показаний для необходимости лечения, в том числе применения препаратов для лечения ожирения. Индекс массы тела рассчитывается по формуле.'
                  'Показатель индекса массы тела разработан бельгийским социологом и статистиком Адольфом Кетле (Adolphe Quetelet) в 1869 году.'
                  'Индекс массы тела следует применять с осторожностью, исключительно для ориентировочной оценки — например, попытка оценить с его помощью телосложение профессиональных спортсменов может дать неверный результат (высокое значение индекса в этом случае объясняется развитой мускулатурой). '
                  'Типы ожирения\n 1. "Мужской". Фигуру при таком ожирении называют условно "яблоком". Отложения жира происходит в основном в области талии. В меньшей степени отложения появляются на ногах. Шея, плечи и руки практически не затронуты.'
                  '2. "Женский". При таком ожирении фигура условно именуется "грушей". В основном жир откладывается на бёдрах и ягодицах. Практически не тронуты шея, руки, верх живота.'
                  'Окружность талии говорит о том, каков риск возникновения осложнений в результате ожирения. Для мужчин и женщин показатели отличаются. Так, если окружность талии мужчины выше 94 см, то риск развития осложнений высокий, у женщин этот показатель равен 80 см.'
                  'Наиболее опасным из этих двух типов ожирения является "яблоко", так как именно при ожирении такого типа большее число внутренних органов подвергаются негативному влиянию.',
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  //textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Body mass index (BMI) is a person’s weight in kilograms divided by the square of height in meters. BMI is an inexpensive and easy screening method for weight category—underweight, healthy weight, overweight, and obesity. '
                  'BMI does not measure body fat directly, but BMI is moderately correlated with more direct measures of body fat 1,2,3. Furthermore, BMI appears to be as strongly correlated with various metabolic and disease outcome as are these more direct measures of body fatness 4,5,6,7,8,9. '
                  'How is BMI used?'
                  'BMI can be a screening tool, but it does not diagnose the body fatness or health of an individual. To determine if BMI is a health risk, a healthcare provider performs further assessments. Such assessments include skinfold thickness measurements, evaluations of diet, physical activity, and family history '
                  'How is BMI interpreted for adults? For adults 20 years old and older, BMI is interpreted using standard weight status categories. These categories are the same for men and women of all body types and ages. '
                  'The standard weight status categories associated with BMI ranges for adults are shown in the following table. '
                  'Below 18.5	Underweight\n '
                  '18.5 – 24.9	Normal or Healthy Weight\n '
                  '25.0 – 29.9	Overweight\n '
                  '30.0 and Above	Obese',
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  //textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
