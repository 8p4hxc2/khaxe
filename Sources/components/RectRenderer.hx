package components;

import core.Component;

class RectRenderer extends Component {
	public var color:Int;

	public function new(_color:Int = 0xffffffff) {
		color = _color;
	}
}