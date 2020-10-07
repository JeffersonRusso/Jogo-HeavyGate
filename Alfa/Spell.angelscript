#include "FrameBattle.angelScript"

class Spell : Button
{
	int value;
	ETHEntity@ Spell;
	int costHP;
	
	Spell(const string _spriteName, const vector2 &in _pos, int value, int costHP)
	{
	super(_spriteName, _pos);
	this.value = value;
	this.costHP = costHP;
	}
	
	void level(int valueLV1, int valueLV2, int valueLV3, int valueLV4, int valueLV5)
	{
		
		switch(Spell.GetInt("level")) {
		case 1:
		value = valueLV1;
		break;
		case 2:
		value = valueLV2;
		break;
		case 3:
		value = valueLV3;
		break;
		case 4:
		value = valueLV4;
		break;
		case 5:
		value = valueLV5;
		break;
		}
	}
	int getvalue()
	{
		return value;
	}
	void setLevel()
	{
	Spell.SetInt("level", 0);
	}
		
	void update() override
	{
		
		ETHInput@ input = GetInputHandle();

		
		const uint touchCount = input.GetMaxTouchCount();
		for (uint t = 0; t < touchCount; t++)
		{
			if (input.GetTouchState(t) == KS_HIT)
			{
				if (isPointInButton(input.GetTouchPos(t)))
				{
					m_isPressed = true;
				}
			}
		}
		
	}
	void costHpChar(ETHEntity@ CostHP)
	{
		CostHP.SetInt("CurrentHP", CostHP.GetInt("CurrentHP"));
	}
}