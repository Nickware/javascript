﻿package{	import flash.display.Sprite;	import com.physicscodes.objects.Ball;	import com.physicscodes.math.Vector2D;		import com.physicscodes.objects.Particle;	public class ParachuteTest extends Sprite{		public function ParachuteTest():void{			init();		}		private function init():void{			// create a sky diver					var skydiver:Ball;			skydiver = new Ball(20,0x0000ff,1);			skydiver.pos2D = new Vector2D(650,50);			//skydiver.velo2D = new Vector2D(0,0);						addChild(skydiver);			// make the skydiver fall			var parachute:Parachute=new Parachute(skydiver);					parachute.startTime(10);		}	}}