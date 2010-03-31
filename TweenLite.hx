package gs;

extern class TweenLite {
	var active(default,null) : Bool;
	var colorProxy : Float;
	var delay : Float;
	var duration : Float;
	var endTarget : Dynamic;
	var extraTweens : Dynamic;
	var initTime : UInt;
	var startTime : UInt;
	var target : Dynamic;
	var tweens : Dynamic;
	var vars : Dynamic;
	var volumeProxy : Float;
	function new(_target : Dynamic, _duration : Float, _vars : Dynamic) : Void;
	function complete(?_skipRender : Bool) : Void;
	function initTweenVals() : Void;
	function render(_t : UInt) : Void;
	private var _active : Bool;
	private var _color : flash.geom.ColorTransform;
	private var _endColor : flash.geom.ColorTransform;
	private var _endTarget : Dynamic;
	private function easeProxy(_t : Float, _b : Float, _c : Float, _d : Float) : Float;
	static var killDelayedCallsTo : Dynamic;
	static var version : Float;
	static function delayedCall(_delay : Float, _onComplete : Dynamic, ?_onCompleteParams : Array<Dynamic>) : TweenLite;
	static function executeAll(_e : flash.events.Event) : Void;
	static function from(_target : Dynamic, _duration : Float, _vars : Dynamic) : TweenLite;
	static function killGarbage(_e : flash.events.TimerEvent) : Void;
	static function killTweensOf(?_tg : Dynamic, ?_complete : Bool) : Void;
	static function removeTween(?_t : TweenLite) : Void;
	static function to(_target : Dynamic, _duration : Float, _vars : Dynamic) : TweenLite;
}
