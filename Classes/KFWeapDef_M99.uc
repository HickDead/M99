//=============================================================================
// KFWeapDef_M99
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients).
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_M99 extends KFWeaponDefinition
	abstract;

defaultproperties
{
   WeaponClassPath="M99.KFWeap_Rifle_M99"
   ImagePath="WEP_UI_M99_TEX.UI_WeaponSelect_SM99"
   BuyPrice=1400
   AmmoPricePerMag=25
   EffectiveRange=100
   Name="Default__KFWeapDef_M99"
   ObjectArchetype=KFWeaponDefinition'KFGame.Default__KFWeaponDefinition'
}
