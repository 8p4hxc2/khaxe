package entities;

import core.Entity;
import core.Physic;
import components.RigidBody;
import components.RectRenderer;
import components.Transform;
import components.Material;
import nape.phys.BodyType;

class Floor extends Entity {
	public function new() {
		components.set("Transform", new Transform(1500, 50));
		components.set("RectRenderer", new RectRenderer());
		components.set("Material", new Material());
		components.set("RigidBody", new RigidBody(Physic.universe.getWorld(), 0+1500/2, 600+50/2, 1500, 50, BodyType.STATIC));
	}
}