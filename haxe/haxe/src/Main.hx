package;

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
		var myString:String = "строка";
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
		var myCondition1 = true, myCondition2 = true, myCondition3 = true;
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
		var myIfResult = if (myCondition1) {
			"соблюдение условия 1";
		} else {
			"соблюдение условия 2";
		}
		trace(myIfResult);
		
		trace(if (myCondition1) {"соблюдение условия 1"; } else {"соблюдение условия 2"; });
		
		// ЦИКЛЫ
		
		
		// ФУНКЦИИ
		
		function myFunc(x:Float = 1, y:Float = 1, ?z:Float = 1):Float {
			return x * y * z;
		}
		
		$type(myFunc); // без аргументов - вывод сигнатуры функции, с аргументами - вывод типа возвращаемого результата
		$type(myFunc(3, 3));
		
		trace("Функции");
		trace("(27)", myFunc(3, 3, 3));
		
		// Анонимные функции
		var myAnonimFunc = function(x, y) {
			return x * y;
		}
		trace("(9)", myAnonimFunc(3, 3));
		
		
		// ИСКЛЮЧЕНИЯ
		
		trace("Исключения");
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