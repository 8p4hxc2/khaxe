package core;

import kha.graphics2.Graphics;

class System {
	var blueprints:Array<String> = [];
	var entities:Array<Entity> = [];

	public function register(entity:Entity) {
		var match:Int = 0;
		var total:Int = blueprints.length;

		for(blueprint in blueprints) {
			if(entity.hasComponent(blueprint)) {
				match++;
			}
		}

		if(match==total) {
			entities.push(entity);
		}
	}

	public function update(dt:Float) {}
	public function render(graphic:Graphics) {}
}