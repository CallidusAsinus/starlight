package code.GameObjects 
{
	import code.GameObject;
	import flash.events.MouseEvent;
	import code.GUI;
	
	/**
	 * ...
	 * @author ...
	 */
	public class HamsterBall extends GameObject
	{
		
		public function HamsterBall() 
		{
			
		}
		
		public override function init()	{
			
			gui = GUI.getInstance();
			
			if (manager.getObject("hamsterBall") == null)	{
				
				manager.initObject(this, "hamsterBall");
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
			
			gui.addObject(new HamsterBallItem());
			hide();
			state = "inventory";
		}
		
	}

}