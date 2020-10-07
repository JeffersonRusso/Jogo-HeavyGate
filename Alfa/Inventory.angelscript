class Inventory

{

	bool select;
	string sprite;
	string nameItem;
	int st;
	int dx;
	int iq;
	int ht;
	int hp;
	int def;
	int atk;

	ItemBase@ m_Itembase;
	ETHEntity @ETHItem;

	private string m_spriteName;
	private vector2 m_pos;
	private vector2 m_origin;
	private vector2 m_size;
	private bool m_isPressed;
	private bool m_isPressedNext;


	Inventory(const string _spriteName, const vector2 &in _pos)
	{
		m_spriteName = _spriteName;
		m_pos = _pos;
		LoadSprite(m_spriteName);
		m_size = GetSpriteFrameSize(m_spriteName);
		m_isPressed = false;
	}
	void Slot(ItemBase @ Item)
	{
		@m_Itembase = Item;
		sprite = Item.sprite;
		nameItem = Item.nameItem;
		st = Item.st;
		dx = Item.dx;
		iq = Item.iq;
		ht = Item.ht;
		hp = Item.hp;
		def =Item.def;
		atk = Item.atk;	
	}
	ItemBase@ SlotItem()
	{
		return @m_Itembase;
	}
	

	void showStatus()
	{
		

		DrawSprite(sprite, m_pos + vector2(12,15));

		DrawText(vector2(0,140),"Nome = " + nameItem  , "Verdana14_shadow.fnt", ARGB(250,255,255,255));
		DrawText(vector2(0,150),"ST = " + st, "Verdana14_shadow.fnt", ARGB(250,255,255,255));
		DrawText(vector2(0,160),"IQ = " + iq, "Verdana14_shadow.fnt", ARGB(250,255,255,255));
		DrawText(vector2(0,170),"HT = " + ht, "Verdana14_shadow.fnt", ARGB(250,255,255,255));
		DrawText(vector2(0,180),"HP = " + hp, "Verdana14_shadow.fnt", ARGB(250,255,255,255));
		DrawText(vector2(0,190),"DEF = " + def, "Verdana14_shadow.fnt", ARGB(250,255,255,255));
		DrawText(vector2(0,200),"ATK = " + atk, "Verdana14_shadow.fnt", ARGB(250,255,255,255));
	}
	bool selectItem()
	{
		select = true;
		return select;
	}
	void trade()
	{

	}

	vector2 getPos()
	{
		return m_pos;
	}

	void setPos(const vector2 _pos)
	{
		m_pos = _pos;
	}

	void setButtonBitmap(const string &in _spriteName)
	{
		m_spriteName = _spriteName;
	}

	string getButtonBitmap()
	{
		return m_spriteName;
	}

	void putButton()
	{
		putButton(vector2(0,0));
	}

	void putButton(const vector2 &in offset)
	{
		update();
		draw(offset);
	}

	void draw()
	{
		draw(vector2(0,0));
	}

	void draw(const vector2 &in offset)
	{
		SetSpriteOrigin(m_spriteName, m_origin);
		DrawSprite(m_spriteName, m_pos + offset);
		
	}
	

	vector2 getSize() const
	{
		return m_size;
	}

	bool isPointInButton(const vector2 &in p) const
	{
		return (isPointInRect(p, m_pos, m_size, m_origin));
	}

	void update()
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

	bool isPressed()
	{
		return m_isPressed;
	}

	void setPressed(const bool pressed)
	{
		m_isPressed = pressed;
	}
	
	bool isPressedNext()
	{
		return m_isPressedNext;
	}

	void setPressedNext(const bool pressedNext)
	{
		m_isPressedNext = pressedNext;
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
