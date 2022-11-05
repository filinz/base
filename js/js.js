
// ЛЕКСИЧЕСКАЯ СТРУКТУРА
/*
Переменные чувствительны к регистру
Пробелы и переводы строк игнорируются
Индентификаторы начинаются с буквы/_/$, далее буквы/цифры/_/$
*/


// ТИПЫ ДАННЫХ, ЗНАЧЕНИЯ И ПЕРЕМЕННЫЕ
// Простые типы
/* Значения копируются при присваивании (передаются по значению) */
let myBoolean = true, // boolean

    myNumber = 100, // number - все числа вещественные, от -2^53 до 2^53
    myNumber2 = 10.45, // тоже number
    myNumber3 = Number.MAX_SAFE_INTEGER,

    myString = "строка", // string
    mySymbol = Symbol(), // symbol
    myBigInt = 1000111222333444555666777888999000999888777666555444333222111000n, // равен number при нестрогом сравнении
    myInf = Infinity; // number (бесконечность - выход за пределы)

    console.log('\n- Простые типы данных:');
    console.log(myBoolean + " (boolean):", typeof myBoolean);
    console.log(myNumber + " (number):", typeof myNumber);
    console.log(myNumber2 + " (number):", typeof myNumber2);
    console.log("MAX_SAFE_INTEGER (9007199254740991 number):", myNumber3, typeof myNumber3);
    console.log(myString + " (string):", typeof myString);
    console.log("(symbol):", typeof mySymbol);
    console.log(myBigInt + " (bigint):", typeof myBigInt);
    console.log(myInf + " (number):", typeof myInf);


    // нулевые типы
  let myNull = null, // object (ошибка typeof)
    myUndefined = undefined; // undefined
    /*
    undefined:
      значение неинициализированной переменной
      несущ. св-во объекта
      несущ. элемент массива
      непереданный в функцию параметр
      если функция ничего не возвращает

    JS выражает пустоту с помощью undefined
    в коде следует использовать null
    */

console.log('\n- Нулевые типы данных:');
console.log(myNull + " (object):", typeof myNull);
console.log(myUndefined + " (undefined):", typeof myUndefined);


let myExp = 2e3,
    myExp2 = 2e-3,
    myExp3 = 2.2e3,
    myExp4 = 2.2e-3;

console.log("\n- Экспоненциальная запись 2e3 2e-3 2.2e3 2.2e-3 (2000 0.002 2200 0.0022): ", myExp, myExp2, myExp3, myExp4);


let myBin = 0b1100100,
    myOct = 0144,
    myOct2 = 0o144,
    myDec = 100,
    myHex = 0x64;

console.log("\n- Binary 0b1100100, Octal 0144, Octal2 0o144, Decimal 100, Hexadecimal 0x64 (все 100): ", myBin, myOct, myOct2, myDec, myHex);


const CON = 100;
console.log("\n- Константа " + CON + " (number):", typeof CON);


var i = 0; // счетчик для циклов


// Сложные типы
/*
являются ссылочным типом (копируются ссылки при присваивании)
могут объединять в себе значения других типов
массивы и функции - частные случаи объектов
*/

console.log('\n- Сложные типы данных:');
console.log('typeof {} (object):', typeof {});
console.log('typeof [] (object):', typeof []);
console.log('typeof function (function):', typeof function(){});

// MATH
let myAbs = Math.abs(-20), // 20, абсолютное значение по модулю
    mySin = Math.sin(Math.PI / 2), // 1, синус 90
    myCos = Math.cos(Math.PI * 2), // 1, косинус 360
    myTan = Math.tan(0), // 0, тангенс 0
    myAtan = Math.atan(0), // 0, арктангенс 0
    myLog = Math.log(Math.E), // 1, натуральный логарифм (ln) числа E

    myRound = Math.round(2.8), // 3, математическое округление
    myFloor = Math.floor(2.8), // 2, округление вниз
    myCeil = Math.ceil(3.2), // 4, округление вверх

    myMax = Math.max(10, 1, -40, 12, 5), // 12, наибольшее из переданных
    myMin = Math.min(10, 1, -40, 12, 5), // -40, наименьшее из переданных

    myPow = Math.pow(10, 3), // 10^3, 1000
    myPow2 = 10**3, // не везде работает
    mySqrt = Math.sqrt(16), // 4, квадратный корень
    mySqrt2 = Math.sqrt(-2), // NaN
    myPowSqrt = Math.pow(16, 0.5), // 4, квадратный корень

    myRandom = Math.random(), // случайное число от 0 до 1
    myRnd99 = Math.floor(Math.random() * 100); // случайное число от 0 до 99

