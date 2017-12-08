package systems;

import core.System;
import components.Transform;
import components.RigidBody;

class MovePlayer extends System {
	public function new() {
		this.blueprints = ["SpriteRenderer", "Transform"];
	}

	override function update(dt:Float) {
		for(entity in entities) {
			var transform:Transform = cast(entity.components.get("Transform"), Transform);
			var rigidBody:RigidBody = cast(entity.components.get("RigidBody"), RigidBody);

			transform.position.x = rigidBody.body.position.x;
			transform.position.y = rigidBody.body.position.y;
			transform.rotation = rigidBody.body.rotation;
		}
	}
}