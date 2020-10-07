#include "Button.angelscript"
#include "TesteCharFrame.angelscript"
#include "Collide.angelscript"
#include "eth_util.angelscript"
#include "SpaceScene.angelscript"
#include "Timer.angelscript"

class ForestScene : Scene
{
	ETHEntity @a_char;
	ETHEntity @b_char;
	private Button@ m_exitButton;
	private Sphere@ m_Sphere;
	private Sphere@ n_Sphere;

	ForestScene()
	{
		const string sceneName = "scenes/florestafinal.esc";
		super(sceneName);
	}

	void onCreated()
	{

		@m_exitButton = Button("sprites/level_select_forward.png", vector2(350.0f, 0.0f));

		@m_character = Character("witch1.ent", vector2(75, 580));	
	
	}


	void onUpdate()
	{
		startBattle(m_character.m_entity);
		commands();
	}
}