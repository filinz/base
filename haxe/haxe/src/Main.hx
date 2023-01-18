package;

import haxe.ds.Vector;
import openfl.display.Sprite;
import openfl.Lib;

/**
 * ...
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
		var myInt:Int = 100; // совместим с Float, но не наоборот
		var myFloat:Float = 10.45;
		var myString:String = "моя строка";
		var myBool:Bool = true;
		// ereg
		// Null
		// Void - результат отсутствует
		// Если тип не указан - он будет выведен при инициализации переменной
		
		trace("Простые типы данных:");
		trace(myInt, "(Int)", Type.typeof(myInt));
		trace(myFloat, "(Float)", Type.typeof(myFloat));
		trace(myString, "(String)", Type.typeof(myString));
		
		$type(myInt); // вывод типа переменной при компиляции
		
		// Приведение типов
		trace("Int->Float:", Std.int(myFloat));
		trace("Float->String:", Std.string(myFloat));
	
		
		// СТРОКИ
		// Интерполяция
		trace("Интерполяция строк (вывод 100 и 103):", 'вывод $myInt и ${myInt+3}');

		var scc = String.fromCharCode(1092); // получение символа по коду
		trace("Получение символа по коду (ф)", scc);


		// MATH
		var myRandom1 = Math.random(); // случайное число от 0 до 1, без аргументов
		var myRandom2 = Std.random(100); // случайное число от 0 до аргумента (без попадания аргумента в диапазон вывода)
		
		trace ("Случайное число 0-1 Math.random()", myRandom1);
		trace ("Случайное целое число 0-99 Std.random(100)", myRandom2);
		
		
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
		
		trace("Ветвления:");
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
		
		trace("Тернарный оператор:");
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
		
		trace("Циклы:");
		
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
		
		trace("Массивы:");
		
		var myArray:Array<Int>;
		myArray = [1, 2, 3, 4, 5];
		trace("myArray:", myArray);
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
		
		trace("Списки:");
		
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
		// вектор - массив с фиксированной длиной, определяемой при создании вектора, котрая не может меняться
		
		trace("Векторы:");
		
		var myVector = new Vector(10);
		for (i in 0...myVector.length) {
			myVector[i] = i+10;
		}
		trace("myVector:", myVector);
		trace("myVector[0]:", myVector[0]);
		trace("myVector[2]:", myVector[2]);
		
		// Map
		
		
		// Сортировка коллекций
		
		
		
		// ФУНКЦИИ
		
		function myFunc(x:Float = 1, y:Float = 1, ?z:Float = 1):Float {
			return x * y * z;
		}
		
		$type(myFunc); // без аргументов - вывод сигнатуры функции, с аргументами - вывод типа возвращаемого результата
		$type(myFunc(3, 3));
		
		trace("Функции:");
		trace("(27)", myFunc(3, 3, 3));
		
		// Анонимные функции
		var myAnonimFunc = function(x, y) {
			return x * y;
		}
		trace("(9)", myAnonimFunc(3, 3));
		
		
		// ИСКЛЮЧЕНИЯ
		
		trace("Исключения:");
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
		
		
		// КЛАССЫ
		/* 
		все объявления по-умолчанию private
		*/
		
		
		var myObj = new MyClass();
		
		trace(myObj.sqr(3.1));
		
		trace(MyClass.ssqr(3.2));
		
		
		// Анонимные объекты (анонимные структуры)
		
		var myAnonObj = { a : 1, b : 2.3, c : true, xx : { x * x; }};
		trace(myAnonObj);
		
		
		// Ввод-вывод данных - для neko
		/*
		Sys.println("Hello World и Мир!");		
		trace(Sys.args(), Sys.args()[0]);
		*/
		
		
		// Файлы - для neko
		/*
		import sys.io.File;
		var s = File.getContent("Main.hx");
		trace(s);
		s = "Запись строки в файл";
		File.saveContent("Main.hx", s)
		*/
	}
}


class MyClass 
{
	public function new() {
		trace(sqr(2)); // this для примера, можно опустить
	}
	
	
	public function sqr(x:Float):Float {
		return x * x;
	}
	
	
	public static function ssqr(x:Float):Float {
		return x * x;
	}
	
	
	// свойства
	/*
	первое - доступ по чтению, второе - доступ по записи
	default - нормальный доступ, если при этом переменная public
	null - разрешает доступ только из того класса, где определена переменная, =private
	dynamic - доступ не контроллируется
	never - доступ закрыт
	get/set - должны быть созданы программистом соответствующие методы доступа (для переменной x метод должен именоваться get_x)
	*/
	var prop(default, never):Int;
	
}