class ItemBase

{
	string sprite;
	string nameItem;
	int st;
	int dx;
	int iq;
	int ht;
	int hp;
	int def;
	int atk;
	
	ItemBase(string sprite, string nameItem, int st, int dx, int iq, int ht, int hp, int def, int atk)
	{
		this.sprite = sprite;
		this.nameItem = nameItem;
		this.st = st;
		this.dx = dx;
		this.iq = iq;
		this.ht = ht;
		this.hp = hp;
		this.def = def;
		this.atk = atk;
	}
	
	string getSprite()
	{
		return sprite;
	}
	string getNameItem()
	{
		return nameItem;
	}
	int getSt()
	{
		return st;
	}
	int getDx()
	{
		return dx;
	}
	int getIq()
	{
		return iq;
	}
	int getHt()
	{
		return ht;
	}
	int getHp()
	{
		return hp;
	}
	int getDef()
	{
		return def;
	}
	int getAtk()
	{
		return atk;
	}
}