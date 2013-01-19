package code.GameObjects 
{
	import code.GameObject;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Lamp extends GameObject
	{
		
		public function Lamp() 
		{
			manager.initObject(this, "lamp");
			addEventListener(MouseEvent.CLICK, onClick);
			makeButton();
		}
		
		public override function onClick(e:MouseEvent)	{
			
			if(state == "start")	{
				this.gotoAndStop("on");
				state = "on";
			}
			
			else 
			{
				this.gotoAndStop("off");
				state = "start";
			}
		}
		
	}

}