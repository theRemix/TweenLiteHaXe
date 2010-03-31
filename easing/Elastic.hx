package gs.easing;

class Elastic implements haxe.Public
{
	//static function easeIn ( t : Float, b : Float, c : Float, d : Float, a : Null<Float>, p : Null<Float> ) : Float
	static function easeIn ( t : Float, b : Float, c : Float, d : Float ) : Float
	{
		if ( t == 0 )
			return b;
		if ( ( t /= d ) == 1 )
			return b + c;
		//if ( p == null )
			var p = d * .3;
		var s;
		//if ( a == null  || a < Math.abs( c ) )
		//{
			var a = c;
			s = p / 4;
		/*}
		else
			s = p / ( 2 * Math.PI ) * Math.asin ( c / a );*/
		return -( a * Math.pow( 2, 10 * ( t -= 1 ) ) * Math.sin( ( t * d - s ) * ( 2 * Math.PI ) / p ) ) + b;
	}
	
	//static function easeOut ( t : Float, b : Float, c : Float, d : Float, a : Null<Float>, p : Null<Float> ) : Float
	static function easeOut ( t : Float, b : Float, c : Float, d : Float ) : Float
	{
		if ( t == 0 )
			return b;
		if ( ( t /= d ) == 1 )
			return b + c;
		//if ( p == null )
			var p = d * .3;
		var s;
		//if ( a == null || a < Math.abs( c ) )
		//{	
			var a = c;
			s = p / 4;
		/*}
		else
			s = p / ( 2 * Math.PI ) * Math.asin ( c / a );*/
		return ( a * Math.pow( 2, -10 * t ) * Math.sin( ( t * d - s ) * ( 2 * Math.PI ) / p ) + c + b );
	}
	
	//static function easeInOut ( t : Float, b : Float, c : Float, d : Float, a : Null<Float>, p : Null<Float> ) : Float
	static function easeInOut ( t : Float, b : Float, c : Float, d : Float ) : Float
	{
		if ( t == 0 )
			return b;
		if ( ( t /= d / 2 ) == 2 )
			return b + c;
		var s;
		//if ( p == null )
			var p = d * ( .3 * 1.5 );
		//if ( a == null || a < Math.abs( c ) )
		//{
			var a = c;
			s =p / 4;
		/*}
		else
			s = p / ( 2 * Math.PI ) * Math.asin ( c / a );*/
		if ( t < 1 )
			return -.5 * ( a * Math.pow( 2, 10 * ( t -= 1 ) ) * Math.sin( ( t * d - s ) * ( 2 * Math.PI ) / p ) ) + b;
		return a * Math.pow( 2, -10 * ( t -= 1 ) ) * Math.sin( ( t * d - s ) * ( 2 * Math.PI ) / p ) * .5 + c + b;
	}
}
