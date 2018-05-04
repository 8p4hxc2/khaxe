package systems.draw;

import core.System;
import kha.graphics2.Graphics;
import components.TextRenderer;
import components.Transform;

class DrawText extends System {
	public function new() {
		this.blueprints = ["TextRenderer", "Transform"];
	}

	override function update(dt:Float) {}

	override function render(graphic:Graphics) {
		for(entity in entities) {
			var textRenderer = cast(entity.components.get("TextRenderer"), TextRenderer);
			var transform = cast(entity.components.get("Transform"), Transform);

			graphic.font = textRenderer.font;
			graphic.fontSize = textRenderer.fontSize;
			graphic.color = textRenderer.color;
			graphic.drawString(textRenderer.text, transform.x, transform.y);
			graphic.color = 0xffffffff;
		}
	}
}