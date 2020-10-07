class Timer
{
	private uint m_elapsedTime = 0;
	private bool m_Bool;

	void update()
	{
		m_elapsedTime += GetLastFrameElapsedTime();
	}

	uint getElapsedTime()
	{
		return m_elapsedTime;
	}
	void setElapsedTime()
	{
		m_elapsedTime = 0;
	}
	bool isBool()
	{
		return m_Bool;
	}

	void setBool(const bool _Bool)
	{
		m_Bool = _Bool;
	}
}