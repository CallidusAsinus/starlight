package code	{
	
	import flash.display.MovieClip;
	import flash.display.StageScaleMode;
	
	/**
	 * ...
	 * @author Kyle
	 */
	public class Document extends MovieClip	{
		
		public function Document()	{
			
			//	Turn off autoscaling
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			var gom:GameObjectManager = GameObjectManager.getInstance();
			gom.setDoc(this);
			titleScreen.play();
			
			GUI.initInstance(gui);
		}
		
	}

}