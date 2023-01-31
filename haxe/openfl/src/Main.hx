package;

import flash.text.GridFitType;
import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.Assets;
import openfl.Lib;

/**
 * OpenFL basic functions
 * @author filinz
 */
class Main extends Sprite {
	
	public var maxX:Int = 1600;
	public var maxY:Int = 900;
	
	public var stepGridX:Int = 100;
	public var stepGridY:Int = 100;

	public function new() {
		super();
		
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
		
		
		// Source:  https://www.openfl.org/learn/npm/api/classes/openfl.display.graphics.html
	
		
		// lineStyle(thickness?: number | null, color?: number, alpha?: number, pixelHinting?: boolean, 
		// scaleMode?: LineScaleMode, caps?: CapsStyle, joints?: JointStyle, miterLimit?: number): void 
		
		// lineTo(x: number, y: number): void
		
		// moveTo(x: number, y: number): void
		
		graphics.lineStyle(1, 0xFFFFFF);
		graphics.moveTo(0, 0);
		graphics.lineTo(100, 0);
		graphics.lineTo(100, 100);
		graphics.lineTo(0, 0);
		graphics.lineTo(100, 25);
		graphics.moveTo(0, 0);
		graphics.lineTo(100, 50);
		graphics.moveTo(0, 0);
		graphics.lineTo(100, 75);
		
		
		
		
		trace("done");
	}

}

