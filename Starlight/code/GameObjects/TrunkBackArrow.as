package code.GameObjects 
{
	import code.GameObject;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author ...
	 */
	public class TrunkBackArrow extends GameObject
	{
		
		public function TrunkBackArrow() 
		{
			
		}
		
		public override function init()	{
			
			hide();
			manager.initObject(this, "trunkBackArrow");
			makeButton();
			manager.getObject("trunkCloseup").addEventListener(MouseEvent.MOUSE_MOVE, onMM);
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public override function onClick(e:MouseEvent)	{
			
			manager.getObject("fader").show();
			manager.getObject("fader").playAnimation("chestFadeIn");
		}
		
		public function onMM(e:MouseEvent)	{
			
			if (mouseY > -5)	{
				
				show();
			}
			
			else 
			{
				hide();
			}
		}
		
	}

}