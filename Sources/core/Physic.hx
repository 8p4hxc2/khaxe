package core;

import nape.geom.Vec2;
import nape.space.Space;

class Physic {
	public static var universe:Physic = new Physic();
	var gravity:Vec2;
	var world:Space;

	public function new() {
		var gravity = Vec2.weak(0, 600);
        world = new Space(gravity);
	}

	public function update() {
		world.step(1 / 60);
	}

	// getters
	public function getWorld() {
		return world;
	}
}