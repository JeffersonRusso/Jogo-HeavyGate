#include "FrameTimer.angelscript"

class Character
{
	ETHEntity@ m_entity;
	ETHEntity@ r_entity;
	private vector2 Dir;

	private FrameTimer m_frameTimer;
	private uint m_directionLine = 0;

	Character(const string &in entityName, const vector2 pos)
	{
		AddEntity(entityName, vector3(pos, 0.0f), m_entity);
	}

	void update()
	{
		
	}

	void limitPositionToScreen(ETHEntity@ m_entity)
{
	vector2 screenSize = GetScreenSize();
	vector2 pos = m_entity.GetPositionXY();
 
	if (pos.x < 0.0f)
		m_entity.SetPositionX(0.0f);
	if (pos.y < 0.0f)
		m_entity.SetPositionY(0.0f);
 
	if (pos.x > screenSize.x)
		m_entity.SetPositionX(screenSize.x);
	if (pos.y > screenSize.y)
		m_entity.SetPositionY(screenSize.y);
}
	vector2 getDir()
	{
		return Dir;
	}

	void setDir(const vector2 _Dir)
	{
		Dir = _Dir;
	}

}
