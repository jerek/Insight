function Insight_OptionsFrame_OnShow()
	InsightOptionsDisplayPlayerSideHealth:SetChecked(PlayerSideHealth);
	InsightOptionsDisplayPlayerSideMana:SetChecked(PlayerSideMana);
	InsightOptionsDisplayPlayerSideMaxes:SetChecked(PlayerSideMaxes);
	InsightOptionsDisplayPlayerSideMissing:SetChecked(PlayerSideMissing);
	InsightOptionsDisplayPlayerSideHealthPer:SetChecked(PlayerSideHealthPer);
	InsightOptionsDisplayPlayerSideManaPer:SetChecked(PlayerSideManaPer);

	InsightOptionsDisplayColorPlayerHealth:SetChecked(ColorPlayerHealth);
	InsightOptionsDisplayColorPlayerMana:SetChecked(ColorPlayerMana);
	InsightOptionsDisplayColorPlayerHealthBar:SetChecked(ColorPlayerHealthBar);

	InsightOptionsDisplayPlayerBarHealth:SetChecked(PlayerBarHealth);
	InsightOptionsDisplayPlayerBarMana:SetChecked(PlayerBarMana);
	InsightOptionsDisplayPlayerBarMaxes:SetChecked(PlayerBarMaxes);
	InsightOptionsDisplayPlayerBarMissing:SetChecked(PlayerBarMissing);
	InsightOptionsDisplayPlayerBarHealthPer:SetChecked(PlayerBarHealthPer);
	InsightOptionsDisplayPlayerBarManaPer:SetChecked(PlayerBarManaPer);

	InsightOptionsDisplayTargetSideHealth:SetChecked(TargetSideHealth);
	InsightOptionsDisplayTargetSideMana:SetChecked(TargetSideMana);
	InsightOptionsDisplayTargetSideMaxes:SetChecked(TargetSideMaxes);
	InsightOptionsDisplayTargetSideMissing:SetChecked(TargetSideMissing);
	InsightOptionsDisplayTargetSideHealthPer:SetChecked(TargetSideHealthPer);
	InsightOptionsDisplayTargetSideManaPer:SetChecked(TargetSideManaPer);

	InsightOptionsDisplayColorTargetHealth:SetChecked(ColorTargetHealth);
	InsightOptionsDisplayColorTargetMana:SetChecked(ColorTargetMana);
	InsightOptionsDisplayColorTargetHealthBar:SetChecked(ColorTargetHealthBar);

	InsightOptionsDisplayTargetBarHealth:SetChecked(TargetBarHealth);
	InsightOptionsDisplayTargetBarMana:SetChecked(TargetBarMana);
	InsightOptionsDisplayTargetBarMaxes:SetChecked(TargetBarMaxes);
	InsightOptionsDisplayTargetBarMissing:SetChecked(TargetBarMissing);
	InsightOptionsDisplayTargetBarHealthPer:SetChecked(TargetBarHealthPer);
	InsightOptionsDisplayTargetBarManaPer:SetChecked(TargetBarManaPer);

	InsightOptionsDisplayExp:SetChecked(Exp);
	InsightOptionsDisplayTnl:SetChecked(Tnl);
	InsightOptionsDisplayBarExp:SetChecked(BarExp);
	InsightOptionsDisplayActualExp:SetChecked(ActualExp);
	InsightOptionsDisplayForceDecimals:SetChecked(ForceDecimals);
	InsightOptionsDisplayAutohideExp:SetChecked(AutohideExp);

	InsightOptionsDisplayMoveTarget:SetChecked(MoveTarget);
	InsightOptionsDisplayTargetFramePos:SetValue(TargetFramePos);
	InsightOptionsDisplayTargetFrameVertPos:SetValue(TargetFrameVertPos);
	InsightOptionsDisplayPlayerSideCharges:SetChecked(PlayerSideCharges);
	InsightOptionsDisplayColorPlayerName:SetChecked(ColorPlayerName);
	InsightOptionsDisplayEnergyPercent:SetChecked(EnergyPercent);
	InsightOptionsDisplayRagePercent:SetChecked(RagePercent);

