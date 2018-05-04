package components;

import core.Component;

class Pressed extends Component {
	var pressed:Bool;
	
	public function new(?_pressed=false) {
		pressed = _pressed;
	}
}