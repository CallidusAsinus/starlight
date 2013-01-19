package code.GameObjects 
{
	import code.GameObject;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Armoire extends GameObject 
	{
		
		public function Armoire() 
		{
			
		}
		
		public override function init()	{
			
			manager.initObject(this, "armoire");
			makeButton();
			
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public override function onClick(e:MouseEvent)	{
			
			if(state == "start")	{
				
				playAnimation("open");
				state = "open";
			}
			
			else if (state == "open")	{
				
				playAnimation("closed");
				state = "start";
			}
			
		}
		
	}

}