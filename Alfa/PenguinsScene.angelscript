#include "Button.angelscript"
#include "Character.angelscript"

class PenguinsScene : Scene
{
	private Button@ m_exitButton;

	PenguinsScene()
	{
		const string sceneName = "empty";
		super(sceneName);
	}

	void onCreated()
	{
		@m_exitButton = Button("sprites/level_select_forward.png", vector2(0.0f, 0.0f));

		const vector2 screenMiddle(GetScreenSize() * 0.5f);
		@m_character = Character("m.ent", screenMiddle);
		
		AddEntity("Penguins.ent", vector3(screenMiddle, 0.0f));

		
		
		for (int i = 0; i < 101; i ++)
		{
			print("Contando " + i);
		}
		
	}

	void onUpdate()
	{
		
		
		commands();

		m_character.update();
		startBattle(m_character.m_entity);

		m_exitButton.putButton();
		if (m_exitButton.isPressed())
		{
			g_sceneManager.setCurrentScene(MainMenuScene());
		}
	}
}