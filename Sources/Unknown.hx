package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Color;
import kha.Assets;
import kha.Font;
import kha.Image;
import kha.math.FastMatrix3;

class Unknown {
	public var image:Image;
	public var font01:Font;
	var x:Int;

	public function new() {
		Assets.loadEverything(loadAll);
	}

	public function loadAll(){
		//block = new Block(640, 480);
		image = Assets.images.test;
		font01 = Assets.fonts.testf;
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
	}

	function update(): Void {
		x+=1;
	}

	function render(framebuffer: Framebuffer): Void {		
		var graphic = framebuffer.g2;
		graphic.begin();
		
		graphic.color = Color.White;
		graphic.drawImage(image,x,30);
		graphic.font = font01;
		graphic.fontSize = 64;
		graphic.color = Color.Blue;
		graphic.drawString('THIS IS SOME KHA TEXT', 128,128);

		graphic.pushTransformation(FastMatrix3.identity());
		graphic.rotate(x,32,32);
		graphic.drawRect(32,32,64,32,6);
		graphic.popTransformation();
		graphic.end();

		
		/*var graphics = framebuffer.g2;
		graphics.begin();
		block.render(framebuffer);
		graphics.end();*/
	}
}