console.log('\n- Math:');
console.log("abs 20 (20):", myAbs);
console.log("sin pi/2 (1):", mySin);
console.log("cos pi*2 (1):", myCos);
console.log("tan 0 (0):", myTan);
console.log("atan 0 (0):", myAtan);
console.log("log E (1):", mySin);
console.log("round 2.8 (3):", myRound);
console.log("floor 2.8 (2):", myFloor);
console.log("ceil 3.2 (4):", myCeil);
console.log("max 10, 1, -40, 12, 5 (12):", myMax);
console.log("min 10, 1, -40, 12, 5 (-40):", myMin);
console.log("pow 10, 3 (1000):", myPow);
console.log("10**3 (1000):", myPow2);
console.log("sqrt 16 (4):", mySqrt);
console.log("sqrt -2 (NaN):", mySqrt2);
console.log("pow 16, 0.5 (4):", myPowSqrt);
console.log("random (rnd 0-1):", myRandom);
console.log("random 0-99 (rnd 0-99):", myRnd99);

let myInf1 = Infinity === Infinity, // +
    myInf2 = Infinity >= Infinity, // +
    myInf3 = Infinity <= Infinity, // +
    myInf4 = Infinity > Infinity, // -
    myInf5 = Infinity < Infinity, // -

    myInf6 = Infinity + Infinity, // Infinity
    myInf7 = -Infinity - Infinity, // -Infinity

    myInf8 = 0 / 0, // NaN
    myInf9 = Infinity / Infinity, // NaN
    myInf10 = Infinity - Infinity, // NaN
    myInf11 = -Infinity + Infinity, // NaN
    // невозможность выполнения в математике (not a number), при сравнении всегда false

    myInf12 = Infinity * 10, // Infinity
    myInf13 = Infinity / 10, // Infinity
    myInf14 = Infinity ** 10, // Infinity
    myInf15 = Infinity ** Infinity, // Infinity

    myInf16 = Infinity ** -Infinity, // 0
    myInf17 = (-Infinity) ** Infinity; // Infinity

console.log('\n- Infinity:')
console.log("1e+308 (1e+308):", 1e+308);
console.log("1e+309 (Infinity):", 1e+309);
console.log("(true x3):", myInf1, myInf2, myInf3);
console.log("(false x2):", myInf4, myInf5);
console.log("(Infinity x6):", myInf6, myInf12, myInf13, myInf14, myInf15, myInf17);
console.log("(-Infinity):", myInf7);
console.log("(NaN x4):", myInf8, myInf9, myInf10, myInf11);
console.log("(0):", myInf16);

let myUnderflow1 = 1e-323, // отличимо от 0
    myUnderflow2 = 1e-324; // неотличимо от 0

console.log("\n- underflow:"); // макс. близко к нулю = 0
console.log("1e-323 (1e-323):", myUnderflow1);
console.log("1e-324 (0):", myUnderflow2);

// СТРОКИ
let myStrSingle = 'Строка в одиночных кавычках',
    myStrDouble = "Строка в двойных кавычках",
    myStrBack = `Строка в обратных кавычках`,
    // одинаковые строки с разными кавычками строго равны

    myStrIn1 = 'Одиночные "Двойные" `Обратные` Одиночные',
    myStrIn2 = "Двойные 'Одиночные' `Обратные` Двойные",
    myStrIn3 = `Обратные 'Одиночные' "Двойные" Обратные`,

    myStrMulti1 = 'Строка\nс\nпереносами',
    myStrMulti2 = `Строка
    с
    переносами`,

    myStrConcat = myStrSingle + ' ' + myStrDouble,
    myStrConcatBack = `${myStrSingle} ${myStrDouble}`,

    myStrSymbols = '\' \" \` \t \\',
    myStrUtf8 = '\x31',
    myStrUtf16 = '\u0031',
    myStrUtf32 = '\u{1F354}';

