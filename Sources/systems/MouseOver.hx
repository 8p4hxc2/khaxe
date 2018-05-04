package systems;

import nape.geom.Vec2;
import core.System;
import core.Controller;
import components.RigidBody;
import components.RectRenderer;

class MouseOver extends System {
	public function new() {
		this.blueprints = ["CanOver", "RigidBody", "RectRenderer"];
	}

	override function update(dt:Float) {
		for(entity in entities) {
			var rigidBody:RigidBody = cast(entity.components.get("RigidBody"), RigidBody);
			var rectRenderer:RectRenderer = cast(entity.components.get("RectRenderer"), RectRenderer);
			var mousePosition:Vec2 = Controller.keyboard.mousePosition;
			var isOnEntity:Bool = rigidBody.body.contains(mousePosition);

			if(isOnEntity) {
				if(Controller.keyboard.isMouseDown()) {
					rigidBody.body.position = mousePosition;
				}

				rectRenderer.color = 0xff699874;
			}
			else {
				rectRenderer.color = 0xffffffff;
			}
		}
	}
}