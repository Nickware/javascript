﻿package com.physicscodes.objects {	import flash.display.Sprite;//	import flash.geom.Vector3D;		import com.physicscodes.math.Vector2D;	import com.physicscodes.motion.Mover;			public class Particle extends Sprite{				// position: Particle inherits properties x, y, z from Sprite		// size: Particle inherits properties width, height from Sprite		// velocity components				// for calculating positions to Number precision		private var _x:Number;		private var _y:Number;				private var _vx:Number=0;		private var _vy:Number=0;		private var _vz:Number=0;		// position vector//		private var _pos:Vector3D;		private var _pos2D:Vector2D;				// velocity vector//		private var _velo:Vector3D;		private var _velo2D:Vector2D;				// mass		private var _mass:Number;		// charge		private var _charge:Number;					// angular velocity in radians per second		private var _omega:Number=0;				private var _mover:Mover;				public function Particle(pmass:Number=1,pcharge:Number=0){			_mass = pmass;			_charge = pcharge;		}		public function get mass():Number{			return _mass;		}		public function set mass(pmass:Number):void{			_mass = pmass;		}			public function get charge():Number{			return _charge;		}		public function set charge(pcharge:Number):void{			_charge = pcharge;		}				public function get vx():Number{			return _vx;		}		public function set vx(pvx:Number):void{			_vx = pvx;		}		public function get vy():Number{			return _vy;		}		public function set vy(pvy:Number):void{			_vy = pvy;		}		public function get vz():Number{			return _vz;		}		public function set vz(pvz:Number):void{			_vz = pvz;		}				public function get angVelo():Number{			return _omega;		}		public function set angVelo(pomega:Number):void{			_omega = pomega;		}		//		public function clone():Particle {//			return new Particle(_mass,_charge);//		}/*		public function get pos():Vector3D{			return new Vector3D(x,y,z);		}		public function set pos(ppos:Vector3D):void{			x = ppos.x;			y = ppos.y;			z = ppos.z;					}		public function get velo():Vector3D{			return new Vector3D(_vx,_vy,_vz);		}		public function set velo(pvelo:Vector3D):void{			_vx = pvelo.x;			_vy = pvelo.y;			_vz = pvelo.z;					}*/				public function get xpos():Number{			return _x;		}		public function set xpos(px:Number):void{			_x = px;			x = _x;		}				public function get ypos():Number{			return _y;		}		public function set ypos(py:Number):void{			_y = py;			y = _y;		}				public function get pos2D():Vector2D{			//return new Vector2D(x,y);			return new Vector2D(_x,_y);		}		public function set pos2D(ppos:Vector2D):void{			_x = ppos.x;			_y = ppos.y;			x = _x;			y = _y;					}				public function get velo2D():Vector2D{			return new Vector2D(_vx,_vy);		}		public function set velo2D(pvelo2D:Vector2D):void{			_vx = pvelo2D.x;			_vy = pvelo2D.y;		}						public function move(ptimestep:Number=20,psteps:Number=0):void{			//_mover = new Mover([this]);						_mover = new Mover(this);			_mover.startTime(ptimestep,psteps);					}		public function pause():void{			if (_mover){				_mover.stopTime();			}		}				public function resume():void{			if (_mover){							_mover.startTime();			}		}				public function stop():void{			if (_mover){				_mover.killTime();				_mover = null;			}		}				}}