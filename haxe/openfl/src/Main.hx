package;

import openfl.Vector;
import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.Assets;
import openfl.Lib;
import openfl.display.GradientType;
import openfl.geom.Matrix;


/**
 * OpenFL basic functions
 * @author filinz
 */

// Source: https://www.openfl.org/learn/npm/api/classes/openfl.display.graphics.html


class Main extends Sprite {
	
	public var maxX:Int = 1600;
	public var maxY:Int = 900;
	
	public var stepGridX:Int = 100;
	public var stepGridY:Int = 100;
	
	public var x0:Int = 0;
	public var y0:Int = 0;

	public function new() {
		super();
		
		graphics.clear();
		
		//var bmp = new Bitmap(Assets.getBitmapData("img/grid.png"));
		//addChild(bmp);
		
		graphics.lineStyle(1, 0x333333);	
		for (x in 0...Std.int(maxX/stepGridX + 1)) {
			graphics.moveTo(x * stepGridX, 0);
			graphics.lineTo(x * stepGridX, maxY);	
		}
		for (y in 0...Std.int(maxY/stepGridY + 1)) {
			graphics.moveTo(0, y * stepGridY);
			graphics.lineTo(maxX, y * stepGridY);	
		}
		graphics.lineStyle(0, 0, 0);
	
		
		// lineStyle(thickness?: number | null, color?: number, alpha?: number, pixelHinting?: boolean, scaleMode?: LineScaleMode, caps?: CapsStyle, joints?: JointStyle, miterLimit?: number): void 
		// lineTo(x: number, y: number): void
		// moveTo(x: number, y: number): void
		
		graphics.lineStyle(1, 0xFFFFFF);
		
		x0 = 0;
		y0 = 0;
		
		graphics.moveTo(x0, y0);
		graphics.lineTo(x0 + 100, y0);
		graphics.lineTo(x0 + 100, y0 + 100);
		graphics.lineTo(x0, y0);
		graphics.lineTo(x0 + 100, y0 + 25);
		graphics.moveTo(x0, y0);
		graphics.lineTo(x0 + 100, y0 + 50);
		graphics.moveTo(x0, y0);
		graphics.lineTo(x0 + 100, y0 + 75);
		
		
		// drawCircle(x: number, y: number, radius: number): void
		// drawEllipse(x: number, y: number, width: number, height: number): void
		// drawRect(x: number, y: number, width: number, height: number): void
		// drawRoundRect(x: number, y: number, width: number, height: number, ellipseWidth: number, ellipseHeight?: number | null): void
		// drawRoundRectComplex(x: number, y: number, width: number, height: number, topLeftRadius: number, topRightRadius: number, bottomLeftRadius: number, bottomRightRadius: number): void
		
		graphics.lineStyle(1, 0xFFFFFF);
		
		x0 = 100;
		y0 = 0;
		graphics.drawCircle(x0 + 50, y0 + 50, 50);
		graphics.drawCircle(x0 + 50, y0 + 50, 30);
		graphics.drawCircle(x0 + 50, y0 + 50, 10);
		
		x0 = 200;
		y0 = 0;
		graphics.drawEllipse(x0, y0, 100, 50);
		graphics.drawEllipse(x0, y0, 50, 100);
		
		x0 = 300;
		y0 = 0;
		graphics.drawRect(x0, y0, 100, 50);
		graphics.drawRect(x0, y0, 50, 100);
		
		x0 = 400;
		y0 = 0;
		graphics.drawRoundRect(x0, y0, 100, 50, 15);
		graphics.drawRoundRect(x0, y0, 50, 100, 15, 50);
		
		x0 = 500;
		y0 = 0;
		graphics.drawRoundRectComplex(x0, y0, 100, 50, 5, 10, 15, 20);
		graphics.drawRoundRectComplex(x0, y0, 50, 100, 5, 10, 15, 20);
		
		
		// drawTriangles(vertices: Vector<number>, indices?: Vector<number>, uvtData?: Vector<number>, culling?: TriangleCulling): void
		// Векторы OpenFL:  https://www.openfl.org/learn/npm/api/classes/openfl.vector.html
		
		graphics.lineStyle(1, 0xFFFFFF);
		
		x0 = 600;
		y0 = 0;
		var myVectTriangles = new Vector(6);
		myVectTriangles = Vector.ofArray([x0, y0 + 100, x0 + 50, y0, x0 + 100, y0 + 100]);
		graphics.drawTriangles(myVectTriangles);
		
		x0 = 700;
		y0 = 0;
		graphics.drawTriangles(
			Vector.ofArray([x0, y0, x0 + 100, y0, x0 + 50, y0 + 100])
		);		
		
		
		
		// lineStyle(thickness?: number | null, color?: number, alpha?: number, pixelHinting?: boolean, scaleMode?: LineScaleMode, caps?: CapsStyle, joints?: JointStyle, miterLimit?: number): void		
		
		x0 = 0;
		y0 = 100;
		graphics.lineStyle(2, 0xFFFFCC);
		graphics.moveTo(x0, y0);
		graphics.lineTo(x0 + 100, y0);
		graphics.lineTo(x0, y0 + 20);
		
		graphics.lineStyle(3, 0xFFFF99);
		graphics.moveTo(x0, y0 + 20);
		graphics.lineTo(x0 + 100, y0 + 20);
		graphics.lineTo(x0, y0 + 40);
		
		graphics.lineStyle(3, 0xFFFF99, 0.5);
		graphics.moveTo(x0, y0 + 40);
		graphics.lineTo(x0 + 100, y0 + 40);
		graphics.lineTo(x0, y0 + 60);
		
		graphics.lineStyle(3, 0xFFFF66, 1, true);
		graphics.moveTo(x0, y0 + 60);
		graphics.lineTo(x0 + 100, y0 + 60);
		graphics.lineTo(x0, y0 + 80);
		
		
		// beginFill(color?: number, alpha?: number): void
		
		graphics.lineStyle(1, 0xFFFFFF);
		x0 = 100;
		y0 = 100;
		graphics.beginFill(0xFF0000, 1);
		graphics.drawEllipse(x0, y0, 100, 50);
		graphics.beginFill(0x0000FF, 1);
		graphics.drawEllipse(x0, y0, 50, 100);
		
		x0 = 200;
		y0 = 100;
		graphics.beginFill(0xFF0000, 0.5);
		graphics.drawEllipse(x0, y0, 100, 50);
		graphics.beginFill(0x0000FF, 0.5);
		graphics.drawEllipse(x0, y0, 50, 100);
		
		graphics.endFill();
		
		
		
		// lineGradientStyle(type: GradientType, colors: Array<number>, alphas: Array<number>, ratios: Array<number>, matrix?: Matrix, spreadMethod?: SpreadMethod, interpolationMethod?: InterpolationMethod, focalPointRatio?: number): void
		// GradientType: GradientType.LINEAR or GradientType.RADIAL
		// https://help.adobe.com/ru_RU/FlashPlatform/reference/actionscript/3/flash/display/Graphics.html#lineGradientStyle()
		
		// createGradientBox(width:Number, height:Number, rotation:Number = 0, tx:Number = 0, ty:Number = 0):void
		// Ширина и высота масштабируются до пары scaleX/scaleY, а значения tx/ty являются коррекцией с половинными значениями ширины и высоты.
		// Фактически это прямоугольник заданной ширины и высоты, с указанным поворотом, и вынесенный на указанные координаты.
		// https://help.adobe.com/ru_RU/FlashPlatform/reference/actionscript/3/flash/geom/Matrix.html#createGradientBox()
		
		graphics.lineStyle(5, 0xFFFFFF);
		
		var matrix:Matrix = new Matrix();

		
		x0 = 0;
		y0 = 200;
		matrix.createGradientBox(100, 100, 0, x0, y0);
		graphics.lineGradientStyle(GradientType.LINEAR, [0xFF0000, 0x0000FF], [1, 1], [0, 255], matrix);
		graphics.drawRect(x0, y0, 100, 100);
		graphics.drawRect(x0 + 10, y0 + 10, 80, 80);
		graphics.drawRect(x0 + 20, y0 + 20, 60, 60);
		
		x0 = 100;
		y0 = 200;
		matrix.createGradientBox(100, 100, Math.PI / 2, x0, y0);
		graphics.lineGradientStyle(GradientType.LINEAR, [0xFF0000, 0x0000FF], [1, 1], [0, 255], matrix);
		graphics.drawRect(x0, y0, 100, 100);
		graphics.drawRect(x0 + 10, y0 + 10, 80, 80);
		graphics.drawRect(x0 + 20, y0 + 20, 60, 60);
		
		x0 = 200;
		y0 = 200;
		matrix.createGradientBox(100, 100, Math.PI / 4, x0, y0);
		graphics.lineGradientStyle(GradientType.LINEAR, [0xFF0000, 0x0000FF], [1, 1], [0, 255], matrix);
		graphics.drawRect(x0, y0, 100, 100);
		graphics.drawRect(x0 + 10, y0 + 10, 80, 80);
		graphics.drawRect(x0 + 20, y0 + 20, 60, 60);
		

		// beginGradientFill(type: GradientType, colors: Array<number>, alphas: Array<number>, ratios: Array<number>, matrix?: Matrix, spreadMethod?: SpreadMethod, interpolationMethod?: InterpolationMethod, focalPointRatio?: number): void
		
		graphics.lineStyle(1, 0x000000);
		
		x0 = 300;
		y0 = 200;
		matrix.createGradientBox(100, 100, 0, x0, y0);
		graphics.beginGradientFill(GradientType.LINEAR, [0xFF0000, 0x0000FF], [1, 1], [0, 255], matrix);
		graphics.drawEllipse(x0, y0, 100, 100);
		
		x0 = 400;
		y0 = 200;
		matrix.createGradientBox(100, 100, 0, x0, y0);
		graphics.beginGradientFill(GradientType.RADIAL, [0xFF0000, 0x0000FF], [1, 1], [0, 255], matrix);
		graphics.drawEllipse(x0, y0, 100, 100);
		
		x0 = 500;
		y0 = 200;
		matrix.createGradientBox(100, 100, Math.PI / 2, x0, y0);
		graphics.beginGradientFill(GradientType.LINEAR, [0xFF0000, 0xff9933, 0xffff66, 0x33cc33, 0x00ffff, 0x3366ff, 0x9900ff], [1, 1, 1, 1, 1, 1, 1], [0, 43, 85, 127, 169, 211, 255], matrix);
		graphics.drawEllipse(x0, y0, 100, 100);
		

		
		graphics.endFill();
		
		
	/*
		graphics.lineStyle(1, 0x000000);
		var rotateMatrix:Matrix = new Matrix();
		//rotateMatrix.rotate(90/180*Math.PI);
		rotateMatrix.createGradientBox(200, 300, Math.PI / 2, 0, 0);
		
		graphics.beginGradientFill(GradientType.LINEAR, [0xff0000, 0x0000ff], [1, 1], [0, 255], rotateMatrix);
		graphics.drawRect(0, 0, 200, 300);
		graphics.endFill();
	*/
		
	
	// linestyle(), lineGradientStyle(), beginFill(), beginGradientFill(), or beginBitmapFill()
	
	}

}

