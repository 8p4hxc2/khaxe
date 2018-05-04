package components;

import core.Component;
import nape.phys.Body;
import nape.phys.BodyType;
import nape.shape.Polygon;
import nape.space.Space;

class RigidBody extends Component {
	public var body:Body;

	public function new(space:Space, x:Float, y:Float, width:Float, height:Float, ?bodyType:BodyType) {
		body = new Body(bodyType);
        body.shapes.add(new Polygon(Polygon.box(width, height)));
        body.position.setxy(x, y);
        body.space = space;
	}
}