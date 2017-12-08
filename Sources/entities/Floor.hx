package entities;

import core.Entity;
import components.RigidBody;
import nape.space.Space;
import nape.phys.BodyType;
import components.SpriteRenderer;
import components.Transform;

class Floor extends Entity {
	public function new(space:Space) {
		components.set("Transform", new Transform(1500, 50));
		components.set("SpriteRenderer", new SpriteRenderer());
		components.set("RigidBody", new RigidBody(space, 0, 600, 1500, 50,BodyType.STATIC));
	}
}