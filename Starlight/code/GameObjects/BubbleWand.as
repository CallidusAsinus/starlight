package code.GameObjects 
{
	import code.GameObject;
	import flash.events.MouseEvent;
	import code.GUI;
	
	/**
	 * ...
	 * @author ...
	 */
	public class BubbleWand extends GameObject
	{
		
		public function BubbleWand() 
		{
			
		}
		public override function init()	{
			
			gui = GUI.getInstance();
			
			if (manager.getObject("bubbleWand") == null)	{
				
				manager.initObject(this, "bubbleWand");
				makeButton();
				
				addEventListener(MouseEvent.CLICK, onClick);
			}
			
			else 
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
			
			gui.addObject(new BubbleWandItem());
			hide();
			state = "inventory";
		}
		
	}

}