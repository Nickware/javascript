﻿package {	import com.physicscodes.motion.ForcerIntegrator;	import com.physicscodes.motion.Forces;		import com.physicscodes.objects.Ball;			import com.physicscodes.math.Vector2D;	public class ScaleModelMover extends ForcerIntegrator{		private var _ball:Ball;		private var _g:Number = 400;				public function ScaleModelMover(pball:Ball):void{			_ball = pball;			super(pball);		}					override protected function calcForce(ppos:Vector2D,pvel:Vector2D):void{			force = Forces.constantGravity(_ball.mass,_g);						if (_ball.y > _ball.stage.stageHeight- _ball.radius -100){				stopTime();								trace(time);			}						//trace(dt);					}		}	}