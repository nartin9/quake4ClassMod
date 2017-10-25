effect effects/weapons/railgun/impact_electronics
{
	size	270

	sound "sound"
	{
		soundShader	"weapon_railgun_impact"
	}
	decal "wall mark"
	{

		decal
		{
			duration	0.002,0.002
			material	"gfx/effects/decals/railgun_decal"

			start
			{
				size { point 12,12 }
				rotate { box 0,1 }
			}
		}
	}
	emitter "delayed_smoke"
	{
		detail		0.5
		start		1.1,1.1
		duration	1.5,1.5
		count		12,17

		sprite
		{
			duration	1.5,1.5
			material	"gfx/effects/smoke/cloud_alpha3"
			gravity		-0.05,-0.05

			start
			{
				velocity { box 5,-2,-2,10,2,2 }
				size { line 1,1,2,2 }
				tint { point 0.67451,0.639216,0.556863 }
				rotate { box 0,0.111111 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 12,12,15,15 }
				tint { point 0.356863,0.34902,0.266667 }
				rotate { box 0.111111,0.222222 relative }
			}
		}
	}
	spawner "embers"
	{
		detail		0.5
		count		40,50

		sprite
		{
			duration	0.5,1
			material	"gfx/effects/energy_sparks/spark_blue"
			gravity		0.5,0.75
			generatedOriginNormal

			start
			{
				position { sphere 1,-10,-10,1,10,10 }
				velocity { box 250,-200,-200,200,200,200 }
				size { point 3,3 }
				tint { point 0.584314,1,0.615686 }
				rotate { box 0.251,-0.25 }
			}

			motion
			{
				size { envelope "random" }
				tint { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { point 5,5 }
			}
		}
	}
	spawner "side_impact_streaks"
	{
		count		7,9
		locked

		line
		{
			duration	0.1,0.1
			blend	add
			material	"gfx/effects/weapons/blaster_impact3"
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder -0.2,-0.3,-0.3,-0.2,0.3,0.3 surface }
				size { box 6,8 }
				length { box 15,0,0,25,0,0 }
			}

			motion
			{
				fade { envelope "linear" }
			}
		}
	}
	spawner "sparks_lines"
	{
		count		7,9
		locked

		line
		{
			duration	0.2,0.2
			blend	add
			generatedLine
			material	"gfx/effects/energy_sparks/spark_line"
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder -0.1,-0.1,-0.1,-0.1,0.1,0.1 surface }
				velocity { box 50,0,0,300,0,0 }
				size { box 3,5 }
				tint { point 0.658824,0.921569,0.627451 }
				length { box 15,0,0,20,0,0 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
			}

			end
			{
				size { point 0 }
				tint { point 0.247059,0.627451,0.294118 }
			}
		}
	}
	emitter "heat_mark"
	{
		detail		0.5
		duration	1,1
		count		1,1

		oriented
		{
			duration	0.25,0.25
			blend	add
			material	"gfx/effects/energy_sparks/launch_flash3"

			start
			{
				position { point 0.1,0,0 }
				tint { line 0.501961,1,0.501961,0.74902,1,0.858824 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { point 35,35 }
			}
		}
	}
	spawner "electricity"
	{
		start		0.2,0.2
		count		5,5

		electricity
		{
			duration	0.15,0.75
			blend	add
			fork	0
			jitterRate	0
			jitterSize	3,7,7
			jitterTable	"halfsintable"
			material	"gfx/effects/electricity/electricity"
			generatedNormal

			start
			{
				position { cylinder 0,-0.1,-0.1,0,0.1,0.1 }
				size { box 0.3,0.8 }
				length { box 2,0,0,8,0,0 }
			}

			motion
			{
				fade { envelope "linear_flicker" }
			}
		}
	}
	effect effects/fire/spot_16
{
	size	213

	emitter "smoke"
	{
		duration	2,2
		count		6,6

		sprite
		{
			duration	3,3.5
			material	"gfx/effects/smoke/cloud_alpha3"
			gravity		-0.015,-0.015

			start
			{
				position { line 0,0,0,15,0,0 }
				velocity { box -5,-5,-5,5,5,5 }
				size { line 8,8,16,16 }
				tint { line 0.513726,0.470588,0.321569,0.47451,0.45098,0.356863 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "cosine" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 16,16,32,32 }
				fade { point 0.5 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	emitter "fire2"
	{
		duration	2,2
		count		4,4

		sprite
		{
			duration	0.75,1.25
			blend	add
			material	"gfx/effects/fire/fire2a"
			gravity		-0.05,-0.05

			start
			{
				position { cylinder 0,-5,-5,0,5,5 }
				angle { box 0,0,0,1,1,1 }
				size { box 5,5,10,10 }
				fade { point 0 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "cosine" }
				angle { envelope "linear" }
			}

			end
			{
				size { box 6,10,8,20 }
				fade { point 0.5 }
				angle { box -1,-1,-1,1,1,1 relative }
			}
		}
	}
	
}







