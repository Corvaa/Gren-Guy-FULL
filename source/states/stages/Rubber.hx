package states.stages;

class Rubber extends BaseStage
{
	var warning:FlxSprite;

	override function create()
	{
		add(warning = new FlxSprite(0,0, Paths.image('stages/rubber/warning_placeholder')));
		warning.screenCenter();

		new FlxTimer().start(2,Void->{
			warning.visible = true;

		new FlxTimer().start(2,Void->{
			warning.visible = false;
		});
	});	
	}
}	