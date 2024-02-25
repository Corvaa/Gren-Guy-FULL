package states.stages;


class Origins extends BaseStage
{
	var void:FlxSprite;

	override function create()
	{
		add(void = new FlxSprite(0, 0, Paths.image("stages/origins/MY_EYES")));
		void.scale.set(69,69); //im so funny
	}
}