end

function Insight_OptionsFrame_Save()
	-- Player Side

	if(InsightOptionsDisplayPlayerSideHealth:GetChecked() == 1) then
		PlayerSideHealth = 1;
	else
		PlayerSideHealth = 0;
	end
	if(InsightOptionsDisplayPlayerSideMana:GetChecked() == 1) then
		PlayerSideMana = 1;
	else
		PlayerSideMana = 0;
	end
	if(InsightOptionsDisplayPlayerSideMaxes:GetChecked() == 1) then
		PlayerSideMaxes = 1;
	else
		PlayerSideMaxes = 0;
	end
	if(InsightOptionsDisplayPlayerSideMissing:GetChecked() == 1) then
		PlayerSideMissing = 1;
	else
		PlayerSideMissing = 0;
	end
	if(InsightOptionsDisplayPlayerSideHealthPer:GetChecked() == 1) then
		PlayerSideHealthPer = 1;
	else
		PlayerSideHealthPer = 0;
	end
	if(InsightOptionsDisplayPlayerSideManaPer:GetChecked() == 1) then
		PlayerSideManaPer = 1;
	else
		PlayerSideManaPer = 0;
	end

	-- Player Bar

	if(InsightOptionsDisplayPlayerBarHealth:GetChecked() == 1) then
		PlayerBarHealth = 1;
	else
		PlayerBarHealth = 0;
	end
	if(InsightOptionsDisplayPlayerBarMana:GetChecked() == 1) then
		PlayerBarMana = 1;
	else
		PlayerBarMana = 0;
	end
	if(InsightOptionsDisplayPlayerBarMaxes:GetChecked() == 1) then
		PlayerBarMaxes = 1;
	else
		PlayerBarMaxes = 0;
	end
	if(InsightOptionsDisplayPlayerBarMissing:GetChecked() == 1) then
		PlayerBarMissing = 1;
	else
		PlayerBarMissing = 0;
	end
	if(InsightOptionsDisplayPlayerBarHealthPer:GetChecked() == 1) then
		PlayerBarHealthPer = 1;
	else
		PlayerBarHealthPer = 0;
	end
	if(InsightOptionsDisplayPlayerBarManaPer:GetChecked() == 1) then
		PlayerBarManaPer = 1;
	else
		PlayerBarManaPer = 0;
	end

	-- Player Colors

	if(InsightOptionsDisplayColorPlayerHealth:GetChecked() == 1) then
		ColorPlayerHealth = 1;
	else
		ColorPlayerHealth = 0;
	end
	if(InsightOptionsDisplayColorPlayerMana:GetChecked() == 1) then
		ColorPlayerMana = 1;
	else
		ColorPlayerMana = 0;
	end
	if(InsightOptionsDisplayColorPlayerHealthBar:GetChecked() == 1) then
		ColorPlayerHealthBar = 1;
	else
		ColorPlayerHealthBar = 0;
	end

	-- Target Side

	if(InsightOptionsDisplayTargetSideHealth:GetChecked() == 1) then
		TargetSideHealth = 1;
	else
		TargetSideHealth = 0;
	end
	if(InsightOptionsDisplayTargetSideMana:GetChecked() == 1) then
		TargetSideMana = 1;
	else
		TargetSideMana = 0;
	end
	if(InsightOptionsDisplayTargetSideMaxes:GetChecked() == 1) then
		TargetSideMaxes = 1;
	else
		TargetSideMaxes = 0;
	end
	if(InsightOptionsDisplayTargetSideMissing:GetChecked() == 1) then
		TargetSideMissing = 1;
	else
		TargetSideMissing = 0;
	end
	if(InsightOptionsDisplayTargetSideHealthPer:GetChecked() == 1) then
		TargetSideHealthPer = 1;
	else
		TargetSideHealthPer = 0;
	end
	if(InsightOptionsDisplayTargetSideManaPer:GetChecked() == 1) then
		TargetSideManaPer = 1;
	else
		TargetSideManaPer = 0;
	end

	-- Target Bar

	if(InsightOptionsDisplayTargetBarHealth:GetChecked() == 1) then
		TargetBarHealth = 1;
	else
		TargetBarHealth = 0;
	end
	if(InsightOptionsDisplayTargetBarMana:GetChecked() == 1) then
		TargetBarMana = 1;
	else
		TargetBarMana = 0;
	end
	if(InsightOptionsDisplayTargetBarMaxes:GetChecked() == 1) then
		TargetBarMaxes = 1;
	else
		TargetBarMaxes = 0;
	end
	if(InsightOptionsDisplayTargetBarMissing:GetChecked() == 1) then
		TargetBarMissing = 1;
	else
		TargetBarMissing = 0;
	end
	if(InsightOptionsDisplayTargetBarHealthPer:GetChecked() == 1) then
		TargetBarHealthPer = 1;
	else
		TargetBarHealthPer = 0;
	end
	if(InsightOptionsDisplayTargetBarManaPer:GetChecked() == 1) then
		TargetBarManaPer = 1;
	else
		TargetBarManaPer = 0;
	end

	-- Target Colors

	if(InsightOptionsDisplayColorTargetHealth:GetChecked() == 1) then
		ColorTargetHealth = 1;
	else
		ColorTargetHealth = 0;
	end
	if(InsightOptionsDisplayColorTargetMana:GetChecked() == 1) then
		ColorTargetMana = 1;
	else
		ColorTargetMana = 0;
	end
	if(InsightOptionsDisplayColorTargetHealthBar:GetChecked() == 1) then
		ColorTargetHealthBar = 1;
	else
		ColorTargetHealthBar = 0;
	end

	-- Miscellaneous 1

	if(InsightOptionsDisplayExp:GetChecked() == 1) then
		Exp = 1;
	else
		Exp = 0;
	end
	if(InsightOptionsDisplayTnl:GetChecked() == 1) then
		Tnl = 1;
	else
		Tnl = 0;
	end
	if(InsightOptionsDisplayBarExp:GetChecked() == 1) then
		BarExp = 1;
	else
		BarExp = 0;
	end
	if(InsightOptionsDisplayActualExp:GetChecked() == 1) then
		ActualExp = 1;
	else
		ActualExp = 0;
	end
	if(InsightOptionsDisplayForceDecimals:GetChecked() == 1) then
		ForceDecimals = 1;
	else
		ForceDecimals = 0;
	end
	if(InsightOptionsDisplayAutohideExp:GetChecked() == 1) then
		AutohideExp = 1;
	else
		AutohideExp = 0;
	end

	-- Miscellaneous 2

	if(InsightOptionsDisplayMoveTarget:GetChecked() == 1) then
		MoveTarget = 1;
	else
		MoveTarget = 0;
	end

	TargetFramePos = InsightOptionsDisplayTargetFramePos:GetValue();
	TargetFrameVertPos = InsightOptionsDisplayTargetFrameVertPos:GetValue();

	if(InsightOptionsDisplayPlayerSideCharges:GetChecked() == 1) then
		PlayerSideCharges = 1;
	else
		PlayerSideCharges = 0;
	end
	if(InsightOptionsDisplayColorPlayerName:GetChecked() == 1) then
		ColorPlayerName = 1;
	else
		ColorPlayerName = 0;
	end
	if(InsightOptionsDisplayEnergyPercent:GetChecked() == 1) then
		EnergyPercent = 1;
	else
		EnergyPercent = 0;
	end
	if(InsightOptionsDisplayRagePercent:GetChecked() == 1) then
		RagePercent = 1;
	else
		RagePercent = 0;
	end

	Insight_RenderUnitValues('player', 'health');
	Insight_RenderUnitValues('player', 'mana');
	Insight_RenderPlayerCharges();
	Insight_RenderPlayerExp();
	Insight_RenderUnitValues('target', 'health');
	Insight_RenderUnitValues('target', 'mana');
end
