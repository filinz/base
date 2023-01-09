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
		
		
		// Приведение типов
		trace(Std.int(myFloat));
		trace(Std.string(myFloat));

		// Получение типа переменной
		trace(Type.typeof(myFloat));
		trace(Type.typeof(myString));
		$type(myFloat); // вывод типа переменной при компилляции

		// СТРОКИ
		// Интерполяция
		var x:Int = 3;
		trace('вывод $x и ${x+3}');

		var scc = String.fromCharCode(112); // получение символа по коду

		// MATH
		Math.random(); // случайное число от 0 до 1, без аргументов
		Std.random(100); // случайное число от 0 до аргумента (без попадания аргумента в диапазон вывода)
		
		
		// ФУНКЦИИ
		
		function myFunc(x:Float = 1, y:Float = 1, ?z:Float):Float {
			return x * y;
		}
		
		//trace(myFunc(10, 10.2));
		//trace($type(myFunc));
		//trace($type(myFunc(2, 2)));
		$type(myFunc); // без аргументов - вывод сигнатуры функции, с аргументами - вывод типа возвращаемого результата
		
		
		// Анонимные функции
		var myAnonimFunc = function(x, y) {
			return x + y;
		}
		trace(myAnonimFunc(2, 3));
		
		
		// ИСКЛЮЧЕНИЯ
		
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
		
		
		.return.
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
