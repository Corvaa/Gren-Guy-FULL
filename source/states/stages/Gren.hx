package states.stages;

import backend.BaseStage;

class Gren extends BaseStage
{
	// If you're moving your stage from PlayState to a stage file,
	// you might have to rename some variables if they're missing, for example: camZooming -> game.camZooming

	override function create()
	{
		// Spawn your stage sprites here.
		// Characters are not ready yet on this function, so you can't add things above them yet.
		// Use createPost() if that's what you want to do.
	}
	
	override function createPost()
	{
		// Use this function to layer things above characters!
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