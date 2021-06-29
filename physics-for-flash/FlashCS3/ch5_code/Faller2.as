﻿package {		import com.physicscodes.motion.Forcer;	import com.physicscodes.motion.Forces;		import com.physicscodes.objects.Particle;			import com.physicscodes.math.Vector2D;	import com.physicscodes.math.Graph;	public class Faller2 extends Forcer{				private var _particle:Particle;		private var _g:Number=10;		private var _k:Number=0.5;		private var _m:Number;		private var _y0:Number;		private var _graphDisp:Graph;		private var _graphVelo:Graph;				public function Faller2(pparticle:Particle):void{			_particle = pparticle;			_m = _particle.mass;			_y0 = _particle.ypos;			setupGraphs();			super(pparticle);		}					override protected function moveObject():void{			super.moveObject();			plotGraphs();		}				override protected function calcForce():void{			//force = new Vector2D(0,_particle.mass*_g-_k*_particle.vy);			var gravity:Vector2D = Forces.constantGravity(_particle.mass,_g);			var drag:Vector2D = Forces.linearDrag(_k,_particle.velo2D);			force = Forces.add([gravity, drag]);		}				private function setupGraphs():void{			//_graph= new Graph(xmin,xmax,ymin,ymax,xorig,yorig,xwidth,ywidth);				_graphDisp= new Graph(0,30,0,500,150,300,600,250);								_graphDisp.drawgrid(5,1,100,20);						_graphDisp.drawaxes('time (s)','displacement (px)');					_particle.stage.addChild(_graphDisp);			_graphVelo= new Graph(0,30,0,25,150,570,600,200);								_graphVelo.drawgrid(5,1,5,1);						_graphVelo.drawaxes('time (s)','velocity (px/s)');					_particle.stage.addChild(_graphVelo);					}				private function plotGraphs():void{					_graphDisp.plot([time], [_particle.ypos-_y0], 0xff0000);						_graphDisp.plot([time], [_m*_g/_k*(time+_m/_k*Math.exp(-_k/_m*time)-_m/_k)], 0x0000ff);			_graphVelo.plot([time], [_particle.vy], 0xff0000);						_graphVelo.plot([time], [_m*_g/_k*(1-Math.exp(-_k/_m*time))], 0x0000ff);		}		}	}