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
			
			addEventListener(MouseEvent.CLICK, onClick);
			
			if (manager.getObject("bubbles") == null)	{
				
				manager.initObject(this, "bubbles");
				makeButton();
			}
			
			else if (manager.getObject("bubbles").state == "inventory")
			{
				hide();
			}
		}
		
		public override function onClick(e:MouseEvent)	{
			
			if (state == "start")	{
				
				addToInventory();
			}
			
		}
		
		private function addToInventory()	{
			
			gui.addObject(new BubblesItem());
			hide();
			manager.getObject("bubbles").state = "inventory"
		}
		
	}

}