package;

import haxe.ds.Vector;
import openfl.display.Sprite;

/**
 * Базовый синтаксис Haxe
 * @author filinz
 */

class Main extends Sprite {

	public function new() {
		super();

		// HAXE

		// ЛЕКСИЧЕСКАЯ СТРУКТУРА
		/*
		Переменные чувствительны к регистру
		Пробелы и переводы строк игнорируются
		Индентификаторы начинаются с буквы/_/$, далее буквы/цифры/_/$
		Автономную единицу представляет блок - отрезок программного кода в фигурных скобках, всегда возвращает последнее вычисленное значение
		*/

		//Sys.println("now Hello World!");

		// ТИПЫ ДАННЫХ, ЗНАЧЕНИЯ И ПЕРЕМЕННЫЕ
		// Простые типы
		// В Haxe всё является классами, кроме Int, Float и Bool
		
		var myInt:Int = 100; // совместим с Float, но не наоборот
		var myFloat:Float = 10.45;
		var myBool:Bool = true;
		var myString:String = "моя строка";
		// ereg
		// Null
		// Void - результат отсутствует
		// Если тип не указан - он будет выведен при инициализации переменной
		
		trace("--- Простые типы данных:");
		trace(myInt, "(Int)", Type.typeof(myInt));
		trace(myFloat, "(Float)", Type.typeof(myFloat));
		trace(myString, "(String)", Type.typeof(myString));
		
		$type(myInt); // вывод типа переменной при компиляции в консоль
		
		// Приведение типов
		trace("--- Приведение типов:");
		trace("Float->Int:", Std.int(myFloat));
		trace("Float->String:", Std.string(myFloat));

		
		// СТРОКИ
		
		trace("--- Строки:");
		
		// Интерполяция
		trace("интерполяция строк (вывод 100 и 103):", 'вывод $myInt и ${myInt+3}');

		
		// String - класс
		var myString2 = new String("Вторая строка");
		trace("myString2:", myString2);
		
		trace("длина строки:", myString2.length);
		
		trace("отдельный знак по индексу [0], [1], [100]:", myString2.charAt(0), myString2.charAt(1), myString2.charAt(100));
		trace("цифровой код для символа [0], [1], [100]:", myString2.charCodeAt(0), myString2.charCodeAt(1), myString2.charCodeAt(100));
		trace("цифровой код для символа W, я, <,>:", "W".code, "я".code, ",".code);
		trace("получение символа по коду (ф)", String.fromCharCode(1092));
		
		trace("узнать индекс указанного символа 'о':", myString2.indexOf("о"));
		trace("индекс указанного символа с указанием места начала поиска:", myString2.indexOf("о", 3));
		
		trace("преобразовать строку в массив:", myString2.split("о"));
		
		trace("извлечь подстроку [начало подстроки, длина подстроки]:", myString2.substr(3,6));
		trace("извлечь подстроку только с указанием начала:", myString2.substr(3));
		trace("извлечь подстроку [начало подстроки, до какого индекса(без него)]:", myString2.substring(3, 9));
		
		trace("в нижний регистр:", myString2.toLowerCase());
		trace("в верхний регистр:", myString2.toUpperCase());
		
		// переменные типа String неизменяемы (immutable), их нельзя модифицировать "на месте"
		// переменные типа StringBuf изменяемы
		
		var myStringBuf = new StringBuf();
		trace("myStringBuf:", myStringBuf);
		
		myStringBuf.add("Добавляем текст");
		trace("myStringBuf:", myStringBuf);
		
		trace("длина myStringBuf:", myStringBuf.length);
		
		myStringBuf.addChar(44);
		trace("добавляем символ по коду (,):", myStringBuf);
		
		myStringBuf.addSub("ххх и другой текст ххх", 3, 16); // начало и длина подстроки
		trace("добавляем подстроку из заданной строки:", myStringBuf);
		
				
		// MATH
		trace("--- Math:");
		
		var myRandom1 = Math.random(); // случайное число от 0 до 1, без аргументов
		var myRandom2 = Std.random(100); // случайное число от 0 до аргумента (без попадания аргумента в диапазон вывода)
		
		trace ("случайное число 0-1 Math.random()", myRandom1);
		trace ("случайное целое число 0-99 Std.random(100)", myRandom2);
		
		
		// РЕГУЛЯРНЫЕ ВЫРАЖЕНИЯ
		// являются объектом и имеют тип EReg
		// создаются с помощью знака ~ перед выражением, ограниченным прямыми слешами
		
		trace("--- Регулярные выражения:");
		
		var myReg:EReg = ~/слово/;
		trace("myReg и тип:", myReg, Type.typeof(myReg));
		
		var myReg2:EReg = new EReg("слово", "i"); // второй необязательный аргумент задает флаг
		trace("myReg и тип:", myReg2, Type.typeof(myReg2));
		
		var myStringForReg = "Например первое слово, второе слово, третье слово, четвертое слово, пятое слово";
		trace(myReg.match(myStringForReg)); // определяет, встречается ли заданная комбинация знаков в заданном тексте
		
		/*
			Вспомогательные знаки:
			. - любой знак
			* - повторение знака ноль или более раз
			+ - повторение знака один или более раз
			[A-Z0-9] - любой символ (буква или цифра), иногда называют рангом
			[a-z] - символы могут быть и в нижнем регистре
			[^\r\n\t] - управляющие символы
			(abc) - группа символов, иногда скобки не обязательны
			^ - начало строки
			$ - конец строки
			| - знак альтернативы (OR)
		*/
		
		// после закрывающего прямого слеша может быть флаг, один или несколько через запятую:
		var myReg2:EReg = ~/foo/i;
		/*
			Флаги:
			i - регистр знаков в тексте не будет учитываться
			m - позволяет анализировать многостраничный текст, 
					его начало должно быть обозначено ^, а конец $
			s - точки в тексте надо считать началом новых строк
			u - используется кодировка UTF-8
		*/
		
		var myReg3:EReg = ~/(первое).+?(второе).+?(третье).+?/;
		if (myReg3.match(myStringForReg)) {
			trace(myReg3.matched(1));
			trace(myReg3.matched(2));
			trace(myReg3.matched(3));
			trace(myReg3.matchedLeft());
			trace(myReg3.matchedRight());
		}
		
		
		
		
		// ВЫРАЖЕНИЯ И ОПЕРАТОРЫ
		/*
		Операторы: (todo: из jS, перепроверить)
			Оператор присваивания = работает справа налево
			Мат.операторы + - * / % по мат.правилам
			Унарные операторы +10 -10 ++i i--
			Бинарные операторы + - * / % += -= *= /= %= (присваивания с операцией)
			Операторы отношения < > <= >= == != (с приведением типов) === !==
			
		Приоритет операторов и их ассоциативность:
			!, ++, --	(постфиксные унарные операторы) right
			~, !, -, ++, --	(префиксные унарные операторы) right
			%	(деление по модулю)	left
			*, /	(умножение, деление)	left
			+, -	(сложение, вычитание)	left
			<<, >>, >>>	(побитовые сдвиги)	left
			&, |, ^	(побитовые операторы) left
			==, !=, <, <=, >, >=	(сравнение)	left
			...	(интервал)	left
			&&	(логическое и) left
			||	(логическое или) left
			@	(метаданные)	right
			?:	(тернарный оператор)	right
			%=, *=, /=, +=, -=, <<=, >>=, >>>=, &=, |=, ^=	(составное присваивание)	right
			=>	(стрелка)	right
		*/

		// ВЕТВЛЕНИЯ
		
		trace("--- Ветвления:");
		var myCondition1 = false, myCondition2 = false, myCondition3 = true;
		if (myCondition1) {
			trace("соблюдение условия 1");
		} else if (myCondition2) {
			trace("соблюдение условия 2");
		} else if (myCondition3) {
			trace("соблюдение условия 3");
		} else {
			trace("ни одно из условий не выполнено");
		}
		
		// Условный оператор возвращает результат
		// блоки после условного выражения и после else должны быть одного типа
		// если ветви else нет - if возвращает результат типа Void
		
		var myIfResult = if (myCondition1) {
			"соблюдение условия 1";
		} else {
			"соблюдение условия 2+";
		}
		trace(myIfResult);
		
		trace(if (myCondition1) {"соблюдение условия 1"; } else {"соблюдение условия 2+"; });

		
		// Тернарный оператор
		var myTernarResult, MyTernarCondition = false, myTernarResult1 = "соблюдение условия 1", myTernarResult2 = "соблюдение условия 2";
		myTernarResult = MyTernarCondition ? myTernarResult1 : myTernarResult2;
		
		trace("тернарный оператор:");
		trace(myTernarResult);

		
		// switch - case
		trace("switch-case:");
		
		var myChoice:Int = 4;
		
		switch (myChoice) {
			case 1:	trace("выбран вариант 1");
			case 2, 3: trace("выбран вариант 2, 3");
			default:
				trace("выбран вариант default");
				
		}
		
		// переключатель также возвращает результат
		trace(
			switch (myChoice) {
				case 1:	"выбран вариант 1";
				case 2, 3: "выбран вариант 2, 3";
				case _: "выбран вариант default"; // аналог default
				//case myChoice: "выбран вариант default"; // тоже аналог default
			}
		);
		
		
		// ЦИКЛЫ
		
		trace("--- Циклы:");
		
		var myLoop = ['Элемент0', 'Элемент1', 'Элемент2', 'Элемент3'];
		var outLoop1 = 'while: ';
		
		var i = 0;
		while (i <= 3) { // цикл while
			outLoop1 += '${myLoop[i]} ';
			i++;
		}
		trace(outLoop1);
		
		
		var outLoop2 = 'do-while: ';
		i = 0;
		do { // цикл do-while
			outLoop2 += '${myLoop[i]} ';
			i++;
		} while (i <= 3);
		trace(outLoop2);
		
		
		var outLoop3 = 'for: ';
		for (i in 0...4) {
			// выражение (0...4) определяет коллекцию (ранг), элементы которой представлены числами 0,1,2,3 (правая граница в коллекцию не входит)
			outLoop3 += '${myLoop[i]} ';
		}
		trace(outLoop3);
		
		var outLoop4 = 'for: ';
		for (i in [0,1,2,3]) { 
			outLoop4 += '${myLoop[i]} ';
		}
		trace(outLoop4);
		
		var outLoop5 = 'for: ';
		for (i in myLoop) { 
			outLoop5 += '$i ';
		}
		trace(outLoop5);
		
		var outLoop6 = 'for +continue +break (0,1,3): ';
		for (i in [0,1,2,3,4,5,6]) {
			if (i == 2) continue;
			if (i == 4) break;
			outLoop6 += '${myLoop[i]} ';
		}
		trace(outLoop6);
				
		var myRank = (0...4);
		trace("ранг (0...4) в цикле for (перебор 0,1,2,3): ", myRank);
		
		
		// КОЛЛЕКЦИИ
		
		// Массивы
		// индекс всегда Int
		// при добавлении элементов пропущенные элементы получают значение null
		// при извлечении элемента с несуществующим индексом тоже null
		// все элемементы (при объявленном и при необъявленном типе) должны быть одного типа, если тип не Dynamic
		// Array - класс и создавать массивы можно с использованием конструктора класса
		
		trace("--- Массивы:");
		
		var myArray:Array<Int>;
		myArray = [1, 2, 3, 4, 5];
		trace("myArray, тип:", myArray, Type.typeof(myArray));
		trace("myArray[2] (3):", myArray[2]);
		
		myArray[2] = 8;
		trace("myArray[2] (8):", myArray[2]);
		
		myArray[7] = 8;
		trace("myArray:", myArray);
		
		trace("myArray[10] (null):", myArray[10]);
		
		var myDynamicArray:Array<Dynamic> = [1, 2.2, 'строка', true];
		trace("myDynamicArray:", myDynamicArray);
		
		var myDynamicArray2 = new Array<Dynamic>(); // создание пустого массива через класс
		myDynamicArray2 = [myArray, myDynamicArray]; // двумерная матрица
		trace("myDynamicArray2:", myDynamicArray2);
		trace("myDynamicArray2[0][4] (5):", myDynamicArray2[0][4]);
		
		var myArray2:Array<Float> = [for (x in 0...5) x];
		trace("myArray2 for (x in 0...5) ([0,1,2,3,4]):", myArray2);
		
		
		// Методы массивов
		
		trace("Методы массивов:", myArray);
		
		trace(".length:", myArray.length);
		
		myArray.reverse(); 
		trace(".reverse():", myArray);
		
		// concat, join, pop, push, shift, slice, sort, insert, remove, copy, map, filter
		
		
		// разбить строку по разделителю (символ или группа символов) и преобразовать в массив
		// сама строка не изменися
		var mySplittedArray = myString.split("о"); 
		trace(".split() к строке", myString, ": ", mySplittedArray);
		
		
		// Списки
		// элементы заключены в фигурные скобки
		// нет возможности извлекать элементы по индексу
		
		trace("--- Списки:");
		
		var myList0:List<Dynamic>; // только объявление, не создает список, нельзя инициировать с помощью = другой коллекцией, кроме другого списка
		
		var myList = new List<Dynamic>(); // создает пустой список
		
		var myList2:List<Int> = Type.createEmptyInstance(List);
		trace("создание пустого списка через Type.createEmptyInstance:", myList2);
		
		var myList3:List<String> = Lambda.list( ["элемент 1", "элемент 2", "элемент 3"] );
		trace("создание списка через Lambda.list:", myList3);
		
		trace("Методы списков:", myList);
		myList.add('элемент 1');
		trace(".add():", myList);
		myList.add('элемент 2');
		trace(".add():", myList);
		
		trace("for (l in myList):");
		for (l in myList) { trace(l); }
		
		// length, push, first, last, pop, isEmpty, clear, remove, toString, join, filter, map
		
		
		// Векторы
		// вектор - массив с фиксированной длиной, определяемой при создании вектора, которая не может меняться
		
		trace("--- Векторы:");
		
		var myVector = new Vector(10);
		for (i in 0...myVector.length) {
			myVector[i] = i+10;
		}
		trace("myVector:", myVector);
		trace("myVector[0]:", myVector[0]);
		trace("myVector[2]:", myVector[2]);
		
		
		// Map
		// ключи - любой тип, но одинаковый для всех элементов
		// значения могут быть разные, если указать тип Any или Dynamic
		trace("--- Map:");
		
		var myMap:Map<Int,String> = [1 => "элемент 1", 2 => "элемент 2", 3 => "элемент 3"];
		trace("myMap и тип:", myMap, Type.typeof(myMap));
		trace("myMap[2]:", myMap[2]);
		
		var myMap2 = ["индекс 1" => 1, "индекс 2" => 2, "индекс 3" => 3];
		trace("myMap2 и тип:", myMap2, Type.typeof(myMap2));
		trace('myMap2["индекс 2"]:', myMap2["индекс 2"]);
		
		var myMap3:Map<String,String> = ["индекс 1" => "элемент 1", "индекс 2" => "элемент 2", "индекс 3" => "элемент 3"];
		trace("myMap3:", myMap3, Type.typeof(myMap));
		
		trace("for(x in myMap3):");
		for (x in myMap3) { trace(x); }
		
		trace("for(x in myMap3.keys()):");
		for (x in myMap3.keys()) { trace(x); }
		
		var myMap4:Map<String,Any> = ["индекс 1" => 1, "индекс 2" => true, "индекс 3" => 'элемент строка'];
		trace("myMap4 и тип:", myMap4, Type.typeof(myMap4));
		
		
		var objMap = { elem1 : "Элемент 1", elem2 : "Элемент 2", elem3 : 3};
		trace(objMap, Type.typeof(objMap));
		
		var arrMapFields = Reflect.fields(objMap); // выбрать значения из отображения в формате массива
		trace(arrMapFields, Type.typeof(arrMapFields));
		
		
		// Сортировка коллекций
		
		trace("--- Сортировка коллекций:");
		
		var myArray3:Array<Int> = [7, 5, 3, 1, 0, 2, 8, 4, 6];
		trace("myArray3 несорт:", myArray3);
		myArray3.sort( function(a, b) return a > b ? 1 : -1 );
		trace("myArray3 сорт:", myArray3);
		
		
		// ФУНКЦИИ
		
		function myFunc(x:Float = 1, y:Float = 1, ?z:Float = 1):Float {
			return x * y * z;
		}
		
		$type(myFunc); // без аргументов - вывод сигнатуры функции в консоль
		$type(myFunc(3, 3)); // с аргументами - вывод типа возвращаемого результата в консоль
		
		trace("--- Функции:");
		trace("(27)", myFunc(3, 3, 3));
		
		
		// Анонимные функции
		trace("Анонимные функции:");
		
		var myAnonimFunc = function(x, y) {
			return x * y;
		}
		trace("(9)", myAnonimFunc(3, 3));
		
		// функции могут быть аргументами других функций
		// функции могут возвращать результат, представляющий другую функцию
		
	
		// ИСКЛЮЧЕНИЯ
		
		trace("--- Исключения:");
		
		function f(x:Float):Void {
			if (x == 0) {
				throw new String("Деление на ноль");
			} else {
				trace(1 / x);
			}
			return;
		}
		
		try {
			f(0);
		} 
		catch (e:String) {
			// String - обработка ошибки, Error - обработка других типов ошибок, Dynamic - обработка всех остальных ошибок
			trace(e);
		}		
		
	
		// Анонимные объекты (анонимные структуры)
		
		trace("--- Анонимные объекты:");
		var myAnonObj = { a : 1, b : 2.5, c : true, xx : { x * x; }};
		trace(myAnonObj);			
		
		
		// КЛАССЫ
		/* 
		все объявления по-умолчанию private
		*/
		
		trace("--- Классы:");
		
		var myObj = new MyClass("myObj");
		
		trace(myObj.xx(3.1));
		
		trace(MyClass.xx2(3.1));
		
		
		var myObj2 = new MyClass2();
	
		trace(myObj2.xx(3.1));
		
		trace(myObj2.xx3(3.1));
		
		// Объекты в Haxe могут иметь одновременно сразу несколько типов
		
		// Интерфейсы
		
		trace("--- Интерфейсы:");
		
		var myObj3 = new MyClass3(); 
			
		myObj3.out("метод out");
		trace("свойство a=0.111", myObj3.a);
		
		
		// Динамические методы
		trace("--- Динамические методы:");
		
		var myObj4 = new MyClass4();
		myObj4.myDynamicFunc();
		
		myObj4.myDynamicFunc = function() { trace("Динамическая функция после изменения"); };
		myObj4.myDynamicFunc();
	}
}


