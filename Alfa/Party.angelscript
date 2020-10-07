class Creature
{	
	int st;
	int dx;
	int iq;
	int ht;
	
	int def;
	
	int currentHP = 0;
	int maxHP;
	
	int exp;
	int level = 0;
	
	
	ETHEntity @_Creature;
	
	Creature(string character, vector3 pos,int st, int dx, int iq,
	int ht, int xSt, int xDx, int xIq, int xHt, int xMaxHP)
	{
	AddEntity(character, pos, @_Creature);
	_Creature.SetInt("st", this.st += st * xSt * level );
	_Creature.SetInt("dx", this.dx += dx * xDx * level );
	_Creature.SetInt("iq", this.iq += iq * xIq * level );
	_Creature.SetInt("ht", this.ht += ht * xHt * level );
	
	def = ht * 0.5;
	
	_Creature.SetInt("MaxHP", this.maxHP = xMaxHP * (ht * 10));
	}
	void Attack(int damage)
	{
		_Creature.SetInt("CurrentHP", currentHP - (damage - def * 0.70));
	}
	
	ETHEntity @ GetHandle() // Retorna a Referencia da criatura
	{
		return @_Creature;
	}
	void controlHP()
	{
	 if(_Creature.GetInt("CurrentHP") > _Creature.GetInt("MaxHP"))
		_Creature.SetInt("CurrentHP", _Creature.GetInt("MaxHP"));
	}
}