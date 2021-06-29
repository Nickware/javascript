﻿package{	import flash.display.Sprite;	import com.physicscodes.objects.PolygonRB;	import com.physicscodes.objects.Wall;	import com.physicscodes.math.Vector2D;			public class RigidBodyCollisions extends Sprite{		public function RigidBodyCollisions():void{			init();		}		private function init():void{			// creating the objects			var objects:Array = new Array()			var vertices:Array = new Array();			var density:Number = 0.1;						var object1:PolygonRB;			vertices=[new Vector2D(-3,3),new Vector2D(3,3),new Vector2D(3,-3),new Vector2D(-3,-3)];			object1=new PolygonRB(vertices,new Vector2D(200,90));			object1.mass = 36*density;			object1.momentOfInertia = momInertia(object1.mass,6,6); 			object1.angDispl=45*Math.PI/180;			addChild(object1);			objects.push(object1);						var object2:PolygonRB;			vertices=[new Vector2D(-5,5),new Vector2D(5,5),new Vector2D(5,-5),new Vector2D(-5,-5)];			object2=new PolygonRB(vertices,new Vector2D(240,5));			object2.mass = 100*density;			object2.momentOfInertia = momInertia(object2.mass,10,10);						object2.angDispl=0;			addChild(object2);			objects.push(object2);									var object3:PolygonRB;			vertices=[new Vector2D(-10,10),new Vector2D(10,10),new Vector2D(10,-10),new Vector2D(-10,-10)];			object3=new PolygonRB(vertices,new Vector2D(320,40));			object3.mass = 400*density;			object3.momentOfInertia = momInertia(object3.mass,20,20); 						object3.angDispl=30*Math.PI/180;			addChild(object3);			objects.push(object3);						var object4:PolygonRB;			vertices=[new Vector2D(-7,3),new Vector2D(7,3),new Vector2D(7,-3),new Vector2D(-7,-3)];			object4=new PolygonRB(vertices,new Vector2D(380,40));			object4.mass = 84*density;			object4.momentOfInertia = momInertia(object4.mass,14,6); 						object4.angDispl=60*Math.PI/180;			addChild(object4);			objects.push(object4);						var object5:PolygonRB;			vertices=[new Vector2D(-5,5),new Vector2D(5,5),new Vector2D(5,-5),new Vector2D(-5,-5)];			object5=new PolygonRB(vertices,new Vector2D(210,40));			object5.mass = 100*density;			object5.momentOfInertia = momInertia(object5.mass,10,10); 						object5.angDispl=-70*Math.PI/180;			addChild(object5);			objects.push(object5);						var object6:PolygonRB;			vertices=[new Vector2D(-10,10),new Vector2D(10,10),new Vector2D(10,-10),new Vector2D(-10,-10)];			object6=new PolygonRB(vertices,new Vector2D(150,40));			object6.mass = 400*density;			object6.momentOfInertia = momInertia(object6.mass,20,20); 						object6.angDispl=-30*Math.PI/180;			addChild(object6);			objects.push(object6);						var object7:PolygonRB;			vertices=[new Vector2D(-10,10),new Vector2D(10,10),new Vector2D(10,-10),new Vector2D(-10,-10)];			object7=new PolygonRB(vertices,new Vector2D(190,70));			object7.mass = 400*density;			object7.momentOfInertia = momInertia(object7.mass,20,20); 						object7.angDispl=-130*Math.PI/180;			addChild(object7);			objects.push(object7);						var object8:PolygonRB;			vertices=[new Vector2D(-10,10),new Vector2D(10,10),new Vector2D(10,-10),new Vector2D(-10,-10)];			object8=new PolygonRB(vertices,new Vector2D(230,70));			object8.mass = 400*density;			object8.momentOfInertia = momInertia(object8.mass,20,20); 						object8.angDispl=-130*Math.PI/180;			addChild(object8);			objects.push(object8);						var object9:PolygonRB;			vertices=[new Vector2D(-20,10),new Vector2D(20,10),new Vector2D(20,-10),new Vector2D(-20,-10)];			object9=new PolygonRB(vertices,new Vector2D(300,70));			object9.mass = 800*density;			object9.momentOfInertia = momInertia(object9.mass,20,40); 						object9.angDispl=-130*Math.PI/180;			addChild(object9);			objects.push(object9);						var object10:PolygonRB;			vertices=[new Vector2D(-10,10),new Vector2D(10,10),new Vector2D(10,-10),new Vector2D(-10,-10)];			object10=new PolygonRB(vertices,new Vector2D(200,100));			object10.mass = 400*density;			object10.momentOfInertia = momInertia(object10.mass,20,20); 						object10.angDispl=-10*Math.PI/180;			addChild(object10);			objects.push(object10);			    // create the floor as a Wall object			var wall:Wall;			wall=new Wall(new Vector2D(0,350),new Vector2D(550,350));			addChild(wall);						// get things moving			var mover:RigidBodyCollider=new RigidBodyCollider(objects, wall);			mover.startTime();		}				private function momInertia(pmass:Number,pwidth:Number,pheight:Number):Number{			return pmass*(pwidth*pwidth+pheight*pheight)/12;		}	}}