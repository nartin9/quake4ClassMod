effect effects/weapons/rocketlauncher/fly
{
	size	347

	emitter "trail4"
	{
		duration	1,1
		count		35,35

		sprite
		{
			duration	1,4  // was 1,1 BRC
			persist
			material	"gfx/effects/smoke/cloud_alpha2"

			start
			{
				position { line 0,-2,-2,0,2,2 }
				size { line 25,25,30,30 }
				tint { line 0.690196,0.733333,0.8,0.752941,0.752941,0.752941 }  // was                                                                          fade { point 0.35 }   // 0.678431,0.654902,0.603922,0.533333,0.533333,0.482353 BRC
				offset { point -5,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 55,55,65,65 }
				rotate { box -0.25,0.25 relative }
			}
		}
	}
	emitter "flamecore"         // begin new line BRC
	{
		duration	1,1
		count		8,8
		locked

		line
		{
			duration	0.25,0.25
			material	"gfx/effects/smoke/steam_source"
			generatedNormal

			start
			{
				tint { point 0.501961,0.862745,1 }
				length { point 55,25,55 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				length { envelope "linear" }
			}

			end
			{
				size { point 22 }
				length { point 55,100,55 }
			}
		}
	}
	emitter "smoke"
	{
		duration	1,1
		count		8,8

		sprite
		{
			duration	1,1.25
			material	"gfx/effects/smoke/cloud_alpha"
			gravity		-0.01,0.01
			generatedOriginNormal

			start
			{
				position { point 40,0,0 }
				velocity { box 60,-15,-15,120,15,15 }
				size { box 15,15,30,30 }
				tint { point 0.815686,0.803922,0.74902 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 60,60,90,90 }
				fade { point 0.2 }
				rotate { box -0.111111,0.111111 relative }
			}
		}
	}
	emitter "fire"
	{
		duration	1,1
		count		15,15

		sprite
		{
			duration	0.25,0.5
			blend	add
			material	"gfx/effects/fire/fire4a"
			gravity		-0.02,0

			start
			{
				position { line 10,-1,-1,10,1,1 }
				velocity { box 100,-20,-20,250,20,20 }
				size { box 5,5,10,10 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 20,20,40,40 }
				fade { point 1 }
				rotate { box -0.388889,0.388889 relative }
			}
		}
	}
	emitter "fire2"
	{
		duration	1,1
		count		15,15

		sprite
		{
			duration	0.25,0.5
			blend	add
			material	"gfx/effects/fire/fire1a"
			gravity		-0.02,0

			start
			{
				position { line 15,-1,-1,15,1,1 }
				velocity { box 100,-10,-10,250,10,10 }
				size { box 5,5,10,10 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 45,45,60,60 }
				fade { point 1 }
				rotate { box -0.388889,0.388889 relative }
			}
		}
	}
	emitter "fire3"
	{
		duration	1,1
		count		15,15

		sprite
		{
			duration	0.25,0.5
			blend	add
			material	"gfx/effects/fire/fire3a"
			gravity		-0.02,0

			start
			{
				position { line 6,-1,-1,6,1,1 }
				velocity { box 100,-10,-10,250,10,10 }
				size { box 5,5,10,10 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 30,30,50,50 }
				fade { point 1 }
				rotate { box -0.388889,0.388889 relative }
			}
		}
	}
	emitter "blue_fire"
	{
		duration	1,1
		count		25,25

		sprite
		{
			duration	0.3,0.4
			blend	add
			material	"gfx/effects/fire/fire2b"
			gravity		-0.02,0

			start
			{
				position { line 0,-1,-1,0,1,1 }
				velocity { box 100,-10,-10,250,10,10 }
				size { box 2,2,4,4 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fast_in_slow_out" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 25,25,50,50 }
				fade { point 1 }
				rotate { box -0.388889,0.388889 relative }
			}
		}
	}
	emitter "blue_fire2"
	{
		detail		0.7
		duration	1,1
		count		25,25

		sprite
		{
			duration	0.25,0.35
			blend	add
			material	"gfx/effects/fire/fire5b"
			gravity		-0.02,0

			start
			{
				position { line 0,-1,-1,0,1,1 }
				velocity { box 100,-30,-30,250,30,30 }
				size { box 1,1,2,2 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fast_in_slow_out" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 15,15,30,30 }
				fade { point 1 }
				rotate { box -0.388889,0.388889 relative }
			}
		}
	}
	sound "unnamed8"
	{
		soundShader	"effects_fire_gas"
	}
	emitter "heathaze"
	{
		detail		0.4
		duration	1,1
		count		2,2

		sprite
		{
			duration	3,3
			blend	add
			material	"gfx/effects/energy_sparks/warp_mask"

			start
			{
				velocity { box 80,0,0,100,0,0 }
				size { point 100,100 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { point 0,0 }
				tint { point 0.501961,0.501961,1 }      // end new line BRC
			}
		}
	} 
	emitter "firetrail4"
	{
		detail		0.5
		duration	1,1
		count		80,80

		sprite
		{
			duration	0.1,0.1
			persist
			material	"gfx/effects/fire/fire4a"

			start
			{
				position { line 0,-2,-2,0,2,2 }
				size { line 13,13,15,15 }
				tint { point 0.686275,0.556863,0.494118 }
				offset { point -5,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				tint { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -0.25,0.25 relative }
			}
		}
	}
	spawner "line4"
	{
		detail		0.5
		count		1,1
		locked
		constant

		line
		{
			duration	5,5
			material	"gfx/effects/fire/fireline1"

			start
			{
				position { point -2,0,0 }
				size { point 6 }
				tint { point 0.74902,0.74902,0.74902 }
				length { point -30,0,0 }
			}

			motion
			{
				tint { envelope "random" }
			}
		}
	}
	emitter "line_inner4"
	{
		duration	1,1
		count		15,15
		locked

		line
		{
			duration	0.1,0.1
			material	"gfx/effects/fire/fireline1"

			start
			{
				position { point -2,0,0 }
				size { point 3 }
				length { box -30,0,0,-20,0,0 }
			}
		}
	}
	emitter "side_streaks4"
	{
		duration	1,1
		count		100,100
		locked

		line
		{
			duration	0.3,0.3
			blend	add
			material	"gfx/effects/weapons/flash_half"
			generatedOriginNormal

			start
			{
				position { cylinder -0.1,-0.1,-0.1,-0.1,0.1,0.1 surface }
				size { box 6,7 }
				tint { point 1,0.501961,0.501961 }
				fade { point 0 }
				offset { point -3,0,0 }
				length { box 4,0,0,8,0,0 }
			}

			motion
			{
				fade { envelope "fast_in_slow_out" }
				length { envelope "linear" }
			}

			end
			{
				fade { point 0.75 }
				length { box 40,0,0,45,0,0 }
			}
		}
	}
	spawner "flash4"
	{
		count		1,1
		locked
		constant

		sprite
		{
			duration	1,1
			material	"gfx/effects/weapons/flash"

			start
			{
				position { point -4,0,0 }
				size { line 10,10,12,12 }
				tint { point 1,0.501961,0.501961 }
			}
		}
	}
	emitter "sparks_lines4"
	{
		detail		0.5
		duration	1,1
		count		50,50

		line
		{
			duration	0.2,0.2
			blend	add
			generatedLine
			material	"gfx/effects/energy_sparks/spark_line2"
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder 0.1,-0.1,-0.1,0.1,0.1,0.1 }
				velocity { box 50,0,0,200,0,0 }
				size { box 0.5,1 }
				tint { line 1,0.984314,0.831373,1,0.701961,0.364706 }
				length { box 2,0,0,4,0,0 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { point 0 }
			}
		}
	}
	sound "unnamed10"
	{
		soundShader	"effects_rocket_loop"
		volume	0.7,0.7
	}
	sound "unnamed11"
	{
		soundShader	"player_rocketlauncher_fly"
	}
	light "light"
	{
		detail		0.5
		locked
		constant

		light
		{
			duration	1,1
			material	"lights/fire2"

			start
			{
				size { point 200,200,200 }
				tint { point 0.905882,0.517647,0.160784 }
			}
		}
	}
}

















