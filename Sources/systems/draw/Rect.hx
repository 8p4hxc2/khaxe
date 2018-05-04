package systems.draw;

import kha.graphics2.Graphics;
import core.System;
import components.Transform;
import components.RectRenderer;

class DrawRect extends System {
	public function new() {
		this.blueprints = ["RectRenderer", "Transform"];
	}

	override function render(graphic:Graphics):Void {
		for(entity in entities) {
			var transform = cast(entity.components.get("Transform"), Transform);
			var rectRenderer = cast(entity.components.get("RectRenderer"), RectRenderer);

			graphic.color = rectRenderer.color;
			graphic.pushRotation(transform.rotation, transform.x, transform.y);
			graphic.drawRect(transform.x-transform.width/2, transform.y-transform.height/2, transform.width, transform.height);
			graphic.popTransformation();
			graphic.color = 0xffffffff;
		}
	}
}