console.log("\n- Строки:");
console.log(myStrSingle);
console.log(myStrDouble);
console.log(myStrBack);
console.log(myStrIn1);
console.log(myStrIn2);
console.log(myStrIn3);
console.log(myStrMulti1);
console.log(myStrMulti2);
console.log('Конкатенация 1:', myStrConcat);
console.log('Конкатенация 2:', myStrConcatBack);
console.log('Экранированные символы:', myStrSymbols);
console.log('Cимвол UTF-8 (1):', myStrUtf8);
console.log('Cимвол UTF-16 (1):', myStrUtf16);
console.log('Cимвол UTF-32 (гамбургер):', myStrUtf32);

// ЛОГИЧЕСКИЕ ЗНАЧЕНИЯ
let myYes = true,
    myNo = false,
    myNo2 = !myYes,

    // только эти значения дают false
    myBoolUndef1 = Boolean(0), // false
    myBoolUndef2 = Boolean(""), // false
    myBoolUndef3 = Boolean(null), // false
    myBoolUndef4 = Boolean(NaN), // false
    myBoolUndef5 = Boolean(undefined), // false

    myNullUndef1 = null == undefined, // true
    myNullUndef2 = null === undefined, // false

    // при сравнении разных типов с помощью === всегда false

    myResult1 = 'Не сработало',
    myResult2 = 'Не сработало',
    myDo1 = true && (myResult1 = 'Cработало'), // Справа сработает, если левое истина
    myDo2 = false && (myResult2 = 'Cработало'),

    myStrBool1 = "Непустая строка" || "Строка по-умолчанию", // возьмется первая
    myStrBool2 = "" || "Строка по-умолчанию", // возьмется вторая

    // строки сравниваются посимвольно
    myBool1 = 'z' > 'a', // true, 122>97
    myBool2 = 'az' > 'axzzz', // true, a === a, z > a, дальше не проверяем
    myBool3 = 'z' > 'Z', // true, 122>90
    myBool4 = '10' < '5', // true
    myBool5 = '10' > '05', // true

    // сравнение строк и чисел
    // при сравнении разных типов JS пытается привести сравниваемые значения к числу
    myBool6 = '10' > 5, // true, 10>5
    myBool7 = 10 > '5', // true, 10>5
    myBool8 = 10 > 'x', // false, 'x' не число (NaN)
    myBool9 = 10 < 'x', // false, 'x' не число (NaN)

    // сравнения с boolean сводятся к сравнению чисел (true - 1, false - 0)
    myBool10 = 1 > false, // true, 1>0
    myBool11 = 0 < true, // true, 0<1
    myBool12 = '10' > true, // true, 10>1
    myBool13 = '1' > true, // false, 1>1
    myBool14 = '1' > false, // true, 1>0
    myBool15 = 'x' > true; // false, NaN>1

console.log("\n- Логические значения:");
console.log("(true false false):", myYes, myNo, myNo2);
console.log("Boolean 0 (false):", myBoolUndef1);
console.log('Boolean "" (false):', myBoolUndef2);
console.log("Boolean null (false):", myBoolUndef3);
console.log("Boolean NaN (false):", myBoolUndef4);
console.log("Boolean undefined (false):", myBoolUndef5);
console.log("null == undefined (true):", myNullUndef1);
console.log("null === undefined (false):", myNullUndef2);
console.log("(Сработало):", myResult1);
console.log("(Не сработало):", myResult2);
console.log("(Непустая строка):", myStrBool1);
console.log("(Строка по-умолчанию):", myStrBool2);
console.log("Сравнение строк (true x5):", myBool1, myBool2, myBool3, myBool4, myBool5);
console.log("Сравнение строк и чисел (true x2):", myBool6, myBool7);
console.log("Сравнение строк и чисел (false x2):", myBool8, myBool9);
console.log("Сравнение с boolean (true x4):", myBool10, myBool11, myBool12, myBool14);
console.log("Сравнение с boolean (false x2):", myBool13, myBool15);

