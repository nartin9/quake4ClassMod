effect effects/weapons/napalmgun/globburn
{
	size	509

	sound "sound"
	{
		soundShader "weapon_napalmgun_napalm_burn"
	}
	emitter "smoke"
	{
		duration	6,6
		count		2,2

		sprite
		{
			duration	2,2.5
			material	"gfx/effects/smoke/cloud_alpha"
			gravity		-0.03,-0.01

			start
			{
				position { cylinder 0,-12,-12,30,12,12 }
				velocity { box -5,-5,-5,5,5,5 }
				size { line 20,20,40,40 }
				tint { point 0.752941,0.752941,0.752941 }
				fade { point 0 }
				rotate { box -0.111111,0 }
			}

			motion
			{
				tint { envelope "linear" }
				fade { envelope "cosine" }
				rotate { envelope "linear" }
			}

			end
			{
				fade { point 0.5 }
				rotate { box -0.222222,-0.111111 relative }
			}
		}
	}
	sound "unnamed6"
	{
		soundShader	"effects_fire_small"
	}
	emitter "Flames2"
	{
		duration	6,6
		count		8,12

		sprite
		{
			duration	0.3,0.7
			blend	add
			persist
			material	"gfx/effects/fire/fire01"
			gravity		-0.15,-0.05

			start
			{
				position { line -6,-6,0,6,6,0 }
				size { line 11,11,17,17 }    // was 22,22,34,34 BRC
				tint { point 0.568627,0.568627,0.568627 }
				rotate { box 0.375,0.402778 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "calredtable" }
			}

			end
			{
				size { line 5,5,8,8 }  // was 10,10,16,16 BRC
			}
		}
	}
	light "light"
	{
		locked

		light
		{
			duration	1,26  // was 6,6 BRC
			blend	add
			specular
			material	"lights/defaultPointLight"

			start
			{
				position { point 0,1,0 }
				size { point 350,350,503 }  //was 50,50,503 BRC
				tint { point 0.921569,0.545098,0.321569 }
				fade { point 0.1 }
			}

			motion
			{
				size { envelope "exp_x2" count 1.5,1.5,1.5 offset -0.49,-0.49,-0.49 }
				tint { envelope "linear" count 0.1,0.1,0.1 offset 0.1,0.1,0.1 }
			}

			end
			{
				size { point 335,335,335 }
			}
		}
	}
}

