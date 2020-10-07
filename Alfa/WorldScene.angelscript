#include "Button.angelscript"
#include "TesteCharFrame.angelscript"
#include "Collide.angelscript"
#include "eth_util.angelscript"
#include "ForestScene.angelscript"


class WorldScene : Scene
{

	private Button@ m_exitButton;
	private Sphere@ m_Sphere;
	private Sphere@ n_Sphere;

	WorldScene()
	{
		const string sceneName = "scenes/Praca.esc";
		super(sceneName);
	}

	void onCreated()
	{
		@m_exitButton = Button("sprites/level_select_forward.png", vector2(350.0f, 0.0f));
		@m_character = Character("witch1.ent", vector2(300, 900));
		
	}
	void onUpdate()
	{
	

		if(intersectSpheres(
		@Sphere(m_character.m_entity.GetPosition(),10),
		@Sphere(vector3(505,975,1), 25)))
		{
			 
			g_sceneManager.setCurrentScene(ForestScene());
		}

		commands();
		

		m_exitButton.putButton();
		if (m_exitButton.isPressed())
		{
			g_sceneManager.setCurrentScene(MainMenuScene());
		}
	}
}