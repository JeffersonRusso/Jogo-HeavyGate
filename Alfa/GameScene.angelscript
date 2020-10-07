#include "Button.angelscript"


class GameScene : Scene
{
	private Button@ m_exitButton;
	

	GameScene()
	{
		const string sceneName = "empty";
		super(sceneName);
	}

	void onCreated()
	{
		@m_exitButton = Button("sprites/level_select_forward.png", vector2(0.0f, 0.0f));

		const vector2 screenMiddle(GetScreenSize() * 0.5f);
		
		print("Battle");
		AddEntity("Lighthouse.ent", vector3(screenMiddle, 0.0f));
	}

	void onUpdate()
	{
		m_exitButton.putButton();
		if (m_exitButton.isPressed())
		{
			g_sceneManager.setCurrentScene(MainMenuScene());
		}
	}
}
