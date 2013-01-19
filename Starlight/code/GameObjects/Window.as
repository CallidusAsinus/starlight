package code.GameObjects 
{
	import code.GameObject;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Window extends GameObject 
	{
		
		public function Window() 
		{
			
		}
		
		public override function init()	{
			
			manager.initObject(this, "window");
			makeButton();
			
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public override function onClick(e:MouseEvent)	{
			
			if(state == "start")	{
				
				playAnimation("open");
				state = "open";
			}
			
		}
		
	}

}