// ВЫРАЖЕНИЯ И ОПЕРАТОРЫ
/*
Операторы:
  Оператор присваивания = работает справа налево
  Мат.операторы + - * / % по мат.правилам
  Унарные операторы +10 -10 ++i i--
  Бинарные операторы + - * / % += -= *= /= %= (присваивания с операцией)
  Операторы отношения < > <= >= == != (с приведением типов) === !==

Приоритет операторов:
  . [ ] ( ) (доступ к полям, индексация массивов, вызовы функций и группировка выражений)
  ++ -- - ~ ! delete new typeof void (унарные операторы, тип возвращаемых данных, создание объектов, неопределенные значения)
  * / % (умножение, деление, деление по модулю)
  + - + (сложение, вычитание, объединение строк)
  << >> >>> (сдвиг битов)
  < <= > >= instanceof (меньше, меньше или равно, больше, больше или равно, instanceof)
  == != === !== (равенство, неравенство, строгое равенство, строгое неравенство)
  & (побитовое И)
  ^ (побитовое исключающее ИЛИ)
  | (побитовое ИЛИ)
  && (логическое И)
  || (логическое ИЛИ)
  ?: (условный оператор)
  = += (присваивание, присваивание с операцией)
  , (вычисление нескольких выражений)

*/

// ОПЕРАТОРЫ УСЛОВИЙ (УСЛОВНЫЕ ИНСТРУКЦИИ)
let myCondition1, myCondition2, myCondition3;
if (myCondition1) {
  // при соблюдении условия 1
} else if (myCondition2) {
  // при соблюдении условия 2
} else if (myCondition3) {
  // при соблюдении условия 3
} else {
  // ни одно условие не соблюдено
}

let myChoice;
switch (myChoice) {
  case 1:
    //
    break;
  case 2:
    //
    break;
  case 3:
    //
    break;
  default:
    //
    break;
}

// Тернарный оператор
let myTernarResult, MyTernarCondition, myTernarResult1, myTernarResult2;
myTernarResult = MyTernarCondition ? myTernarResult1 : myTernarResult2;

// Оператор запятая - вычисляет все значния и возвращает последнее
let myZpt = (1, 2, 3);
console.log('1, 2, 3 = ? (3)', myZpt);


// МАССИВЫ
let myAlphabet = ['Г', 'Д'];
let myAlphabet2 = new Array('Г', 'Д'); // альтернативное объявление

myAlphabet.push('Е', 'Ж', 'З'); // добавление в конец
myAlphabet.unshift('А', 'Б', 'В'); // добавление в начало
myAlphabet[0] = 'А';

myAlphabet.length; // длина массива

console.log('\n- Массивы:');
console.log(myAlphabet);
console.log('Длина массива (8):', myAlphabet.length);
console.log('Тип данных массивов (object): ', typeof myAlphabet); // object

// ЦИКЛЫ
/*
цикл уменьшения быстрее, чем увеличения
чем проще условие - тем быстрее цикл
*/
let myLoop = ['Элемент0', 'Элемент1', 'Элемент2', 'Элемент3'];

let outLoop1 = 'for: ';
for (let i = 0; i <= 3; i++) { // цикл for
  outLoop1 += `${myLoop[i]} `;
}

let outLoop2 = 'for of: ';
for (let elem of myLoop) { // перебор элементов массива
  outLoop2 += `${elem} `;
}

let outLoop3 = 'for in: ';
for (let index in myLoop) { // перебор индексов массива
  outLoop3 += `${index}=${myLoop[index]} `;
}

let outLoop4 = 'while: ';
i = 0;
while (i <= 3) { // цикл while
  outLoop4 += `${myLoop[i]} `;
  i++;
}

let outLoop5 = 'do-while: ';
i = 0;
do { // цикл do-while
  outLoop5 += `${myLoop[i]} `;
  i++;
} while (i <= 3);

let outLoop6 = 'continue & break (c c b): ';
for (let elem of myLoop) { // continue & break
  if (elem != 'Элемент2') {
    outLoop6 += 'continue ';
    continue;
  }
  if (elem == 'Элемент2') {
    outLoop6 += 'break ';
    break;
  }
  outLoop6 += 'Ошибка_break!';
}

console.log('\n- Циклы:');
console.log(outLoop1);
console.log(outLoop2);
console.log(outLoop3);
console.log(outLoop4);
console.log(outLoop5);
console.log(outLoop6);


// ФУНКЦИИ
/*
  если аргументов передано меньше, чем нужно - остальные будут undefined
  при вызове функции без () будет получен ее текст
*/

function myFunction1() { // функция с названием
  return('Ок');
}

let myFunction2 = function () { // анонимная функция
  return('Ок');
};
/*
  анономные функции нельзя вызвать до объявления
  в конце анонимных функций - точка с запятой (могут зацепиться следующие скобки  / проблемы с минимизацией)
*/

