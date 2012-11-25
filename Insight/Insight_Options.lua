function JDHP_OptionsFrame_OnShow()
	JDHPOptionsDisplayPlayerSideHealth:SetChecked(PlayerSideHealth);
	JDHPOptionsDisplayPlayerSideMana:SetChecked(PlayerSideMana);
	JDHPOptionsDisplayPlayerSideMaxes:SetChecked(PlayerSideMaxes);
	JDHPOptionsDisplayPlayerSideMissing:SetChecked(PlayerSideMissing);
	JDHPOptionsDisplayPlayerSideHealthPer:SetChecked(PlayerSideHealthPer);
	JDHPOptionsDisplayPlayerSideManaPer:SetChecked(PlayerSideManaPer);

	JDHPOptionsDisplayColorPlayerHealth:SetChecked(ColorPlayerHealth);
	JDHPOptionsDisplayColorPlayerMana:SetChecked(ColorPlayerMana);
	JDHPOptionsDisplayColorPlayerHealthBar:SetChecked(ColorPlayerHealthBar);

	JDHPOptionsDisplayPlayerBarHealth:SetChecked(PlayerBarHealth);
	JDHPOptionsDisplayPlayerBarMana:SetChecked(PlayerBarMana);
	JDHPOptionsDisplayPlayerBarMaxes:SetChecked(PlayerBarMaxes);
	JDHPOptionsDisplayPlayerBarMissing:SetChecked(PlayerBarMissing);
	JDHPOptionsDisplayPlayerBarHealthPer:SetChecked(PlayerBarHealthPer);
	JDHPOptionsDisplayPlayerBarManaPer:SetChecked(PlayerBarManaPer);

	JDHPOptionsDisplayTargetSideHealth:SetChecked(TargetSideHealth);
	JDHPOptionsDisplayTargetSideMana:SetChecked(TargetSideMana);
	JDHPOptionsDisplayTargetSideMaxes:SetChecked(TargetSideMaxes);
	JDHPOptionsDisplayTargetSideMissing:SetChecked(TargetSideMissing);
	JDHPOptionsDisplayTargetSideHealthPer:SetChecked(TargetSideHealthPer);
	JDHPOptionsDisplayTargetSideManaPer:SetChecked(TargetSideManaPer);

	JDHPOptionsDisplayColorTargetHealth:SetChecked(ColorTargetHealth);
	JDHPOptionsDisplayColorTargetMana:SetChecked(ColorTargetMana);
	JDHPOptionsDisplayColorTargetHealthBar:SetChecked(ColorTargetHealthBar);

	JDHPOptionsDisplayTargetBarHealth:SetChecked(TargetBarHealth);
	JDHPOptionsDisplayTargetBarMana:SetChecked(TargetBarMana);
	JDHPOptionsDisplayTargetBarMaxes:SetChecked(TargetBarMaxes);
	JDHPOptionsDisplayTargetBarMissing:SetChecked(TargetBarMissing);
	JDHPOptionsDisplayTargetBarHealthPer:SetChecked(TargetBarHealthPer);
	JDHPOptionsDisplayTargetBarManaPer:SetChecked(TargetBarManaPer);

	JDHPOptionsDisplayExp:SetChecked(Exp);
	JDHPOptionsDisplayTnl:SetChecked(Tnl);
	JDHPOptionsDisplayBarExp:SetChecked(BarExp);
	JDHPOptionsDisplayActualExp:SetChecked(ActualExp);
	-- JDHPOptionsDisplayMoveExp:SetChecked(MoveExp);
	JDHPOptionsDisplayAutohideExp:SetChecked(AutohideExp);

	JDHPOptionsDisplayMoveTarget:SetChecked(MoveTarget);
	JDHPOptionsDisplayTargetFramePos:SetValue(TargetFramePos);
	JDHPOptionsDisplayTargetFrameVertPos:SetValue(TargetFrameVertPos);
	JDHPOptionsDisplayPlayerSideCharges:SetChecked(PlayerSideCharges);
	JDHPOptionsDisplayColorPlayerName:SetChecked(ColorPlayerName);
	JDHPOptionsDisplayEnergyPercent:SetChecked(EnergyPercent);
	JDHPOptionsDisplayRagePercent:SetChecked(RagePercent);

