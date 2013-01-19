package code.GameObjects 
{
	import code.GameObject;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author ...
	 */
	public class PlayButton extends GameObject 
	{
		
		public function PlayButton() 
		{
			
		}
		
		public override function init()	{
			
			manager.initObject(this, "playButton");
			this.addEventListener(MouseEvent.CLICK, onClick);
			makeButton();
		}
		
		public override function onClick(e:MouseEvent)	{
			
			hide();
			manager.getObject("titleScreen").playAnimation("fadeOut");
		}
		
	}

}