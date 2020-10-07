#include "Inventory.angelscript"

class ControlInventory
{
	Inventory@[] m_Inventory;

	ControlInventory()
	{
			m_Inventory.resize(10);
	}
	void Creater()
	{
		
		for(int t = 0; 0 < m_Inventory.length; t++)
		{
			
			@m_Inventory[t] = Inventory("sprites/level_select_back.png", vector2(50.0f, 0.0f));
		}
	}
	void update()
	{
		
		for(int t = 0; 0 < m_Inventory.length; t++)
		{
			
			m_Inventory[t].putButton();
		}
	}
}