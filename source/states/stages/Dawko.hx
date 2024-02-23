package states.stages;

import backend.BaseStage;
import objects.Character;
import objects.Note;

class Dawko extends BaseStage {
	public var wall:FlxSprite;
    public var decor:FlxSprite;
	public var lighting:FlxSprite;
	public var mic_foreground:FlxSprite;
	public var table:FlxSprite;
	var phone_dued:Character;
	var phone_sing:Bool = false;

	public override function create() {
	{
		add(wall = new FlxSprite(0, 0, Paths.image("stages/dawko/backwall")));
		wall.scale.set(1.5,1.5);
		add(decor = new FlxSprite(0, -300, Paths.image("stages/dawko/bg_decor")));
		decor.scale.set(1.3,1.3);
		add(table = new FlxSprite(1150,740, Paths.image("stages/dawko/table")));
		table.scale.set(1.4,1.4);

		add(phone_dued = new Character(500, 75, 'phone_dued'));
		phone_dued.visible = false;
	}
}
	
	override function createPost() {
		add(lighting = new FlxSprite(100,-250, Paths.image("stages/dawko/lighting")));
		lighting.scale.set(1.4,1.4);
		add(mic_foreground = new FlxSprite(1600,500, Paths.image("stages/dawko/mic_foreground")));
		mic_foreground.scale.set(1.4,1.4);
		mic_foreground.scrollFactor.set(0.85,0.85);
	}

	override function beatHit()
		{
			
			if (phone_dued != null && curBeat % phone_dued.danceEveryNumBeats == 0 && !phone_dued.getAnimationName().startsWith('idle') && !phone_dued.stunned)
				phone_dued.dance();
		}

		function opponentNoteHit(note:Note)
			{
				if (phone_sing){
					note.noAnimation = true;
					@:privateAccess
					var animToPlay:String = PlayState.instance.singAnimations[Std.int(Math.abs(Math.min(PlayState.instance.singAnimations.length-1, note.noteData)))];
		
					phone_dued.playAnim(animToPlay, true);
					phone_dued.holdTimer = 0;
				}
			}

	override function eventCalled(eventName:String, value1:String, value2:String, flValue1:Null<Float>, flValue2:Null<Float>, strumTime:Float)
	{
		switch(eventName)
		{
			case "he appears":
					phone_dued.playAnim('light', true);
					phone_dued.specialAnim = true;
					phone_dued.visible = true;
			}
	}
}