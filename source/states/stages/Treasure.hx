package states.stages;

import backend.BaseStage;

class Treasure extends BaseStage
{
	public var back:FlxSprite;
	public var land:FlxSprite;
	public var ripple:FlxSprite;
	public var fg:FlxSprite;
	public var scan:FlxSprite;

	override function create()
	{
		add(back = new FlxSprite(0, 0, Paths.image("stages/treasure/bgofishmoon")));
		back.scale.set(0.7,0.7);

		add(land = new FlxSprite(0, 0, Paths.image("stages/treasure/bgofishtree")));
		land.scale.set(0.7,0.7);

		add(ripple = new FlxSprite(0, 0, Paths.image("stages/treasure/bgofishlines")));
		ripple.scale.set(0.7,0.7);
	}
	
	override function createPost()
	{
		add(fg = new FlxSprite(0, 0, Paths.image("stages/treasure/bgofishrocks")));
		fg.scale.set(0.7,0.7);

		var scan = new FlxSprite();
				scan.frames = Paths.getSparrowAtlas('stages/treasure/scan_placeholder');
				scan.animation.addByPrefix('Symbol 1','Symbol 1',12);
				scan.animation.play('Symbol 1');
				scan.cameras = [game.camOther];
				add(scan);
	}
}