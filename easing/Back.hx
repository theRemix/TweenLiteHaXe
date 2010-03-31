package gs.easing;

class Back implements haxe.Public
{
	//static function easeIn ( t : Float, b : Float, c : Float, d : Float, ?s : Null<Float> ) : Float
	static function easeIn ( t : Float, b : Float, c : Float, d : Float ) : Float
	{
		//if ( s == null )
			var s = 1.70158;
		return c * ( t /= d ) * t * ( ( s + 1 ) * t - s ) + b;
	}
	
	//static function easeOut ( t : Float, b : Float, c : Float, d : Float, ?s : Null<Float> ) : Float
	static function easeOut ( t : Float, b : Float, c : Float, d : Float ) : Float
	{
		//if ( s == null )
			var s = 1.70158;
		return c * ( ( t = t / d - 1 ) * t * ( ( s + 1 ) * t + s) + 1 ) + b;
	}
	
	//static function easeInOut ( t : Float, b : Float, c : Float, d : Float, ?s : Null<Float> ) : Float
	static function easeInOut ( t : Float, b : Float, c : Float, d : Float ) : Float
	{
		//if ( s == null )
			var s = 1.70158; 
		if ( ( t /= d / 2 ) < 1 )
			return c / 2 * ( t * t * ( ( ( s *= ( 1.525 ) ) + 1 ) * t - s ) ) + b;
		return c / 2 * ( ( t -= 2 ) * t * ( ( ( s *= ( 1.525 ) ) + 1 ) * t + s ) + 2 ) + b;
	}
}
