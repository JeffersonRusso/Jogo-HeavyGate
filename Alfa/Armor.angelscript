class Armor : ItemBase
{

  Armor(string sprite, string nameItem, int st, int dx, int iq, int ht, int hp, int def, int atk)
  {
  super(sprite, nameItem, st, dx , iq, ht, hp, def, atk);
  }

  int getDef() { return def; }
}