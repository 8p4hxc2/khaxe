package components;

import core.Component;
import kha.Font;
import kha.Assets;

class TextRenderer extends Component {
	public var text:String;
	public var font:Font;
	public var fontSize:Int;
	public var color:Int;
	
	public function new( _text:String, ?_color:Int = 0xffffffff) {
		text = _text;
		color = _color;
		font = Assets.fonts.opensans;
		fontSize = 24;
	}
}