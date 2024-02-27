package states.stages;

import backend.BaseStage;

class Gren extends BaseStage
{
	public var Gren1:FlxSprite;
	public var Gren2:FlxSprite;

	override function create()
	{
		add(Gren1 = new FlxSprite(-300, -100, Paths.image("stages/gren/Gren1")));
		Gren1.scale.set(1.15,1.15);
		Gren1.antialiasing = false;
	}
	
	override function createPost()
	{
		add(Gren2 = new FlxSprite(-300, -100, Paths.image("stages/gren/Gren2")));
		Gren2.scale.set(1.2,1.2);
		Gren2.antialiasing = false;
		Gren2.scrollFactor.set(0.9,0.9);
	}

	function onSongStart()
	{
		PlayState.instance.barSongLength = 70*1000;
	}

	function onEvent(eventName, value1, value2){
	if (eventName == 'TimeRewind') {
		switch (value1){
		case 'timer':
		FlxTween.tween(game, {barSongLength: FlxG.sound.music.time}, 3, {ease: FlxEase.quadInOut});
			}	
		}
	}
}