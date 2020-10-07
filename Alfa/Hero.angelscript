class Hero : Creature
{
	Hero(string character, vector3 pos,int st, int dx, int iq,
	int ht, int xSt, int xDx, int xIq, int xHt, int xMaxHP, int Lvl,
	int EXP, int MaxEXP)
	{
	super(character, pos, st, dx, iq,
	ht, xSt, xDx, xIq, xHt, xMaxHP);
	_Creature.SetInt("LvL", Lvl);
	_Creature.SetInt("CurrentEXP", EXP);
	_Creature.SetInt("MaxEXP", MaxEXP);
	}
	
	void lvlUP()
	{
	if(_Creature.GetInt("CurrentEXP") > _Creature.GetInt("MaxEXP"))
		{
		_Creature.SetInt("LvL", _Creature.GetInt("LvL") +1);
		_Creature.SetInt("MaxEXP", _Creature.GetInt("MaxEXP") * 2);
		}
	}
}