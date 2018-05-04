package systems.onOver;

import core.System;
import core.Controller;
import components.Transform;
import components.TextRenderer;
import nape.geom.Vec2;

class TextColor extends System {
	public function new() {
		this.blueprints = ["Overed", "TextRenderer", "Transform"];
	}

	override function update(dt:Float) {
		for(entity in entities) {
			var transform:Transform = cast(entity.components.get("Transform"), Transform);
			var textRenderer:TextRenderer = cast(entity.components.get("TextRenderer"), TextRenderer);
			var mousePosition:Vec2 = Controller.mouse.mousePosition;

			if(mousePosition.x > transform.x && mousePosition.x < transform.x + transform.width &&
			   mousePosition.y > transform.y && mousePosition.y < transform.y + transform.height) {
			   textRenderer.color = 0xff21f3ff;
			}
			else {
				textRenderer.color = 0xffffffff;
			}
		}
	}
}