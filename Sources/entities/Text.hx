package entities;

import core.Entity;
import core.Physic;
import components.TextRenderer;
import components.Transform;
import components.RigidBody;
import nape.phys.BodyType;

class Text extends Entity {
	public function new(?x:Int = 100, ?y:Int = 0) {
		components.set("Transform", new Transform(x, y, 50, 50));
		components.set("TextRenderer", new TextRenderer());
	}
}