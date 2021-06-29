﻿package {	import flash.display.Sprite;		import flash.utils.Timer;	import flash.events.TimerEvent;		import flash.utils.getTimer;		public class BallThrow extends Sprite {		private var ball:Ball;		private var timer:Timer;		private var t:int;		private var t0:int;		private var x0:Number=50;		private var y0:Number=350;		private var vx:Number=50; // velocity in units of pixels per second				private var vy:Number=-50;				private var g:Number=10;		public function BallThrow() {			init();		}		private function init():void {					createBall();			setupTimer(); 		}				private function createBall():void{			ball = new Ball();				ball.x = x0;			ball.y = y0;			addChild(ball);			}				private function setupTimer():void{			timer = new Timer(20);			timer.addEventListener(TimerEvent.TIMER,onEachTimestep);					timer.start();			t0 = getTimer(); // initialise value of t 		}		private function onEachTimestep(evt:TimerEvent):void{			var t:Number = (getTimer() - t0)/1000; // time elapsed in seconds since start			ball.x = x0 + vx*t; 						ball.y = y0+ vy*t + 0.5*g*t*t;			evt.updateAfterEvent();		}	}}