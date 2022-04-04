
// ЛЕКСИЧЕСКАЯ СТРУКТУРА
// Переменные чувствительны к регистру
// Пробелы и переводы строк игнорируются
// Индентификаторы начинаются с буквы/_/$, далее буквы/цифры/_/$


// ТИПЫ ДАННЫХ, ЗНАЧЕНИЯ И ПЕРЕМЕННЫЕ
  // Простые типы
  var myNumber = 12, // number - все числа вещественные, от -2^53 до 2^53
      myNumber2 = 1.45, // number
      myString = "строка", // string
      myBoolean = true, // boolean
      myNull = null, // object - ошибка typeof
      myUndefined = undefined; // undefined
      /* значение неинициализированной переменной / несущ. св-во объекта / несущ. элемент массива
      непереданный в функцию параметр / если функция ничего не возвращает */
  console.log(myNumber+":"+typeof myNumber);
  console.log(myNumber2+":"+typeof myNumber2);
  console.log(myString+":"+typeof myString);
  console.log(myBoolean+":"+typeof myBoolean);
  console.log(myNull+":"+typeof myNull); // object
  console.log(myUndefined+":"+typeof myUndefined);



// ВЫРАЖЕНИЯ И ОПЕРАТОРЫ
/* Приоритет операторов
. [ ] ( )     - Доступ к полям, индексация массивов, вызовы функций и группировка выражений
++ -- - ~ ! delete new typeof void
              - Унарные операторы, тип возвращаемых данных, создание объектов, неопределенные значения
* / %         - Умножение, деление, деление по модулю
+ - +         - Сложение, вычитание, объединение строк
<< >> >>>     - Сдвиг битов
< <= > >= instanceof
              - Меньше, меньше или равно, больше, больше или равно, instanceof
== != === !== - Равенство, неравенство, строгое равенство, строгое неравенство
&             - Побитовое И
^             - Побитовое исключающее ИЛИ
|             - Побитовое ИЛИ
&&            - Логическое И
||            - Логическое ИЛИ
?:            - Условный оператор
= OP=         - Присваивание, присваивание с операцией (например += и &=)
,             - Вычисление нескольких выражений */

// ИНСТРУКЦИИ

// ОБЪЕКТЫ

// МАССИВЫ

// ФУНКЦИИ

// КЛАССЫ И МОДУЛИ

// ШАБЛОНЫ И РЕГУЛЯРНЫЕ ВЫРАЖЕНИЯ



console.log('js.js ok');
