﻿package{	import flash.display.Sprite;	import flash.filters.GlowFilter;			public class Fireworks extends Sprite{		public function Fireworks():void{			init();		}		private function init():void{  			var sprite:Sprite = new Sprite();			addChild(sprite);			var mover:FireworksMover=new FireworksMover(sprite);					mover.startTime();						filters = [new GlowFilter()];			}	}}