﻿package {	import flash.display.Sprite;	import com.physicscodes.motion.MultiForcer;	import com.physicscodes.motion.Forces;		import com.physicscodes.objects.Particle;	import com.physicscodes.objects.Ball;		import com.physicscodes.math.Vector2D;	public class SparksMover extends MultiForcer{		private var _sprite:Sprite;		private var _particles:Array = new Array();		private var _maxParticles:uint = 200;				private var _g:Number = 10;		private var _k:Number = 0.005;		private var _vx:Number = 100;		private var _vy:Number = -100;				public function SparksMover(psprite:Sprite):void{					_sprite = psprite;			super(_particles);		}					override protected function calcForce(pparticle:Particle):void{			var gravity:Vector2D = Forces.constantGravity(pparticle.mass,_g);				var drag:Vector2D = Forces.drag(_k,pparticle.velo2D);			force = Forces.add([gravity, drag]);		}				override protected function moveObject():void{			super.moveObject();			createNewParticles(new Vector2D(_sprite.mouseX,_sprite.mouseY));			limitParticles();			ageParticles();					}				private function createNewParticles(ppos:Vector2D):void{			var newBall:Ball = new Ball(2,0xffff00,1,0,false);			newBall.pos2D = ppos;			newBall.velo2D = new Vector2D((Math.random()-0.5)*_vx,(Math.random()-0.5)*_vy);			newBall.lifetime = 2 + 2*Math.random();			_sprite.addChild(newBall);			_particles.push(newBall);		}					private function limitParticles():void{			if (_particles.length > _maxParticles){				_sprite.removeChild(_particles[0]);				_particles.shift();			}		}						private function ageParticles():void{			for (var i:uint=0; i<_particles.length; i++){				var particle:Ball = _particles[i];				particle.age += dt;				particle.alpha += -0.005;				if (particle.age > particle.lifetime){					removeParticle(particle,i);				}			}		}				private function removeParticle(pparticle:Particle,pnum:uint):void{			_sprite.removeChild(pparticle);			_particles.splice(pnum,1);		}	}}