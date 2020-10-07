#include "Spell.angelscript"
class SpellDamage : Spell
{
	string effect;
	ETHEntity@ _Spell;
	
   SpellDamage(const string _spriteName,const vector2 &in _pos, int damage,string spriteSpell,
   const vector3 &in posSpell,
   string effect,
   int costHP)
   {
	super(_spriteName, _pos , damage , costHP);
	AddEntity(spriteSpell, posSpell, Spell);
	this.effect = effect;
   }
   string getEffect()
   {
   return effect;
   }
   ETHEntity @ getRef()
   {
	return @_Spell;
   }
   
   
}