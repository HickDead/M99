//=============================================================================
// KFDT_Ballistic_M14EBR
//=============================================================================
// Ballistic damage with light impact energy, but stronger hit reactions
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================

class KFDT_Ballistic_M99 extends KFDT_Ballistic_Rifle
	abstract
	hidedropdown;

static simulated function bool CanDismemberHitZone( name InHitZoneName )
{
	if( super.CanDismemberHitZone( InHitZoneName ) )
	{
		return true;
	}

    switch ( InHitZoneName )
	{
		case 'lupperarm':
		case 'rupperarm':
		case 'chest':
		case 'heart':
	 		return true;
	}

	return false;
}

defaultproperties
{
   WeaponDef=Class'M99.KFWeapDef_M99'
   StunPower=50.000000
   KnockdownPower=20.000000
   StumblePower=600.000000
   GunHitPower=675.000000
   MeleeHitPower=100.000000
   ModifierPerkList(0)=Class'KFGame.KFPerk_Sharpshooter'
   KDamageImpulse=4500.000000
   KDeathVel=350.000000
   KDeathUpKick=500.000000
   Name="Default__KFDT_Ballistic_M99"
   ObjectArchetype=KFDT_Ballistic_Rifle'kfgamecontent.Default__KFDT_Ballistic_Rifle'
}
