package states.stages;

import states.stages.objects.*;

class Dawko extends BaseStage {
	public var wall:FlxSprite;
    public var decor:FlxSprite;

	public override function create() {
	{
		add(wall = new FlxSprite(0, 0, Paths.image("stages/interview/backwall")));
		wall.scale.set(0,0);

		add(decor = new FlxSprite(0, 0, Paths.image("stages/interview/backwall")));
		decor.scale.set(0,0);
	}
}
	
	override function createPost()
	{
		// Use this function to layer things above characters!
	}
}	