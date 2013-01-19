package code.GameObjects 
{
	import code.GameObject;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Trunk extends GameObject 
	{
		
		public function Trunk() 
		{
			
		}
		
		public override function init()	{
			
			manager.initObject(this, "trunk");
			makeButton();
			
			addEventListener(MouseEvent.CLICK, onClick);
			addEventListener(MouseEvent.MOUSE_OVER, onMouseOver);
		}
		
		public override function onClick(e:MouseEvent)	{
			
			if(state == "start")	{
				
				playAnimation("open");
				state = "open";
			}
			
		}
		
	}

}