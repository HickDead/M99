class KFWeap_Rifle_M99 extends KFWeap_ScopedBase;

defaultproperties
{
	// Inventory / Grouping
//	InventorySize=7
	InventorySize=9
	GroupPriority=75
	WeaponSelectTexture=Texture2D'WEP_UI_M99_TEX.UI_WeaponSelect_SM99'
   	AssociatedPerkClasses(0)=class'KFPerk_Sharpshooter'

 	// 2D scene capture
	Begin Object Name=SceneCapture2DComponent0
	   TextureTarget=TextureRenderTarget2D'Wep_Mat_Lib.WEP_ScopeLense_Target'
	   FieldOfView=12.5 // "2.0X" = 25.0(our real world FOV determinant)/2.0
	End Object
//	ObjectArchetype=KFWeap_Rifle_M14EBR'kfgamecontent.Default__KFWeap_ScopedBase'

	ScopedSensitivityMod=12.0
	ScopeLenseMICTemplate=MaterialInstanceConstant'WEP_1P_Crossbow_MAT.WEP_1P_Crossbow_Scope_MAT'

	// FOV
	MeshFOV=70
	MeshIronSightFOV=27
	PlayerIronSightFOV=70

	// Depth of field
	DOF_BlendInSpeed=3.0	
	DOF_FG_FocalRadius=0 // 70
	DOF_FG_MaxNearBlurSize=3.5

	Begin Object Name=FirstPersonMesh
		SkeletalMesh=SkeletalMesh'WEP_1P_M99_MESH.WEP_1stP_M99'
//		AnimSets(0)=AnimSet'WEP_1P_M14EBR_ANIM.Wep_1stP_M14_EBR_Anim'
//		AnimSets(0)=AnimSet'WEP_1P_Centerfire_ANIM.Wep_1stP_Centerfire_Anim'
		AnimSets(0)=AnimSet'WEP_1P_M99_ANIM.Wep_1stP_M99_Anim'
	End Object
	Mesh=FirstPersonMesh

	DroppedPickupMesh=StaticPickupComponent
	Begin Object Name=StaticPickupComponent
		StaticMesh=StaticMesh'WEP_3P_M99_MESH.Wep_M99_Pickup'
	End Object
	PickupFactoryMesh=StaticPickupComponent
	Components(0)=SceneCapture2DComponent0

	AttachmentArchetype=KFWeaponAttachment'WEP_M99_ARCH.Wep_M99_3P'

//	LaserSightTemplate=KFLaserSightAttachment'FX_LaserSight_ARCH.LaserSight_WithAttachment_1P'

	// Ammo
	MagazineCapacity(0)=1
	SpareAmmoCapacity(0)=24
	InitialSpareMags[0]=4
	bCanBeReloaded=true
	bReloadFromMagazine=true
//	bReloadFromMagazine=false

	// Zooming/Position
	PlayerViewOffset=(X=15.0,Y=11.5,Z=-4)
//	IronSightPosition=(X=15.0,Y=0.0,Z=-2.0)
//	IronSightPosition=(X=0.0,Y=0,Z=-2.0)
//	IronSightPosition=(X=0.0,Y=-0.05,Z=0.05)
	IronSightPosition=(X=15.0,Y=-0.05,Z=0.05)

	// AI warning system
	bWarnAIWhenAiming=true
	AimWarningDelay=(X=0.4f, Y=0.8f)
	AimWarningCooldown=0.0f

	// Recoil
	maxRecoilPitch=225
	minRecoilPitch=200
	maxRecoilYaw=200
	minRecoilYaw=-200
	RecoilRate=0.16
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=150
	RecoilISMinYawLimit=65385
	RecoilISMaxPitchLimit=375
	RecoilISMinPitchLimit=65460
	RecoilViewRotationScale=1.2

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
//	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_M14EBR'
	WeaponProjectiles(DEFAULT_FIREMODE)=Class'kfgamecontent.KFProj_Bullet_Pistol50AE'
	InstantHitDamage(DEFAULT_FIREMODE)=675.0 // 90.0 //75
	InstantHitDamageTypes(DEFAULT_FIREMODE)=Class'M99.KFDT_Ballistic_M99';
	FireInterval(DEFAULT_FIREMODE)=2.19 // 0.22 //0.2
	PenetrationPower(DEFAULT_FIREMODE)=10.0
	Spread(DEFAULT_FIREMODE)=0.005
	FireOffset=(X=30,Y=3.0,Z=-2.5)

	// ALT_FIREMODE
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_None


	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_M14EBR'
	InstantHitDamage(BASH_FIREMODE)=27

	// Fire Effects
	MuzzleFlashTemplate=KFMuzzleFlash'WEP_M14EBR_ARCH.Wep_M14EBR_MuzzleFlash'
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_EBR.Play_WEP_SA_EBR_Fire_Single_M', FirstPersonCue=AkEvent'WW_WEP_SA_EBR.Play_WEP_SA_EBR_Fire_Single_S')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_EBR.Play_WEP_SA_EBR_Handling_DryFire'

	// Custom animations
	FireSightedAnims=(Shoot_Iron, Shoot_Iron2, Shoot_Iron3)

	// Attachments
	bHasIronSights=true
	bHasFlashlight=false
	bHasLaserSight=false

	WeaponFireWaveForm=ForceFeedbackWaveform'FX_ForceFeedback_ARCH.Gunfire.Heavy_Recoil'

//	Begin Object Name=MeleeHelper_0
//		MaxHitRange=175.0
//	End Object
//	MeleeAttackHelper=KFMeleeHelperWeapon'M99.Default__KFWeap_Rifle_M99:MeleeHelper_0'
	
	Name="Default__KFWeap_Rifle_M99"
	ObjectArchetype=KFWeap_ScopedBase'KFGame.Default__KFWeap_ScopedBase'

}
