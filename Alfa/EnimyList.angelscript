class EnimyList
{
	string SceneName;
	string EntityName;
	int st;
	int dx;
	int iq;
	int ht;
	int xSt;
	int xDx; 
	int xIq;
	int xHt;
	int xMaxHP;
	int enimyEXP;
	
	EnimyList()
	{
	
	}
	void List(int rd1, int rd2)
	{
		
		int rd = rand(rd1,rd2);
		switch(rd) {
		case 1:
			EntityName = "ahri.ent"; st = 10; dx = 10; iq = 10; ht = 10;
			xSt = 2; xDx = 2; xIq = 2; xHt = 2; xMaxHP = 200;
			enimyEXP = 100;
			break;

		case 2:
			EntityName = "ahri.ent"; st = 10; dx = 10; iq = 10; ht = 10;
			xSt = 2; xDx = 2; xIq = 2; xHt = 2; xMaxHP = 200;
			enimyEXP = 100;
			break;
			}
	
		
	}
	string getEntityName()
	{	
	return EntityName;	
	}
	int getst()
	{	
	return st;	
	}
	int getdx()
	{	
	return dx;	
	}
	int getiq()
	{
	return iq;
	}
	int getht()
	{	
	return ht;	
	}
	int getxSt()
	{	
	return xSt;	
	}
	int getxDx()
	{
	return xDx;
	}
	int getxIq()
	{
	return xIq;
	}		
	int getxHt()
	{ 
	return xHt;	
	}
	int getxMaxHP()
	{ 
	return xMaxHP; 
	}
	int getenimyEXP()
	{ 
	return enimyEXP;
	}
}
