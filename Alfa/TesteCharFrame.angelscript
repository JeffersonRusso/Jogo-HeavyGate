#include "eth_util.angelscript"
#include "Collide.angelscript"
#include "SpellDamage.angelscript"


frameTimer charaTimer;
void ETHCallback_witch1(ETHEntity @character)
{
	ETHInput @input = GetInputHandle();
	vector2 moveDirection(0, 0);

	const float speed = UnitsPerSecond(100.0f);
	const uint stride = 100;

	moveDirection = normalize(getKeyboardDirections() + getTouchDirections(character));
	moveDirection *= speed;

		if (moveDirection.x != 0 or moveDirection.y != 0)
	{
		character.SetVector2("lastDirection", moveDirection);
	}

	// find the sprite frame row for walking animation
	
		character.SetFrame(charaTimer.Set(0,3,stride), findDirectionRowIndex(getAngle(moveDirection)));	

	// move the character
	character.AddToPositionXY(moveDirection);

	if(moveDirection.x != 0)
	{
	print(moveDirection.x *-1);
	print(moveDirection.x+"Y");
	}
		
	// if it collides, stop it.
	if (CollideStatic(character))
	{
		character.AddToPositionXY(moveDirection *-1);
	}

	// Centralizes the character
	SetCameraPos(character.GetPositionXY() - (GetScreenSize() / 2.0f));

	// cast a weak light around the character
	AddLight(character.GetPosition() + vector3(0, 0, 32), vector3(0.26f,0.2f,0.26f), 100.0f, true);
}


// Compute character movement direction from the keyboard
vector2 getKeyboardDirections()
{
	ETHInput @input = GetInputHandle();
	vector2 dir(0, 0);

	if (input.KeyDown(K_LEFT))
		dir.x +=-1;

	if (input.KeyDown(K_RIGHT))
		dir.x += 1;

	if (input.KeyDown(K_UP))
		dir.y +=-1;

	if (input.KeyDown(K_DOWN))
		dir.y += 1;

	return dir;
}


// Compute character movement direction from the touch screen
vector2 getTouchDirections(ETHEntity@ character)
{
	ETHInput @input = GetInputHandle();
	
	for (uint t = 0; t < input.GetMaxTouchCount(); t++)
	{
		const KEY_STATE state = input.GetTouchState(t);
		if (state == KS_DOWN || state == KS_HIT)
		{
			// find the direction from the character to the touch position
			const vector2 charScreenPos = character.GetPositionXY() - GetCameraPos();
			return (input.GetTouchPos(t) - charScreenPos);
		}
	}
	// no touch, no move.
	return vector2(0, 0);
}

// Find the sprite frame row for walking animation based on the direction angle
const float LOWER_RIGHT_DIRECTION =  PI / 4.0f;
const float UPPER_RIGHT_DIRECTION =  (PI / 2.0f) + (PI / 4.0f);
const float UPPER_LEFT_DIRECTION  =  PI + (PI / 4.0f);
const float LOWER_LEFT_DIRECTION  =  PI + (PI / 4.0f) + (PI / 2.0f);
uint findDirectionRowIndex(const float radianAngle)
{
	if (radianAngle >= LOWER_RIGHT_DIRECTION && radianAngle < UPPER_RIGHT_DIRECTION)
		return 2;
	else if (radianAngle >= UPPER_RIGHT_DIRECTION && radianAngle < UPPER_LEFT_DIRECTION)
		return 3;
	else if (radianAngle >= UPPER_LEFT_DIRECTION && radianAngle < LOWER_LEFT_DIRECTION)
		return 1;
	else
		return 0;
}