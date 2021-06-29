﻿package {	import flash.display.Sprite;		import flash.events.Event;		public class BouncingBallRecycled extends Sprite {		private var g:Number=0.1; // acceleration due to gravity		private var vx:Number;  // initial horizontal speed		private var vy:Number;  // initial vertical speed		private var ball:Ball;		public function BouncingBallRecycled() {			init();		}		private function init():void {					ball = new Ball();			setInitialConditions(); // move initialisation code to a separate function			addChild(ball);				addEventListener(Event.ENTER_FRAME,onEachTimestep); 		}				private function setInitialConditions():void{ // initialise ball's position and velocity 			vx = Math.random()*5;			vy = (Math.random()-0.5)*4;			ball.x = 50;			ball.y = 75;		}		private function onEachTimestep(evt:Event):void{			vy += g;      // gravity increases the vertical speed						ball.x += vx; // horizontal speed increases horizontal position			ball.y += vy; // vertical speed increases vertical position						if (ball.y > 350){ // if ball hits the ground				vy *= -0.8;    // its vertical velocity reverses and reduces			};			if (ball.x > 550 + ball.width/2){ // take into account ball's width as it exits from right hand side				setInitialConditions(); // recycle ball			}		}	}}