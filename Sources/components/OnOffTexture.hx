package components;

import kha.Image;
import core.Component;

class OnOffTexture extends Component {
	var offTexture:Image;
	var onTexture:Image;
	
	public function new(_offTexture, _onTexture) {
		offTexture = _offTexture;
		onTexture = _onTexture;
	}
}