function myFunction3(arg1, arg2, arg3 = 'АргУмолч') { // функция с названием
  return(`${arg1} ${arg2} ${arg3}`);
}

// Объект arguments
/* ведет себя как массив, но не поддерживает методы массивов */
let myFunction4 = function (a1, a2) {
  return (arguments.length);
};

// Функция может быть возвращаемым значением
let myFunction5 = function () {
  return function () {
    console.log("анонимная функция как возвращаемое значение");
  }
};

console.log('\n- Функции:');
console.log('Тип функции() (string): ', typeof(myFunction1()));
console.log('Тип функции (function): ', typeof(myFunction1));
console.log('Вызов функции:', myFunction1());
console.log('Вызов функции из переменной:', myFunction2());
console.log('Вызов функции с аргументами (Арг1, Арг2, АргУмолч):', myFunction3('Арг1', 'Арг2'));
console.log('Объект arguments (длина массива с 4-мя переданными аргументами):', myFunction4('Арг1', 'Арг2', 'Арг3', 'Арг4'));
console.log('Возврат функции в качестве значения (текст функции):\n', myFunction5() ); // myFunction5()() для вызова


// ОБЪЕКТЫ

let prop1 = 'свойство 1',
    prop2 = 'свойство 2',
    propKey = 'prop';

let myObj = { // создание объекта, синтаксис "литерал"
  prop1: prop1, // свойство объекта
  prop2, // название переменной соответствует названию свойства
  [propKey]: 'prop', // вычисляемое при объявлении свойство
  'property with spaces': 'свойство с пробелами',  // альтернативный синтаксис
  'property.with.dots': 'свойство.с.точками',
  propForDelete: 'для проверки удаления свойства',

  inObj: { inProp: 'свойство внутреннего объекта' },

  doMethod: function () { // длинная запись метода
    return this.prop1;
  },

  doMethod2() { // короткая запись метода
    return this.prop2;
  },

  methodForDelete() {
    return this.prop2;
  }, // висячая запятая
};

console.log('\n- Объекты:');
console.log("Создание объекта, синтаксис 'литерал'", myObj);
console.log('(свойство 1):', myObj.prop1);
console.log('(свойство 2):', myObj.prop2);
console.log('(свойство с пробелами):', myObj["property with spaces"]); // альтернативный синтаксис, для названий с пробелами и для названий в переменных
console.log('(свойство.с.точками):', myObj["property.with.dots"]);
let objKey = 'prop1';
console.log('Вычисляемый ключ объекта (свойство 1):', myObj[objKey]);
console.log('Вычисляемое свойство объекта при объявлении (prop):', myObj.prop);
console.log('(свойство внутреннего объекта):', myObj.inObj.inProp);
console.log('Выполнение метода, длинная запись (свойство 1):', myObj.doMethod());
console.log('Выполнение метода, короткая запись (свойство 2):', myObj.doMethod2());

delete myObj.propForDelete;
delete myObj.methodForDelete;

console.log('Удаление метода (undefined):', myObj.methodForDelete);
console.log('Удаление свойства (undefined):', myObj.propForDelete);


let myObj2 = new Object(); // создание объекта, синтаксис "конструктор объекта"
myObj2.prop1 = 'свойство 1';
console.log("Создание объекта, синтаксис 'конструктор объекта'( {prop1: 'свойство 1'} ):", myObj2);


// Объединение объектов
let myObj3 = {
  prop3: 'свойство 3',
};

let myObj4 = {
  prop3: 'свойство 3 новое',
};

let myUnitedObj1 = {
  prop0: 'свойство 0',
  ...myObj3, // оператор "спрэд", "подемешиваем" объекты
  ...myObj4, // свойства с уже существующим именем переопределятся (prop3)
};

let myUnitedObj2 = Object.assign( // альтернативный способ объединения объектов
  { prop0: 'свойство 0' }, // целевой объект, к нему будут добавлены остальные (и он изменится!)
  myObj3,
  myObj4,
);

console.log('\nОбъединение объектов 1 (свойство 0, свойство 3 новое):', myUnitedObj1);
console.log('Объединение объектов 2 (свойство 0, свойство 3 новое):', myUnitedObj2);


// Получение свойств объекта
let keys = Object.keys(myUnitedObj1), // массив ключей
    values = Object.values(myUnitedObj1), // массив значений
    entries = Object.entries(myUnitedObj1); // массив массивов [ключ, значение]

