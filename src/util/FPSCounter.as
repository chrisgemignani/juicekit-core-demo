package util {
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.utils.getTimer;
	
	import org.juicekit.util.Strings;
	
	import spark.components.Label;
	
	public class FPSCounter extends Label {
		private var last:uint = getTimer();
		private var ticks:uint = 0;
		
		public function FPSCounter():void {
			text = "----- fps";
			addEventListener(Event.ENTER_FRAME, tick);
		}
		
		public function tick(evt:Event):void {
			ticks++;
			var now:uint = getTimer();
			var delta:uint = now - last;
			if (delta >= 500) {
				//trace(ticks / delta * 1000+" ticks:"+ticks+" delta:"+delta);
				var fps:Number = ticks / now * 1000;
				text = Strings.format("{0:0.0} fps", fps);
				//ticks = 0;
				last = now;
			}
		}
	}
}