class MyClass 
{
	var s:String;
	
	public function new(s:String) {
		trace("Вызов конструктора класса: ", s); // this для примера, можно опустить
	}
	
	
	public function xx(x:Float):Float {
		return x * x;
	}
	
	
	public static function xx2(x:Float):Float {
		return x * x;
	}
	
	
	var prop(default, never):Int;
	// свойства
	/*
	первое - доступ по чтению, второе - доступ по записи
	default - нормальный доступ, если при этом переменная public
	null - разрешает доступ только из того класса, где определена переменная, =private
	dynamic - доступ не контроллируется
	never - доступ закрыт
	get/set - должны быть созданы программистом соответствующие методы доступа (для переменной x метод должен именоваться get_x)
	*/

}

class MyClass2 extends MyClass
{
	public function new() {
		super("MyClass2"); // директива, вызывающая конструктор new родительского класса
	}
	
	public function xx3(x:Float):Float {
		return x * x;
	}
}


// поля и методы в интерфейсах по умолчанию public
// интерфейсы не могут создавать экземпляры
// интерфейсы могут имплементировать другие интерфейсы

interface MyInterface 
{
	public function out(s:String) : Void;
	public var a:Float;
}

class MyClass3 implements MyInterface 
{
	public function new() {}
	public function out(s) { trace(s); }
	public var a = 0.111;
}

class MyClass4 {
	// модификатор dynamic позволят менять функцию 
	// при этом нельзя менять сигнатуру функции
	// модификация происходит на уровне экземпляра, а не на уровне класса
	// статические функции тоже можно модифицировать

	public function new() {}
		
	public dynamic function myDynamicFunc():Void { trace("Динамическая функция до изменения");	}
		
		

}

