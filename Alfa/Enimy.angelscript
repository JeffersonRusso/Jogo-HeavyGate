class Enimy : Creature
{
	int enimyEXP;
	Enimy(string character, vector3 pos,int st, int dx, int iq,
	int ht, int xSt, int xDx, int xIq, int xHt, int xMaxHP, int enimyEXP)
	{
	super(character, pos, st, dx, iq,
	ht, xSt, xDx, xIq, xHt, xMaxHP);
	this.enimyEXP = enimyEXP;
	}
}