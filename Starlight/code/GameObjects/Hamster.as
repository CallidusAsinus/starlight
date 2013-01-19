package code.GameObjects 
{
	import code.GameObject;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Hamster extends GameObject
	{
		
		public function Hamster() 
		{
			
		}
		
		public override function init()	{
			
			if(manager.getObject("hamster") == null)	{
				manager.initObject(this, "hamster");
				addEventListener(MouseEvent.MOUSE_OVER, onMouseOver);
				play();
			}
		}
		
		public override function onMouseOver(e:MouseEvent)	{
			
			if (state == "start")	{
				
				state = "run";
				gotoAndPlay("run");
			}
		}
	}

}