package gs.easing;

class Linear implements haxe.Public
{
	static function easeNone ( t : Float, b : Float, c : Float, d : Float ) : Float
	{
		return c * t / d + b;
	}
	
	static function easeIn ( t : Float, b : Float, c : Float, d : Float ) : Float
	{
		return c * t / d + b;
	}
	
	static function easeOut ( t : Float, b : Float, c : Float, d : Float ) : Float
	{
		return c * t / d + b;
	}
	
	static function easeInOut ( t : Float, b : Float, c : Float, d : Float ) : Float
	{
		return c * t / d + b;
	}
}
