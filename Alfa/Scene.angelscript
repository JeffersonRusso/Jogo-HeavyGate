#include "Inventory.angelscript"
class Scene
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


	Inventory@[] m_buttons;
	Character@ m_character;
	Inventory@ m_trade;
	ItemBase@ m_item;
	ItemBase@ m_item1;

	Scene(const string &in sceneFileName)
	{
		LoadScene(sceneFileName, "onSceneCreated", "onSceneUpdate");
		m_buttons.resize(35);
	}

	void onCreated()
	{
		

	}

	void onUpdate()
	{
		

		//bool point = isPointInScreen(vector2(40,50));

	}
	void onCreatedInventory()
	{
		for(int t = 0; t < m_buttons.length; t++)
		{
		if(t == 0)
		@m_buttons[t] = Inventory("sprites/AZUL-50x50.png", vector2(750,300));

		if(t != 0)
		@m_buttons[t] = Inventory("sprites/AZUL-50x50.png", vector2(m_buttons[t-1].getPos().x+50,m_buttons[t-1].getPos().y));

		if(t == 5)
		m_buttons[t].setPos(vector2(750, m_buttons[t-1].getPos().y  + 50));
		
		if(t == 10)
		m_buttons[t].setPos(vector2(750, m_buttons[t-1].getPos().y + 50));

		if(t == 15)
		m_buttons[t].setPos(vector2(750, m_buttons[t-1].getPos().y + 50));

		if(t == 20)
		m_buttons[t].setPos(vector2(750, m_buttons[t-1].getPos().y + 50));

		if(t == 25)
		m_buttons[t].setPos(vector2(750, m_buttons[t-1].getPos().y + 50));

		if(t == 30)
		m_buttons[t].setPos(vector2(750, m_buttons[t-1].getPos().y + 50));

		if(t == 35)
		m_buttons[t].setPos(vector2(750, m_buttons[t-1].getPos().y + 50));
		}
		@m_item = ItemBase("sprites/bola_vermelha.png","XXXXXXXXXXXXXX",11,1,1,1,1,1,1);
		@m_item1 = ItemBase("sprites/bola_vermelha.png","aaaaahghhghggghhghghghgh",13232,21,231,41,1,1,1);

	
		m_buttons[1].Slot(m_item1);
		m_buttons[10].Slot(m_item);
		
	}

	void onUpdateInventory()
	{

		for(int t = 0; t < m_buttons.length; t++)
		{
		m_buttons[t].putButton();

		if (m_buttons[t].SlotItem() !is null )
		{	m_buttons[t].showStatus();	}
		
		if (m_buttons[t].isPressed() && m_buttons[t].SlotItem() !is null )
		{
			if(m_trade is null)
			@m_trade = m_buttons[t];

			if(m_trade !is null)
			{
				@m_trade = null;
			}
		}

		}

	}


	bool posAtual = false;
	
	void startBattle(ETHEntity@ character)
	{
		float Pos1;
		float Pos;
		/*if(!posAtual)
		{
		Pos = character.GetPosition().x;
		posAtual = true;
		print("b");
		print(Pos);
		int posi = Pos;
		Pos1 = character.GetPosition().x;
		print("b");
		print(Pos);
		int posi1 = Pos1;
		}

		if(Pos1 != Pos)
		{
			print(character.GetPosition().x);
			posAtual = false;
			print("a");
		}*/


	}
	void Inventory()
	{
		
	}


	void commands()
	{
	

	uint black = 0xFF000000;
    uint dark = 0xFF0A0A0A;
	
	
		const string font = "Verdana20.fnt";
		const string fps = ""+GetFPSRate();
		const string text = fps + " (" + GetNumRenderedEntities() + "/" + GetNumEntities() + ")";
		const vector2 size = ComputeTextBoxSize(font, text);
		DrawText(GetScreenSize()-size, text, font, ARGB(150,255,255,255));
	
		ETHInput @input = GetInputHandle();
		if (input.KeyDown(K_ESC))
		{
			Exit();
		}
		
		if (input.GetKeyState(K_S) == KS_HIT)
		{
			SaveScene("scenes/saved.esc");
			print("Jogo salvo com sucesso!");
		}
		
		if (input.GetKeyState(K_L) == KS_HIT)
		{
			LoadScene("scenes/saved.esc", "", "onSceneUpdate");
			print("Carregando jogo...");
		}
		
		if (input.GetKeyState(K_ALT) == KS_DOWN && input.GetKeyState(K_RETURN) == KS_HIT)
		{
		const bool willGoWindowed = !Windowed();
		print(willGoWindowed ? "going to window" : "going to fullscreen");

		const videoMode bestVideoMode = GetVideoMode(GetVideoModeCount() -1);

		SetWindowProperties("Ethanon Engine",
							willGoWindowed ? 1024 : bestVideoMode.width,
							willGoWindowed ?  768 : bestVideoMode.height,
							willGoWindowed, true, PF32BIT);
		}
		
	
	}
}