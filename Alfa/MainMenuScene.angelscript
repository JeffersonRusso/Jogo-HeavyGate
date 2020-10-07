#include "Button.angelscript"

class MainMenuScene : Scene
{
	private Button@ m_startGameButton;
	private Button@ n_startGameButton;
	private Button@ o_startGameButton;
	private Button@ p_startGameButton;
	private Button@ q_startGameButton;
	bool loading = false;

	MainMenuScene()
	{
		const string sceneName = "empty";
		super(sceneName);
	}

	void onCreated()
	{
		
		const vector2 screenMiddle(GetScreenSize() * 0.5f);
		

		@m_startGameButton = Button("sprites/level_select_back.png", vector2(300.0f, 300.0f));
		@n_startGameButton = Button("sprites/menu.png", vector2(420.0f, 570.0f));
		@o_startGameButton = Button("sprites/play.png", vector2(420.0f, 400.0f));
		@p_startGameButton = Button("sprites/level_select_back.png", vector2(300.0f, 370.0f));
		@q_startGameButton = Button("sprites/level_select_back.png", vector2(350,375));

		AddEntity("SteamBG.ent", vector3(screenMiddle, 0.0f));
	}

	void onUpdate()
	{
		commands();
		
		m_startGameButton.putButton();
		n_startGameButton.putButton();
		o_startGameButton.putButton();
		p_startGameButton.putButton();

		if (m_startGameButton.isPressed())
		{
			g_sceneManager.setCurrentScene(GameScene());
		}
		
		else if (n_startGameButton.isPressed())
		{
			loading = true;
			g_sceneManager.setCurrentScene(PenguinsScene());
		}
		else if (o_startGameButton.isPressed())
		{
			loading = true;
			g_sceneManager.setCurrentScene(WorldScene());
		}
	
		/*
		else if (p_startGameButton.isPressed())
		{
			loading = true;
			g_sceneManager.setCurrentScene(TesteBatalha());
		}
		*/
		if (loading == true)
			{
				string str = "Carregando Cena";
				DrawText(vector2(100,100), str, "Verdana20_shadow.fnt", 0xFFFFFFFF);
			}
	}
}
