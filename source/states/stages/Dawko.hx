package states.stages;

import backend.BaseStage;

class Dawko extends BaseStage {
	public var wall:FlxSprite;
    public var decor:FlxSprite;
	public var lighting:FlxSprite;
	public var mic_foreground:FlxSprite;
	public var table:FlxSprite;

	public override function create() {
	{
		add(wall = new FlxSprite(0, 0, Paths.image("stages/dawko/backwall")));
		wall.scale.set(1.5,1.5);
		add(decor = new FlxSprite(0, -300, Paths.image("stages/dawko/bg_decor")));
		decor.scale.set(1.3,1.3);
		add(table = new FlxSprite(1150,740, Paths.image("stages/dawko/table")));
		table.scale.set(1.4,1.4);
	}
}
	
	override function createPost() {
		add(lighting = new FlxSprite(100,-250, Paths.image("stages/dawko/lighting")));
		lighting.scale.set(1.4,1.4);
		add(mic_foreground = new FlxSprite(1600,500, Paths.image("stages/dawko/mic_foreground")));
		mic_foreground.scale.set(1.4,1.4);
		mic_foreground.scrollFactor.set(0.85,0.85);
	}
}	