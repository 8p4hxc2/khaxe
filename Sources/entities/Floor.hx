package entities;

import core.Entity;
import components.RigidBody;
import nape.space.Space;
import nape.phys.BodyType;
import components.RectRenderer;
import components.Transform;

class Floor extends Entity {
	public function new(space:Space) {
		components.set("Transform", new Transform(1500, 50));
		components.set("RectRenderer", new RectRenderer());
		components.set("RigidBody", new RigidBody(space, 0+1500/2, 600+50/2, 1500, 50, BodyType.STATIC));
	}
}