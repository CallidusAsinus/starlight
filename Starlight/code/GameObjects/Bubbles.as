package code.GameObjects 
{
	import code.GameObject;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Bubbles extends GameObject 
	{
		
		public function Bubbles() 
		{
			
		}
		
		public override function init()	{
			
			manager.initObject(this, "bubbles");
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public override function onClick(e:MouseEvent)	{
			
			manager.getGui.addObject(this);
		}
		
	}

}