end

function JDHP_OptionsFrame_Save()
	-- Player Side

	if(JDHPOptionsDisplayPlayerSideHealth:GetChecked() == 1) then
		PlayerSideHealth = 1;
	else
		PlayerSideHealth = 0;
	end
	if(JDHPOptionsDisplayPlayerSideMana:GetChecked() == 1) then
		PlayerSideMana = 1;
	else
		PlayerSideMana = 0;
	end
	if(JDHPOptionsDisplayPlayerSideMaxes:GetChecked() == 1) then
		PlayerSideMaxes = 1;
	else
		PlayerSideMaxes = 0;
	end
	if(JDHPOptionsDisplayPlayerSideMissing:GetChecked() == 1) then
		PlayerSideMissing = 1;
	else
		PlayerSideMissing = 0;
	end
	if(JDHPOptionsDisplayPlayerSideHealthPer:GetChecked() == 1) then
		PlayerSideHealthPer = 1;
	else
		PlayerSideHealthPer = 0;
	end
	if(JDHPOptionsDisplayPlayerSideManaPer:GetChecked() == 1) then
		PlayerSideManaPer = 1;
	else
		PlayerSideManaPer = 0;
	end

	-- Player Bar

	if(JDHPOptionsDisplayPlayerBarHealth:GetChecked() == 1) then
		PlayerBarHealth = 1;
	else
		PlayerBarHealth = 0;
	end
	if(JDHPOptionsDisplayPlayerBarMana:GetChecked() == 1) then
		PlayerBarMana = 1;
	else
		PlayerBarMana = 0;
	end
	if(JDHPOptionsDisplayPlayerBarMaxes:GetChecked() == 1) then
		PlayerBarMaxes = 1;
	else
		PlayerBarMaxes = 0;
	end
	if(JDHPOptionsDisplayPlayerBarMissing:GetChecked() == 1) then
		PlayerBarMissing = 1;
	else
		PlayerBarMissing = 0;
	end
	if(JDHPOptionsDisplayPlayerBarHealthPer:GetChecked() == 1) then
		PlayerBarHealthPer = 1;
	else
		PlayerBarHealthPer = 0;
	end
	if(JDHPOptionsDisplayPlayerBarManaPer:GetChecked() == 1) then
		PlayerBarManaPer = 1;
	else
		PlayerBarManaPer = 0;
	end

	-- Player Colors

	if(JDHPOptionsDisplayColorPlayerHealth:GetChecked() == 1) then
		ColorPlayerHealth = 1;
	else
		ColorPlayerHealth = 0;
	end
	if(JDHPOptionsDisplayColorPlayerMana:GetChecked() == 1) then
		ColorPlayerMana = 1;
	else
		ColorPlayerMana = 0;
	end
	if(JDHPOptionsDisplayColorPlayerHealthBar:GetChecked() == 1) then
		ColorPlayerHealthBar = 1;
	else
		ColorPlayerHealthBar = 0;
	end

	-- Target Side

	if(JDHPOptionsDisplayTargetSideHealth:GetChecked() == 1) then
		TargetSideHealth = 1;
	else
		TargetSideHealth = 0;
	end
	if(JDHPOptionsDisplayTargetSideMana:GetChecked() == 1) then
		TargetSideMana = 1;
	else
		TargetSideMana = 0;
	end
	if(JDHPOptionsDisplayTargetSideMaxes:GetChecked() == 1) then
		TargetSideMaxes = 1;
	else
		TargetSideMaxes = 0;
	end
	if(JDHPOptionsDisplayTargetSideMissing:GetChecked() == 1) then
		TargetSideMissing = 1;
	else
		TargetSideMissing = 0;
	end
	if(JDHPOptionsDisplayTargetSideHealthPer:GetChecked() == 1) then
		TargetSideHealthPer = 1;
	else
		TargetSideHealthPer = 0;
	end
	if(JDHPOptionsDisplayTargetSideManaPer:GetChecked() == 1) then
		TargetSideManaPer = 1;
	else
		TargetSideManaPer = 0;
	end

	-- Target Bar

	if(JDHPOptionsDisplayTargetBarHealth:GetChecked() == 1) then
		TargetBarHealth = 1;
	else
		TargetBarHealth = 0;
	end
	if(JDHPOptionsDisplayTargetBarMana:GetChecked() == 1) then
		TargetBarMana = 1;
	else
		TargetBarMana = 0;
	end
	if(JDHPOptionsDisplayTargetBarMaxes:GetChecked() == 1) then
		TargetBarMaxes = 1;
	else
		TargetBarMaxes = 0;
	end
	if(JDHPOptionsDisplayTargetBarMissing:GetChecked() == 1) then
		TargetBarMissing = 1;
	else
		TargetBarMissing = 0;
	end
	if(JDHPOptionsDisplayTargetBarHealthPer:GetChecked() == 1) then
		TargetBarHealthPer = 1;
	else
		TargetBarHealthPer = 0;
	end
	if(JDHPOptionsDisplayTargetBarManaPer:GetChecked() == 1) then
		TargetBarManaPer = 1;
	else
		TargetBarManaPer = 0;
	end

	-- Target Colors

	if(JDHPOptionsDisplayColorTargetHealth:GetChecked() == 1) then
		ColorTargetHealth = 1;
	else
		ColorTargetHealth = 0;
	end
	if(JDHPOptionsDisplayColorTargetMana:GetChecked() == 1) then
		ColorTargetMana = 1;
	else
		ColorTargetMana = 0;
	end
	if(JDHPOptionsDisplayColorTargetHealthBar:GetChecked() == 1) then
		ColorTargetHealthBar = 1;
	else
		ColorTargetHealthBar = 0;
	end

	-- Miscellaneous 1

	if(JDHPOptionsDisplayExp:GetChecked() == 1) then
		Exp = 1;
	else
		Exp = 0;
	end
	if(JDHPOptionsDisplayTnl:GetChecked() == 1) then
		Tnl = 1;
	else
		Tnl = 0;
	end
	if(JDHPOptionsDisplayBarExp:GetChecked() == 1) then
		BarExp = 1;
	else
		BarExp = 0;
	end
	if(JDHPOptionsDisplayActualExp:GetChecked() == 1) then
		ActualExp = 1;
	else
		ActualExp = 0;
	end
	-- if(JDHPOptionsDisplayMoveExp:GetChecked() == 1) then
	-- 	MoveExp = 1;
	-- else
	-- 	MoveExp = 0;
	-- end
	if(JDHPOptionsDisplayAutohideExp:GetChecked() == 1) then
		AutohideExp = 1;
	else
		AutohideExp = 0;
	end

	-- Miscellaneous 2

	if(JDHPOptionsDisplayMoveTarget:GetChecked() == 1) then
		MoveTarget = 1;
	else
		MoveTarget = 0;
	end

	TargetFramePos = JDHPOptionsDisplayTargetFramePos:GetValue();
	TargetFrameVertPos = JDHPOptionsDisplayTargetFrameVertPos:GetValue();

	if(JDHPOptionsDisplayPlayerSideCharges:GetChecked() == 1) then
		PlayerSideCharges = 1;
	else
		PlayerSideCharges = 0;
	end
	if(JDHPOptionsDisplayColorPlayerName:GetChecked() == 1) then
		ColorPlayerName = 1;
	else
		ColorPlayerName = 0;
	end
	if(JDHPOptionsDisplayEnergyPercent:GetChecked() == 1) then
		EnergyPercent = 1;
	else
		EnergyPercent = 0;
	end
	if(JDHPOptionsDisplayRagePercent:GetChecked() == 1) then
		RagePercent = 1;
	else
		RagePercent = 0;
	end

	JDHP_RenderPlayerHealth();
	JDHP_RenderPlayerMana();
	JDHP_RenderPlayerCharges();
	JDHP_RenderPlayerExp();
	JDHP_RenderTargetHealth();
	JDHP_RenderTargetMana();
end
