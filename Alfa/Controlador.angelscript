class Controlador
{
		ETHEntity@ a_inimigo;

			ETHEntity@ a_objeto;
			ETHEntity@ b_objeto;
			ETHEntity@ c_objeto;
			ETHEntity@ d_objeto;
			ETHEntity@ e_objeto;
			
			ETHEntity@ a_blood;
			ETHEntity@ b_blood;
			ETHEntity@ c_blood;
			ETHEntity@ d_blood;
			
			private stringInput @m_stringInput;

			private Timer @m_Timer;
			
			private CharFrame@ m_CharFrame;
			
			private InimigoFrame@ m_inimigoFrame;
			private InimigoFrame@ n_inimigoFrame;
			private InimigoFrame@ o_inimigoFrame;
			private InimigoFrame@ r_inimigoFrame;

			private FramePorra @m_FramePorra;
			
			private Character@ m_character;

			private frameTimer @m_frameTimer;
			
			private Skill@	m_Skill;
			
			private SkillInimigo@ m_SkillInimigo;
			
			private ControlBattle@ m_controlTurn;
			private ControlBattle@ n_controlTurn;
			private ControlBattle@ o_controlTurn;
			private ControlBattle@ p_controlTurn;
			private ControlBattle@ q_controlTurn;
			private ControlBattle@ r_controlTurn;
			private ControlBattle@ s_controlTurn;
			
			private Button@ m_exitButton;	
			private Button@ m_skillButton;
			private Button@ n_skillButton;

			private Button@ m_clearButton;	
			
			private Button@ m_selectEnimy;
			private Button@ n_selectEnimy;
			private Button@ o_selectEnimy;
			private Button@ p_selectEnimy;
				
			private Button@ m_returnAll;

			private inimigo1@m_inimigo;
			private inimigo1@n_inimigo;
			private inimigo1@o_inimigo;
			private inimigo1@p_inimigo;
			
			private char@ m_char;

			void Inimigos()
			{
				@m_char = char("Heroina.ent", vector2(150,400), 1,1,1,1);
				
				m_char.Character.SetInt("HP", 450);

				@m_skillButton = Button("sprites/level_select_forward.png", vector2(60.0f, 665.0f));
				@n_skillButton = Button("sprites/level_select_forward.png", vector2(150.0f, 665.0f));
				
				@m_FramePorra = FramePorra();
	
				@m_SkillInimigo = SkillInimigo();
				
				@m_Skill = Skill();
				
				@m_stringInput = stringInput();


			
				@m_exitButton = Button("sprites/level_select_forward.png", vector2(0.0f, 0.0f));

				m_Skill.ButtonSkill();
				
				m_Skill.ButtonNumber();
				
				@m_inimigoFrame = InimigoFrame();
				
				@n_inimigoFrame = InimigoFrame();
				
				@m_controlTurn = ControlBattle();
				
				@n_controlTurn = ControlBattle();

				@o_controlTurn = ControlBattle();
				
				@p_controlTurn = ControlBattle();
				
				@q_controlTurn = ControlBattle();
				
				@r_controlTurn = ControlBattle();
				
				int RE = (rand(1,10));

				@m_inimigo = inimigo1();
				@n_inimigo = inimigo1();
				@o_inimigo = inimigo1();
				@p_inimigo = inimigo1();
				
				
				
				if(RE >= 0 && RE <= 10)
				{
					m_inimigo.Inimigos(vector2(900.0f, 600.0f));
					
					@m_selectEnimy = Button("sprites/level_select_forward.png", vector2(900.0f, 600.0f));

					m_inimigo.d_inimigo.SetString("Name",m_inimigo.getName());
					
					m_inimigo.d_inimigo.SetInt("HP", m_inimigo.getHP());

				}

				if(RE >= 1 && RE <= 10)
				{
					n_inimigo.Inimigos(vector2(900.0f, 450.0f));
					
					@n_selectEnimy = Button("sprites/level_select_forward.png", vector2(900.0f, 450.0f));

					n_inimigo.d_inimigo.SetString("Name",n_inimigo.getName());

					n_inimigo.d_inimigo.SetInt("HP", n_inimigo.getHP());
				}
				
				if(RE >= 1 && RE <= 10)
				{
					o_inimigo.Inimigos(vector2(900.0f, 300.0f));
					
					@o_selectEnimy = Button("sprites/level_select_forward.png", vector2(900.0f, 300.0f));

					o_inimigo.d_inimigo.SetString("Name",o_inimigo.getName());

					o_inimigo.d_inimigo.SetInt("HP", o_inimigo.getHP());
				}

				if(RE >= 1 && RE <= 10)
				{
					p_inimigo.Inimigos(vector2(900.0f, 150.0f));
					
					@p_selectEnimy = Button("sprites/level_select_forward.png", vector2(900.0f, 150.0f));

					p_inimigo.d_inimigo.SetString("Name",p_inimigo.getName());

					p_inimigo.d_inimigo.SetInt("HP", p_inimigo.getHP());
				}
					m_selectEnimy.setPressedNext(true);
					n_selectEnimy.setPressedNext(true);
					o_selectEnimy.setPressedNext(true);
					p_selectEnimy.setPressedNext(true);
					
					m_Skill.Skills();	
					
					m_Skill.ButtonNumber();

					m_Skill.Person();
					
					@m_Timer = Timer();
					
					@o_inimigoFrame = InimigoFrame();
					
					@r_inimigoFrame = InimigoFrame();
					
					q_controlTurn.setControlAtack(1);
					
					m_FramePorra.CFrame();
					
					@m_CharFrame = CharFrame();
					
					m_CharFrame.ConsCharFrame();

					float rt = 48/2 * (9+3) + 50;

					print(rt + "piloka");
					
					

					
					
					
			}
			void Inimigos1()
			{

				
				string strHPChar = "HP Char " + m_char.Character.GetInt("HP");
				
				string Name = "Name 1: " + m_inimigo.d_inimigo.GetString("Name");
				string str5 = "HP " + m_inimigo.d_inimigo.GetInt("HP");
				
				string Name1 = "Name 2: " + n_inimigo.d_inimigo.GetString("Name");
				string str10 = "HP " + n_inimigo.d_inimigo.GetInt("HP");
				
				string Name2 = "Name 3: " + o_inimigo.d_inimigo.GetString("Name");
				string str15 = "HP " + o_inimigo.d_inimigo.GetInt("HP");
				
				string Name3 = "Name 4: " + p_inimigo.d_inimigo.GetString("Name");
				string str20 = "HP " + p_inimigo.d_inimigo.GetInt("HP");

				string strSkill = "Skill" + m_Skill.getSelect(); 
				
				DrawText(vector2(150,150), strHPChar, "Verdana20_shadow.fnt", 0xFFFFFFFF);

				DrawText(vector2(350,0), Name, "Verdana20_shadow.fnt", 0xFFFFFFFF);
				DrawText(vector2(350,20), str5, "Verdana20_shadow.fnt", 0xFFFFFFFF);
				
				DrawText(vector2(500,0), Name1, "Verdana20_shadow.fnt", 0xFFFFFFFF);
				DrawText(vector2(500,20), str10, "Verdana20_shadow.fnt", 0xFFFFFFFF);
				
				DrawText(vector2(650,0), Name2, "Verdana20_shadow.fnt", 0xFFFFFFFF);
				DrawText(vector2(650,20), str15, "Verdana20_shadow.fnt", 0xFFFFFFFF);
				DrawText(vector2(800,0), Name3, "Verdana20_shadow.fnt", 0xFFFFFFFF);
				DrawText(vector2(800,20), str20, "Verdana20_shadow.fnt", 0xFFFFFFFF);
				
				DrawText(vector2(800,600), "1", "Verdana20_shadow.fnt", 0xFFFFFFFF);
				DrawText(vector2(800,450), "2", "Verdana20_shadow.fnt", 0xFFFFFFFF);
				DrawText(vector2(800,300), "3", "Verdana20_shadow.fnt", 0xFFFFFFFF);
				DrawText(vector2(800,150), "4", "Verdana20_shadow.fnt", 0xFFFFFFFF);
					/*const uint white = ARGB(255,250,0,0);
			   m_stringInput.PlaceInput("aaa", vector2(300,300), "Verdana20_shadow.fnt", white);*/
				
		
				
				if(m_controlTurn.isControlTurn() == true)
				{
			
				
				if(m_skillButton.isPressed() == false)
				{
					m_skillButton.putButton();
				}
			
				//m_Skill.setNumberSkill1(m_Skill.getNumberSkill());
				
				if(m_skillButton.isPressed())
				{
					n_skillButton.putButton();
					if(n_skillButton.isPressed() == false)
					{
					m_Skill.ButtonNumber();
					}
					
					if(n_skillButton.isPressed())
					{
						
						DrawText(vector2(400,250), strSkill, "Verdana20_shadow.fnt", 0xFFFFFFFF);

						if(m_selectEnimy.isPressedNext() == true)
						{
							m_selectEnimy.putButton();
						}
						if(n_selectEnimy.isPressedNext() == true)
						{
							n_selectEnimy.putButton();
						}
						if(o_selectEnimy.isPressedNext() == true)
						{
							o_selectEnimy.putButton();
						}
						if(p_selectEnimy.isPressedNext() == true)
						{
							p_selectEnimy.putButton();
						}
						
						//print("AAAA"+m_Skill.getNumberSkill());
						
						if(m_selectEnimy.isPressed())
						{	
							m_Skill.setSelect(m_Skill.getSelect()-1);
							m_selectEnimy.setPressed(false);
							m_selectEnimy.setPressedNext(false);
							m_controlTurn.setControlAtackNext(m_controlTurn.getControlAtackNext() + 1);
							m_controlTurn.setControlAtack(m_controlTurn.getControlAtackNext());
						
						}
						
						if(n_selectEnimy.isPressed())
						{
							m_Skill.setSelect(m_Skill.getSelect()-1);
							n_selectEnimy.setPressed(false);
							n_selectEnimy.setPressedNext(false);
							m_controlTurn.setControlAtackNext(m_controlTurn.getControlAtackNext() + 1);
							n_controlTurn.setControlAtack(m_controlTurn.getControlAtackNext());
						}
						
						if(o_selectEnimy.isPressed())
						{
							m_Skill.setSelect(m_Skill.getSelect()-1);
							o_selectEnimy.setPressed(false);
							o_selectEnimy.setPressedNext(false);
							m_controlTurn.setControlAtackNext(m_controlTurn.getControlAtackNext() + 1);
							o_controlTurn.setControlAtack(m_controlTurn.getControlAtackNext());
						
						}
						
						if(p_selectEnimy.isPressed())
						{
							m_Skill.setSelect(m_Skill.getSelect()-1);
							p_selectEnimy.setPressed(false);
							p_selectEnimy.setPressedNext(false);
							m_controlTurn.setControlAtackNext(m_controlTurn.getControlAtackNext() + 1);
							p_controlTurn.setControlAtack(m_controlTurn.getControlAtackNext());
						}
						

						
						if(m_Skill.getSelect() == 0)
						{
							
							
							
							if(p_selectEnimy.isPressedNext() == false)
							{
								
								p_inimigo.update(m_Skill.getDamage());
								AddEntity(m_Skill.getSkill(), p_inimigo.d_inimigo.GetPosition(),b_objeto);
								
							}
							if(o_selectEnimy.isPressedNext() == false)
							{
								
								o_inimigo.update(m_Skill.getDamage());
								AddEntity(m_Skill.getSkill(), o_inimigo.d_inimigo.GetPosition(),b_objeto);
								
							}
							if(n_selectEnimy.isPressedNext() == false)
							{
								
								n_inimigo.update(m_Skill.getDamage());
								AddEntity(m_Skill.getSkill(), n_inimigo.d_inimigo.GetPosition(),b_objeto);
								
							}
							if(m_selectEnimy.isPressedNext() == false)
							{
								
								m_inimigo.update(m_Skill.getDamage());
								AddEntity(m_Skill.getSkill(), m_inimigo.d_inimigo.GetPosition(),b_objeto);
								
							}
							
							m_skillButton.setPressed(false);
							if(q_controlTurn.getControlAtack() == 1)
						{
							n_skillButton.setPressed(false);
							m_skillButton.setPressed(false);
							m_selectEnimy.setPressedNext(true);
							n_selectEnimy.setPressedNext(true);
							o_selectEnimy.setPressedNext(true);
							p_selectEnimy.setPressedNext(true);
							m_Skill.setSelect(m_Skill.getSelect1());
							m_controlTurn.setControlTurn(false);
							n_controlTurn.setControlTurn(false);
							o_controlTurn.setControlTurn(false);
							p_controlTurn.setControlTurn(true);
							q_controlTurn.setControlTurn(true);
							r_controlTurn.setControlTurn(true);
							@m_inimigoFrame = InimigoFrame();
							@n_inimigoFrame = InimigoFrame();
							@o_inimigoFrame = InimigoFrame();
							@r_inimigoFrame = InimigoFrame();
							
							m_selectEnimy.putButton();
						}	
							

							//~ r_controlTurn.setControlTurn(true);
							m_selectEnimy.putButton();

						}
					}
				}
			}
				
				//~ 53a
				//~ 55a
				

							if(m_inimigo.d_inimigo.GetInt("HP") < 0
							&& n_inimigo.d_inimigo.GetInt("HP") < 0
							&& o_inimigo.d_inimigo.GetInt("HP") < 0
							&& p_inimigo.d_inimigo.GetInt("HP") < 0 or m_char.Character.GetInt("HP") < 0)
							
							{
								g_sceneManager.setCurrentScene(ForestScene());
							}
			
			if(o_controlTurn.isControlTurn() == true)
			{
			m_inimigoFrame.setSpeedAnim(0);
			m_inimigoFrame.setLocalAnim1("Move.ent");
			m_inimigoFrame.setStatic(55);
			m_inimigoFrame.Movimentacao(m_inimigo.d_inimigo, 1000);
			}
			
			
			if(q_controlTurn.isControlTurn() == true)
			{
			m_inimigoFrame.setSpeedAnim(0);
			m_inimigoFrame.setLocalAnim1("Move.ent");
			m_inimigoFrame.setStatic(55);
			m_inimigoFrame.Movimentacao(o_inimigo.d_inimigo, 1000);
			}
			
							if(r_controlTurn.isControlTurn() == true)
			{
			m_inimigoFrame.setSpeedAnim(0);
			m_inimigoFrame.setLocalAnim1("Move.ent");
			m_inimigoFrame.setStatic(55);
			m_inimigoFrame.Movimentacao(p_inimigo.d_inimigo, 1000);
			}
							if(p_controlTurn.isControlTurn() == true)
			{
			m_inimigoFrame.setSpeedAnim(0);
			m_inimigoFrame.setLocalAnim1("Move.ent");
			m_inimigoFrame.setStatic(55);
			m_inimigoFrame.Movimentacao(n_inimigo.d_inimigo, 1000);
			}
			
			if(m_inimigo.d_inimigo.GetInt("HP") < 0 && a_blood is null)
			{
			AddEntity("blood_decal.ent", m_inimigo.d_inimigo.GetPosition(), a_blood);
			DeleteEntity(m_inimigo.d_inimigo);
			}
			
			if(n_inimigo.d_inimigo.GetInt("HP") < 0 && b_blood is null)
			{
			AddEntity("blood_decal.ent", n_inimigo.d_inimigo.GetPosition(), b_blood);
			DeleteEntity(n_inimigo.d_inimigo);
			}
			
			if(o_inimigo.d_inimigo.GetInt("HP") < 0 && c_blood is null)
			{
			AddEntity("blood_decal.ent", o_inimigo.d_inimigo.GetPosition(), c_blood);
			DeleteEntity(o_inimigo.d_inimigo);
			}
			
			if(p_inimigo.d_inimigo.GetInt("HP") < 0 && d_blood is null)
			{
			AddEntity("blood_decal.ent", p_inimigo.d_inimigo.GetPosition(), d_blood);
			DeleteEntity(p_inimigo.d_inimigo);
			}
			
			
			
				if(m_controlTurn.isControlTurn() == false)
				{	
				
						
						if(o_controlTurn.isControlTurn() == false)
						{
				
							if(a_objeto is null)
							{
							AddEntity("Select.ent", m_inimigo.d_inimigo.GetPosition(), a_objeto);
							}
							
							if(m_inimigoFrame.getSub() > m_inimigoFrame.getStatic()-10 && n_controlTurn.isControlTurn() == false && m_inimigo.d_inimigo.GetInt("HP") > 0 or 
							m_inimigoFrame.getSub() + m_inimigoFrame.getStatic() == m_inimigoFrame.getStatic() && m_inimigo.d_inimigo.GetInt("HP") > 0 )	
							{
							m_inimigoFrame.setSpeedAnim(150);
							m_inimigoFrame.setLocalAnim1("Heroina.ent");
							m_inimigoFrame.setStatic(55);
							m_inimigoFrame.Movimentacao(m_inimigo.d_inimigo, 1000);
							}

								if(m_inimigoFrame.getSub() < m_inimigoFrame.getStatic() 
								&& n_controlTurn.isControlTurn() == false or
								m_inimigoFrame.getSub() == m_inimigoFrame.getStatic()
								&& n_controlTurn.isControlTurn() == false)
								{		
								
									m_SkillInimigo.Skills((rand(m_inimigo.getRandSkill_1(),m_inimigo.getRandSkill_2())));
									
									
									AddEntity(m_SkillInimigo.getSkill(), m_char.Character.GetPosition()+m_char.Character.GetPositionZ(),b_objeto);
									
									m_char.Char_update(m_SkillInimigo.getDamage());
									
									string hit = m_SkillInimigo.getDamage();

									const uint white = ARGB(255,250,0,0);

									DrawFadingText(m_char.Character.GetPositionX()+7, hit,"Verdana64.fnt", white, 2000);
																	
									

									print(m_inimigoFrame.getSub()+"a");
									print(m_inimigoFrame.getStatic()+"a");
									
									n_controlTurn.setControlTurn(true);
									
								}
								
									if(n_controlTurn.isControlTurn() == true or m_inimigo.d_inimigo.GetInt("HP") <= 0)
								{
									m_inimigoFrame.setStatic(55);
									m_inimigoFrame.setSpeedAnim(150);
									m_inimigoFrame.setLocalAnim1("Select.ent");
									m_inimigoFrame.Movimentacao(m_inimigo.d_inimigo, 1000);
									if(m_inimigoFrame.getSub() > 50 or m_inimigoFrame.getSub() == 0)
									{
									print("mm");
									
										p_controlTurn.setControlTurn(false);
										o_controlTurn.setControlTurn(true);
										n_controlTurn.setControlTurn(false);
										
									
									}
								}

							}
			
							if(p_controlTurn.isControlTurn() == false)
							{
							
							if(e_objeto is null)
							{
							AddEntity("Select1.ent", n_inimigo.d_inimigo.GetPosition(), e_objeto);
							}

							if(n_inimigoFrame.getSub() > n_inimigoFrame.getStatic()-10 && n_controlTurn.isControlTurn() == false && n_inimigo.d_inimigo.GetInt("HP") > 0 or
							n_inimigoFrame.getSub() + n_inimigoFrame.getStatic() == n_inimigoFrame.getStatic() && n_inimigo.d_inimigo.GetInt("HP") > 0)	
							{
							
							n_inimigoFrame.setSpeedAnim(150);
							n_inimigoFrame.setLocalAnim1("Heroina.ent");
							n_inimigoFrame.setStatic(55);
							n_inimigoFrame.Movimentacao(n_inimigo.d_inimigo, 1000);
							
							}

								if(n_inimigoFrame.getSub() < n_inimigoFrame.getStatic() 
								&& n_controlTurn.isControlTurn() == false or 
								n_inimigoFrame.getSub() == n_inimigoFrame.getStatic()
								&& n_controlTurn.isControlTurn() == false)
								{
								
									m_SkillInimigo.Skills((rand(n_inimigo.getRandSkill_1(),n_inimigo.getRandSkill_2())));
									
									AddEntity(m_SkillInimigo.getSkill(), m_char.Character.GetPosition()+m_char.Character.GetPositionZ(),b_objeto);
									
									m_char.Char_update(m_SkillInimigo.getDamage());

									string hit1 = m_SkillInimigo.getDamage();

									const uint white = ARGB(255,250,0,0);

									DrawFadingText(m_char.Character.GetPositionX()+7, hit1,"Verdana64.fnt", white, 2000);
								
									
									n_controlTurn.setControlTurn(true);

								}
									if(n_controlTurn.isControlTurn() == true or n_inimigo.d_inimigo.GetInt("HP") < 0)
								{
									n_inimigoFrame.setStatic(55);
									n_inimigoFrame.setSpeedAnim(150);
									n_inimigoFrame.setLocalAnim1("Select1.ent");
									n_inimigoFrame.Movimentacao(n_inimigo.d_inimigo, 1000);
									if(n_inimigoFrame.getSub() > 50 or n_inimigoFrame.getSub() == 0)
									{
									print("nn");
										
										q_controlTurn.setControlTurn(false);
										p_controlTurn.setControlTurn(true);
										n_controlTurn.setControlTurn(false);
									}
									
									
							}
							
							}
							
							
							if(q_controlTurn.isControlTurn() == false)
							{
							
							if(c_objeto is null)
							{
							AddEntity("Select2.ent", o_inimigo.d_inimigo.GetPosition(), c_objeto);
							}

							//~ print( m_inimigoFrame.getStatic());
							//~ print(m_inimigoFrame.getSub());

							if(o_inimigoFrame.getSub() > o_inimigoFrame.getStatic()-10 && n_controlTurn.isControlTurn() == 
							false && o_inimigo.d_inimigo.GetInt("HP") > 0 or o_inimigoFrame.getSub() > o_inimigoFrame.getStatic()-10 && o_inimigo.d_inimigo.GetInt("HP") > 0 )	
							{
							
							o_inimigoFrame.setSpeedAnim(150);
							o_inimigoFrame.setLocalAnim1("Heroina.ent");
							o_inimigoFrame.setStatic(55);
							o_inimigoFrame.Movimentacao(o_inimigo.d_inimigo, 1000);
							
							}

								if(o_inimigoFrame.getSub() < o_inimigoFrame.getStatic() 
								&& n_controlTurn.isControlTurn() == false or 
								o_inimigoFrame.getSub() == o_inimigoFrame.getStatic()
								&& n_controlTurn.isControlTurn() == false)
								{
								
									m_SkillInimigo.Skills((rand(o_inimigo.getRandSkill_1(),o_inimigo.getRandSkill_2())));
									
									AddEntity(m_SkillInimigo.getSkill(), m_char.Character.GetPosition()+m_char.Character.GetPositionZ()+5,b_objeto);
									
									m_char.Char_update(m_SkillInimigo.getDamage());
									
									
									string hit2 = m_SkillInimigo.getDamage();

									const uint white = ARGB(255,250,0,0);

									DrawFadingText(m_char.Character.GetPositionX()+7, hit2,"Verdana64.fnt", white, 2000);
									
									n_controlTurn.setControlTurn(true);
									}
								
									if(n_controlTurn.isControlTurn() == true or o_inimigo.d_inimigo.GetInt("HP") < 0)
								{
									o_inimigoFrame.setStatic(55);
									o_inimigoFrame.setSpeedAnim(150);
									o_inimigoFrame.setLocalAnim1("Select2.ent");
									o_inimigoFrame.Movimentacao(o_inimigo.d_inimigo, 1000);
									if(o_inimigoFrame.getSub() > 50 or o_inimigoFrame.getSub() == 0)
									{
									
										
										
										q_controlTurn.setControlTurn(true);
										n_controlTurn.setControlTurn(false);
										r_controlTurn.setControlTurn(false);
										print("oo");

									}
									
							}
							
							}
							if(r_controlTurn.isControlTurn() == false)
							{
					
							if(d_objeto is null)
							{
							AddEntity("Select3.ent", p_inimigo.d_inimigo.GetPosition(), d_objeto);
							}

							//~ print( m_inimigoFrame.getStatic());
							//~ print(m_inimigoFrame.getSub());

							if(r_inimigoFrame.getSub() > r_inimigoFrame.getStatic()-10 && n_controlTurn.isControlTurn() == false)	
							{
							r_inimigoFrame.setSpeedAnim(150);
							r_inimigoFrame.setLocalAnim1("Heroina.ent");
							r_inimigoFrame.setStatic(55);
							r_inimigoFrame.Movimentacao(p_inimigo.d_inimigo, 1000);
							}

								if(r_inimigoFrame.getSub() < r_inimigoFrame.getStatic() 
								&& n_controlTurn.isControlTurn() == false or 
								r_inimigoFrame.getSub() == r_inimigoFrame.getStatic()
								&& n_controlTurn.isControlTurn() == false)
								{		
								
									m_SkillInimigo.Skills((rand(p_inimigo.getRandSkill_1(),p_inimigo.getRandSkill_2())));
									
									
									AddEntity("fireball.ent", m_char.Character.GetPosition(),b_objeto);
									
									m_char.Char_update(m_SkillInimigo.getDamage());
									
										string hit3 = m_SkillInimigo.getDamage();

									const uint white = ARGB(255,250,0,0);

									DrawFadingText(m_char.Character.GetPositionX()+7, hit3,"Verdana64.fnt", white, 2000);
								
									
									
									n_controlTurn.setControlTurn(true);
									
								}
								
									if(n_controlTurn.isControlTurn() == true or p_inimigo.d_inimigo.GetInt("HP") < 0)
								{
									r_inimigoFrame.setStatic(100);
									r_inimigoFrame.setSpeedAnim(150);
									r_inimigoFrame.setLocalAnim1("Select3.ent");
									r_inimigoFrame.Movimentacao(p_inimigo.d_inimigo, 1000);
									if(r_inimigoFrame.getSub() > 50 or p_inimigo.d_inimigo.GetInt("HP") < 0)
									{
									print("aaaa");
										n_controlTurn.setControlTurn(false);
										p_controlTurn.setControlTurn(false);
										r_controlTurn.setControlTurn(true);
										m_controlTurn.setControlTurn(true);
										print("pp");
									}
								}
								}
					
				}
			
				m_exitButton.putButton();
				if (m_exitButton.isPressed())
				{
					g_sceneManager.setCurrentScene(MainMenuScene());
					
				}

			

				
			}
}