console.log('\nПолучение свойств объекта:');

console.log('keys: ', keys);
for (let key of keys) {
  console.log(`${key} - ${myUnitedObj1[key]}`);
}

console.log('values: ', values);
for (let value of values) {
  console.log(`${value}`);
}

console.log('entries: ', entries);
for (let entry of entries) {
  console.log(`${entry[0]} - ${entry[1]}`);
}

for (let [key, value] of entries) { // деструктуризация
  console.log(`${key} - ${value}`);
}

for (let key in myUnitedObj1) { // устаревший способ перебора объекта
  if (!myUnitedObj1.hasOwnProperty(key)) {
    continue;
  }
  console.log(`${key} - ${myUnitedObj1[key]}`);
}


// Копирование объекта без ссылок
console.log('\nКопирование объекта без ссылок:');

let myCloneObj1 = JSON.parse(JSON.stringify(myObj));
myCloneObj1.prop1 = 'свойство 1 клона 1'; // не влияет на оригинал
console.log('Копирование объекта через JSON (свойство 1):', myObj.prop1);
//console.log(myObj, myCloneObj1);
/*
  вызовет исключение при рекурсивных структурах данных
  вызовет исключение если содержит другие встроенные функции JavaScript (Map, Set, Date, RegExp, ArrayBuffer ...)
  молча отбрасывает функции
*/

let myCloneObj2 = Object.assign({}, myObj);
myCloneObj2.prop1 = 'свойство 1 клона 2'; // не влияет на оригинал
console.log('Поверхностное копирование объекта через Object.assign (свойство 1):', myObj.prop1);

//delete myObj.doMethod;
//delete myObj.doMethod2;

let myCloneObj3 = structuredClone(myObj); // клонирование, в новых браузерах
myCloneObj3.prop1 = 'свойство 1 клона 3';
console.log('Копирование объекта через structuredClone (свойство 1):', myObj.prop1);


// Ссылка на объект
let otherObj = myObj; // копируется ссылка на объект
otherObj.prop1 = 'свойство 1 новое';

console.log('\nИзменение скопированного объекта по ссылке (свойство 1 новое):', myObj.prop1);

console.log('Сравнение объектов по ссылке (true):', myObj === otherObj); // объекты равны только когда ссылки указывают на один объект
console.log('Сравнение объектов с одинаковым содержимым (false false):', { prop: '1' } == { prop: '1' }, { prop: '1' } === { prop: '1' });


// Объявление объекта через const
const myConstObj = {
  prop1: 'свойство 1',
}
myConstObj.prop1 = 'свойство 1 новое';
console.log('\nИзменение объекта, объявленного через const (свойство 1 новое):', myConstObj.prop1);


// Проверка существования свойства (in)
console.log('Проверка существования свойства объекта (true false true):', 'prop1' in myObj, 'propNO' in myObj, objKey in myObj); // без кавычек подставляется переменная


// Порядок свойств объекта
/*
  свойства с целочисленными ключами сортируются по возрастанию
  остальные располагаются в порядке создания
  целочисленные свойства - те, которые преобразовываются в целое число и обратно без изменений (нецелочисленные: 1.2 , +7)
*/
let mySortObj = {
  "prop3": "prop3",
  43: "43",
  44: "44",
  "prop2": "prop2",
  45: "45",
  "prop1": "prop1",
  1: "1",
}
console.log('\n- Порядок свойств объекта (упоряд.численные + неупоряд.символьные ключи):');
console.log(Object.keys(mySortObj));



// Регулярные выражения
console.log('\n- Регулярные выражения:');
let myRegexp = /w+/g; // рег.выражения - object
console.log('Regexp (/w+/g):', myRegexp);
console.log('Тип данных regexp (object):', typeof(myRegexp)); // function для Chrome 1-12



// ПРОБЛЕМЫ

console.log('\n- Проблемы:');
console.log("10000000000000008 + 10000000000000001 (20000000000000010):", 10000000000000008 + 10000000000000001); // 20000000000000010
console.log("10/3 (3.3333333333333335):", 10/3); // 3.3333333333333335


// ИНСТРУКЦИИ



// КЛАССЫ И МОДУЛИ

// ШАБЛОНЫ И РЕГУЛЯРНЫЕ ВЫРАЖЕНИЯ






console.log('\n- running js.js done');



