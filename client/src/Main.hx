package;

import motion.Actuate;
import openfl.display.Sprite;
import openfl.Lib;
import openfl.events.MouseEvent;

/**
 * ...
 * @author vincent blanchet
 */
class Main extends Sprite 
{
	
	var clients:Array<Client>;
	
	public function new() 
	{
		super();
		clients = [];
		
		var c = new Client();
		addChild(cast(c.view.mainScreen,Sprite));
		c.init();
	}

	/*
	function onReady(startState:StartState)
	{
		//create all players
		for (p in startState.players)
		{
			var av = new Avatar(p.id,p.name);
			av.x = p.x;
			av.y = p.y;
			addChild(av);
			avatars.set(p.id, av);
			
			if (p.id == sfsHandler.me.id)
				this.me = av;
		}
		
		Lib.current.stage.addEventListener(MouseEvent.CLICK, onClick);
	}
	
	private function onClick(e:MouseEvent):Void 
	{
		trace("click");
		sfsHandler.move({user:me.id, x:Std.int(e.localX), y:Std.int(e.localY)});
	}
	
	function onMove(move:Move)
	{
		var av = avatars.get(move.user);
		Actuate.tween(av, .5, {x:move.x, y:move.y});
	}
	*/

}
