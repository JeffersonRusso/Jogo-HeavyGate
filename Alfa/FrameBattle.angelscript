#include "Creature.angelscript"
class FrameBattle
{
Timer@ m_timer;
private bool stopMove;
private bool StartTime;
private bool IsInitialPos = false;
private bool controlAtkP;
bool lastTurn;

void Start()
	{
		@m_timer = Timer();
	}
void FlowAtkPhysic(ETHEntity @mover, ETHEntity @screenPoint, float _speed, int damage , Creature@ target)
	{
	vector2 moveDirection(0, 0);

	float speed = UnitsPerSecond(_speed);
	const uint stride = 100;

	if(stopMove){
	moveDirection = normalize(getKeyboardDirections() + getPointDirections(mover , screenPoint, damage, target));
	moveDirection *= speed;
	}
	
	
	if (moveDirection.x != 0 or moveDirection.y != 0)
	{
		mover.SetVector2("lastDirection", moveDirection);
	}

	// Animação andando.
	if (moveDirection != vector2(0, 0))
		mover.SetFrame(charaTimer.Set(0,3,stride), findDirectionRowIndex(getAngle(moveDirection)));	
		
	if(moveDirection == vector2 (0, 0))
		mover.SetFrame(charaTimer.Set(0,3,stride), findDirectionRowIndex(getAngle(moveDirection)));

	// movimentação do character
	mover.AddToPositionXY(moveDirection);

	// cast a weak light around the character
	AddLight(mover.GetPosition() + vector3(0, 0, 32), vector3(0.26f,0.2f,0.26f), 100.0f, true);
	
	if(StartTime)
	{
	m_timer.update();
	m_timer.setElapsedTime();
	}
	
	if(m_timer.getElapsedTime() > 1000 && !controlAtkP)
	
	
	if(m_timer.getElapsedTime() > 3000)
	{
	stopMove = true;
	StartTime = false;
	IsInitialPos = true;
	controlAtkP == true;
	}
}
void FlowMagic(ETHEntity @mover, ETHEntity @screenPoint, float _speed, string effect, int damage, Creature@ target)
	{
	vector2 moveDirection(0, 0);

	float speed = UnitsPerSecond(_speed);
	const uint stride = 100;
	
	if(stopMove){
	moveDirection = normalize(getKeyboardDirections() + getSpellDirections(mover , screenPoint, effect, damage , target));
	moveDirection *= speed;
	
	}
	
	if (moveDirection.x != 0 or moveDirection.y != 0)
	{
		mover.SetVector2("lastDirection", moveDirection);
	}
	
	// movimentação do character
	mover.AddToPositionXY(moveDirection);

	if(StartTime)
	m_timer.update();
	
	if(m_timer.getElapsedTime() > 1000)
	{
	stopMove = true;
	StartTime = false;
	IsInitialPos = true;
	}
}

//Movimenta o Character até o ponto da tela(set).
vector2 getPointDirections(ETHEntity@ mover, ETHEntity@ screenPoint, int damage, Creature@ target)
{			
			// find the direction from the character to the touch position
			vector2 initialPos;
			vector2 zeroReturn;
			const vector2 charScreenPos = mover.GetPositionXY() - GetCameraPos();
			const vector2 pointScreenPos = screenPoint.GetPositionXY() - GetCameraPos();
			vector2 positionPoint(vector2(pointScreenPos.x - 65, pointScreenPos.y));
			
			if(IsInitialPos){
			initialPos = charScreenPos;
			IsInitialPos = false;
			}
			
			if(initialPos == charScreenPos)
			{
			 
			}
			
			if(charScreenPos == pointScreenPos) {
			target.Attack(damage);
			stopMove == false;
			StartTime == true;
			}
			
			if(controlAtkP)
			return (initialPos - charScreenPos);
			if(!controlAtkP)
			return (positionPoint - charScreenPos);
			return vector2(0,0);
}
vector2 getSpellDirections(ETHEntity@ spell, ETHEntity@ screenPoint, string EffectSpell, int damage, Creature@ target)
{			
			// find the direction from the character to the touch position
			vector2 zeroReturn;
			const vector2 spellScreenPos = spell.GetPositionXY() - GetCameraPos();
			const vector2 pointScreenPos = screenPoint.GetPositionXY() - GetCameraPos();
			vector2 positionPoint(vector2(pointScreenPos.x , pointScreenPos.y));
			
			if(spellScreenPos == pointScreenPos) {
			vector3 spellPos = spell.GetPosition();
			DeleteEntity(spell);
			ETHEntity@ Effect;
			AddEntity(EffectSpell, spellPos, @Effect);
			target.Attack(damage);
			}
			
			return (positionPoint - pointScreenPos);
}
	uint findDirectionRowIndex(const float radianAngle)
	{
		const float LOWER_RIGHT_DIRECTION = PI / 4.0f;
		const float UPPER_RIGHT_DIRECTION = (PI / 2.0f) + (PI / 4.0);
		const float UPPER_LEFT_DIRECTION = PI + (PI / 4.0f);
		const float LOWER_LEAFT_DIRECTION = PI + (PI / 4.0f) + (PI / 2.0f);
		
		if(radianAngle >= LOWER_RIGHT_DIRECTION && radianAngle < UPPER_RIGHT_DIRECTION)
			return 2;
		else if(radianAngle >= UPPER_RIGHT_DIRECTION && radianAngle < UPPER_LEFT_DIRECTION)
			return 3;
		else if(radianAngle >= UPPER_LEFT_DIRECTION && radianAngle < LOWER_LEAFT_DIRECTION)
			return 1;
		else
			return 0;
	}
}