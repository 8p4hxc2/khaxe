package core;

import kha.graphics2.Graphics;

class State {
	var systems:Array<System> = [];
	var paused:Bool = false;

	public function register(entity:Entity) {
		for(s in systems) {
			s.register(entity);
		}
	}

	public function update(dt:Float) {
		/*if(test[KeyCode.Return]) {
			paused = true;
		}*/

		if(!paused) {
			for(s in systems) {
				s.update(dt);
			}
		}
	}
	
	public function render(graphic:Graphics) {
		for(s in systems) {
			s.render(graphic);
		}
	}
}