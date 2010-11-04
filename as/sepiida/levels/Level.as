﻿package sepiida.levels {	import flash.display.MovieClip;	import flash.display.Sprite;	import flash.events.Event;	import flash.events.MouseEvent;	import sepiida.enemies.*;	import sepiida.players.Player;		public class Level extends Sprite {		public var intro:MovieClip;		public var player:Player;		public var difficulty:int = 30;				public function Level() {						intro.start.addEventListener(MouseEvent.CLICK,onIntroStartClick);			addEventListener(Event.ADDED,onAdded);		}		public function start():void {			player = new Player();			player.x = stage.stageWidth/2;			player.y = stage.stageHeight/2;			addChild(player);		}		private function onIntroStartClick(event:MouseEvent):void {			intro.visible = false;			start();		}		private function onAdded(event:Event):void {			addEventListener(Event.ENTER_FRAME,onEnterFrame);		}		private function onEnterFrame(event:Event):void {			if(!Math.floor(Math.random()*difficulty)) {				var enemy:Enemy;								switch(Math.floor(Math.random()*2)) {					case 0: enemy = new Sun(); break;					case 1: enemy = new Gas(); break;				}								addChild(enemy);			}		}	}}