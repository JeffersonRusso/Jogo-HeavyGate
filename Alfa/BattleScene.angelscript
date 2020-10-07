#include "Hero.angelscript"
#include "Enimy.angelscript"
#include "EnimyList.angelscript"

class BattleScene : Scene
{

Hero@[] m_hero;
Enimy@[] m_enimy;
EnimyList@[] m_EnimyList;

	BattleScene()
	{
		const string sceneName = "bugteste3.esc";
		super(sceneName);
	}

	void onCreated()
	{
		for(int a = 0; a < 4; a++)
		{
		@m_hero[0] = Hero("ahri.ent", vector3(rand(300,500),300,5),5, 5, 5,5,2, 2, 2, 2, 40, 0,100, 100);
		}
		for(int a = 0; a < rand(0,4); a++)
		{
		@m_EnimyList[a] = EnimyList();
		m_EnimyList[a].List(0,2);	
		@m_enimy[a] = Enimy(m_EnimyList[a].getEntityName(), vector3(300,300,5),m_EnimyList[a].getst(),
		m_EnimyList[a].getdx(),m_EnimyList[a].getiq(),m_EnimyList[a].getht(),m_EnimyList[a].getxSt(),
		m_EnimyList[a].getxDx(),m_EnimyList[a].getxIq(), m_EnimyList[a].getxHt(), m_EnimyList[a].getxMaxHP(), m_EnimyList[a].getenimyEXP());
		}
	}

	void onUpdate()
	{
		commands();
	}
}