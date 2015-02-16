--[[
	Insight Release 9
	Author: Jerek Dain
	Email: jerekdain@gmail.com
	Website: http://www.jerekdain.com/
]]


-- ** DEFAULT SETTINGS ** --

-- You can change the numbers to set your default configuration
-- Once you've loaded a character with Insight installed the defaults will no longer be loaded on that server for that account! It will save your settings and reload those next time.
-- 0 means Off, 1 means On. Be sure to NOT CHANGE ANYTHING ELSE

-- Player Side Options --
if (PlayerSideHealth == nil) then PlayerSideHealth = 1; end   -- Display player's health on side?
if (PlayerSideMana == nil) then PlayerSideMana = 1; end   -- Display player's mana on side?
if (PlayerSideMaxes == nil) then PlayerSideMaxes = 0; end   -- Display player's max charges, health, and mana/rage/energy on side?
if (PlayerSideMissing == nil) then PlayerSideMissing = 0; end   -- Display amount missing from player's health and mana/rage/energy on side?
if (PlayerSideHealthPer == nil) then PlayerSideHealthPer = 0; end   -- Display player's health as a percentage on side?
if (PlayerSideManaPer == nil) then PlayerSideManaPer = 0; end   -- Display player's mana/rage/energy as a percentage on side?

-- Player Side Coloration --
if (ColorPlayerHealth == nil) then ColorPlayerHealth = 1; end   -- Color your health based on percentage? (Does not require health text to be displayed as a percentage)
if (ColorPlayerMana == nil) then ColorPlayerMana = 1; end   -- Color your mana/rage/energy based on what type it is?
if (ColorPlayerHealthBar == nil) then ColorPlayerHealthBar = 1; end   -- Color your health bar based on percentage? (Does not require mana/rage/energy text to be displayed as a percentage)

-- Player Bar Options --
if (PlayerBarHealth == nil) then PlayerBarHealth = 1; end   -- Display player's health on bar?
if (PlayerBarMana == nil) then PlayerBarMana = 1; end   -- Display player's mana on bar?
if (PlayerBarMaxes == nil) then PlayerBarMaxes = 0; end   -- Display player's max charges, health, and mana/rage/energy on bar?
if (PlayerBarMissing == nil) then PlayerBarMissing = 0; end   -- Display amount missing from player's health and mana/rage/energy on bar?
if (PlayerBarHealthPer == nil) then PlayerBarHealthPer = 1; end   -- Display player's health as a percentage on bar?
if (PlayerBarManaPer == nil) then PlayerBarManaPer = 1; end   -- Display player's mana/rage/energy as a percentage on bar?

-- Target Side Options --
if (TargetSideHealth == nil) then TargetSideHealth = 1; end   -- Display target's health?
if (TargetSideMana == nil) then TargetSideMana = 0; end   -- Display target's mana/energy/rage?
if (TargetSideMaxes == nil) then TargetSideMaxes = 0; end   -- Display target's max health and mana/rage/energy on side?
if (TargetSideMissing == nil) then TargetSideMissing = 0; end   -- Display amount missing from target's health and mana/rage/energy on side?
if (TargetSideHealthPer == nil) then TargetSideHealthPer = 1; end   -- Display target's health as a percentage on side?
if (TargetSideManaPer == nil) then TargetSideManaPer = 1; end   -- Display target's mana/rage/energy as a percentage on side?

-- Target Side Coloration --
if (ColorTargetHealth == nil) then ColorTargetHealth = 0; end   -- Color target's health based on percentage? (Does not require health text to be displayed as a percentage)
if (ColorTargetMana == nil) then ColorTargetMana = 0; end   -- Color target's mana/rage/energy based on what type it is?
if (ColorTargetHealthBar == nil) then ColorTargetHealthBar = 1; end   -- Color target's health bar based on percentage? (Does not require mana/rage/energy text to be displayed as a percentage)

-- Target Bar Options --
if (TargetBarHealth == nil) then TargetBarHealth = 1; end   -- Display target's health on bar?
if (TargetBarMana == nil) then TargetBarMana = 1; end   -- Display target's mana on bar?
if (TargetBarMaxes == nil) then TargetBarMaxes = 1; end   -- Display target's max health and mana/rage/energy on bar?
if (TargetBarMissing == nil) then TargetBarMissing = 0; end   -- Display amount missing from target's health and mana/rage/energy on bar?
if (TargetBarHealthPer == nil) then TargetBarHealthPer = 0; end   -- Display target's health as a percentage on bar?
if (TargetBarManaPer == nil) then TargetBarManaPer = 0; end   -- Display target's mana/rage/energy as a percentage on bar?

-- Miscellaneous 1 --
if (Exp == nil) then Exp = 1; end   -- Display EXP?
if (Tnl == nil) then Tnl = 1; end   -- Display TNL? (EXP To Next Level) If This is enabled with EXP off, it will take EXP's place.
if (BarExp == nil) then BarExp = 1; end   -- Display EXP and TNL in terms of bars.
if (ActualExp == nil) then ActualExp = 1; end   -- Display EXP and TNL in terms of actual values.
if (ForceDecimals == nil) then ForceDecimals = 0; end   -- Force display of decimals for values over 9,999.
if (AutohideExp == nil) then AutohideExp = 1; end   -- Hide EXP and TNL when on a max level character?

-- Miscellaneous 2 --
if (MoveTarget == nil) then MoveTarget = 1; end   -- Adjust the TargetFrame position?
if (TargetFramePos == nil) then TargetFramePos = 300; end  -- If adjusting the TargetFrame position, set x to what?
if (TargetFrameVertPos == nil) then TargetFrameVertPos = 4; end  -- If adjusting the TargetFrame position, set x to what?
if (PlayerSideCharges == nil) then PlayerSideCharges = 1; end   -- Display player's charges? (only shows when you have charges)
if (ColorPlayerName == nil) then ColorPlayerName = 1; end   -- Color your name when in combat? (Note: based on whether you have autoattack or autoshot on, not actual combat status)
if (EnergyPercent == nil) then EnergyPercent = 1; end   -- Allow Energy as a percentile?
if (RagePercent == nil) then RagePercent = 1; end   -- Allow Rage as a percentile?

-- That's the end of the Default Settings area!
-- You can ignore the rest of this file.

eventQueue = {};

-- ** ONLOAD SETUP ** --

function Insight_Log(message)
	if (message == nil) then
		DEFAULT_CHAT_FRAME:AddMessage("nil", 1, .5, .5);
	else
		DEFAULT_CHAT_FRAME:AddMessage(message, 1, 1, 1);
	end
end

function Insight_NumberFormat(num)
	local result;
	if num <= 9999 then
		result = num
	elseif num >= 1000000 then
		if num < 20000000 or ForceDecimals == 1 then
			result = format("%.1f M", num/1000000)
			result = string.gsub(result, "\.0 M", " M");
		else
			result = format("%d M", num/1000000)
		end
	elseif num >= 10000 then
		if num < 20000 or ForceDecimals == 1 then
			result = format("%.1f K", num/1000)
			result = string.gsub(result, "\.0 K", " K");
		else
			result = format("%d K", num/1000)
		end
	end
	return result;
end

function Insight_PlayerFrameOnLoad()
	SlashCmdList["INSIGHT_PRINTTNL"] = Insight_PrintTNL;
	SLASH_INSIGHT_PRINTTNL1 = "/tnl";
	SlashCmdList["INSIGHT_RL"] = function() ReloadUI(); end
	SLASH_INSIGHT_RL1 = "/rl";
	SLASH_INSIGHT_RL2 = "/reloadui";
	SlashCmdList["INSIGHT"] = Insight_SlashHandler;
	SLASH_INSIGHT1 = "/insight";
	SLASH_INSIGHT2 = "/jdhp";
	SlashCmdList["INSIGHTOPTIONS"] = function() InsightOptionsDisplay:Show(); end
	SLASH_INSIGHTOPTIONS1 = "/insightoptions";
	SLASH_INSIGHTOPTIONS2 = "/jdhpoptions";
	SLASH_INSIGHTOPTIONS3 = "/insighto";
	SLASH_INSIGHTOPTIONS4 = "/jdhpo";

	local blankFrame = CreateFrame('Frame');
	blankFrame:RegisterEvent("PET_BAR_UPDATE");
	blankFrame:RegisterEvent("PET_STABLE_UPDATE");
	blankFrame:RegisterEvent("PET_UI_UPDATE");

	blankFrame:RegisterEvent("PLAYER_ALIVE");
	blankFrame:RegisterEvent("PLAYER_DEAD");

	blankFrame:RegisterEvent("PLAYER_ENTER_COMBAT");
	blankFrame:RegisterEvent("PLAYER_LEAVE_COMBAT");
	blankFrame:RegisterEvent("PLAYER_LEVEL_UP");
	blankFrame:RegisterEvent("PLAYER_TARGET_CHANGED");
	blankFrame:RegisterEvent("PLAYER_XP_UPDATE");
	blankFrame:RegisterEvent("PLAYER_TOTEM_UPDATE");

	blankFrame:RegisterEvent("UNIT_AURA");
	blankFrame:RegisterEvent("UNIT_DISPLAYPOWER");
	blankFrame:RegisterEvent("UNIT_HEALTH");
	blankFrame:RegisterEvent("UNIT_MAXPOWER");
	-- blankFrame:RegisterEvent("UNIT_MODEL_CHANGED");
	blankFrame:RegisterEvent("UNIT_POWER");

	blankFrame:RegisterEvent("UPDATE_SHAPESHIFT_FORM");
	blankFrame:RegisterEvent("UPDATE_EXHAUSTION");
	blankFrame:RegisterEvent("VARIABLES_LOADED");

	blankFrame:SetScript("OnEvent", function(self, event, eventArg)
		Insight_PlayerFrameEventHandler(event, eventArg);
	end);
end

-- ** ONEVENT HANDLERS ** --

function Insight_PlayerFrameEventHandler (event, eventArg)
	if (event == "UNIT_POWER" or event == "UNIT_MODEL_CHANGED" or event == "UNIT_DISPLAYPOWER") then
		if (eventArg == "player") then
			Insight_RenderUnitValues('player', 'mana');
			Insight_RenderPlayerCharges();
		elseif (eventArg == "target") then
			Insight_RenderUnitValues('target', 'mana');
		end
	elseif (event == "UNIT_HEALTH") then
		if (eventArg == "player") then
			Insight_RenderUnitValues('player', 'health');
		elseif (eventArg == "target") then
			Insight_RenderUnitValues('target', 'health');
		end
	elseif (event == "PLAYER_TARGET_CHANGED") then
		Insight_RenderPlayerCharges();
		Insight_RenderUnitValues('target', 'health');
		Insight_RenderUnitValues('target', 'mana');
	elseif(event == "PLAYER_XP_UPDATE" or event == "UPDATE_EXHAUSTION" or event == "PLAYER_LEVEL_UP") then
		Insight_RenderPlayerExp();
	elseif (event == "PLAYER_ENTER_COMBAT" or event == "PLAYER_LEAVE_COMBAT") then
		Insight_RenderNameColor();
	elseif (event == "UNIT_AURA" or event == "PET_BAR_UPDATE" or event == "PET_UI_UPDATE" or event == "PLAYER_TOTEM_UPDATE" or event == "UPDATE_SHAPESHIFT_FORM") then
		Insight_RenderPlayerExp();
	elseif (event == "PLAYER_ALIVE" or event == "PLAYER_DEAD") then
		Insight_RenderUnitValues('player', 'health');
		Insight_RenderUnitValues('player', 'mana');
		Insight_RenderPlayerCharges();
		Insight_RenderPlayerExp();
	elseif (event == "PLAYER_ENTERING_WORLD") then
		Insight_RenderPlayerCharges();
		Insight_RenderUnitValues('player', 'health');
		Insight_RenderUnitValues('player', 'mana');
		Insight_RenderPlayerExp();
	elseif (event == "VARIABLES_LOADED") then
		Insight_RenderPlayerCharges();
		Insight_RenderUnitValues('player', 'health');
		Insight_RenderUnitValues('player', 'mana');
		Insight_RenderPlayerExp();
	end
end

-- ** NAME COLORATION ** --

function Insight_RenderNameColor()
	if (ColorPlayerName == 1) then
		local playerFrame = getglobal("PlayerFrame");
		if (playerFrame.inCombat and playerFrame.OnHateList or playerFrame.inCombat) then
			PlayerName:SetTextColor(1, 0.5, 0);
		else
			PlayerName:SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
		end
	else
		PlayerName:SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
	end
end

-- ** TEXT DISPLAY FUNCTIONS ** --

function Insight_RenderPlayerCharges()
	if (PlayerSideCharges == 1 and CurrentManaType == 3) then
		local charges = GetComboPoints("player");

		if (charges ~= 0) then
			local maxcharges = MAX_COMBO_POINTS;
			if (PlayerSideMaxes == 1) then
				chargeinfo = charges .. " / " .. maxcharges;
			else
				chargeinfo = charges;
			end
			InsightDisplay_PlayerSideCharges:SetText(chargeinfo);
		else
			InsightDisplay_PlayerSideCharges:SetText("");
		end
	else
		InsightDisplay_PlayerSideCharges:SetText("");
	end
end

function Insight_FormatValues(unit, type, value_current, value_max, Option_AsPer, Option_ShowMaxes, Option_ShowMissing)
	local currentText = Insight_FormatCurrentValue(unit, type, value_current, value_max, Option_AsPer, Option_ShowMissing);
	if (currentText == '') then
		return '';
	end
	return currentText .. Insight_FormatMaxValue(type, value_max, Option_AsPer, Option_ShowMaxes);
end

function Insight_PercentageAllowedForThisType(type)
	if (type == 'mana') then
		if (CurrentManaType == 1) then -- Rage
			if (RagePercent == 1) then
				return 1;
			end
		elseif (CurrentManaType == 3) then -- Energy
			if (EnergyPercent == 1) then
				return 1;
			end
		elseif (PlayerBarManaPer == 1) then -- Not Rage or Energy, must be Mana or an unknown Mana type
			return 1;
		end
	else -- Health/unknown
		return 1;
	end
	return 0;
end

function Insight_FormatCurrentValue(unit, type, value_current, value_max, Option_AsPer, Option_ShowMissing)
	local percent = (tonumber(value_current) / tonumber(value_max)) * 100;
	if (tonumber(value_max) == 0) then
		percent = 0;
	end
	if (Option_ShowMissing == 1) then
		local missing = value_max - value_current;
		if (missing == 0) then
			return '';
		end
		if (Option_AsPer == 1 and Insight_PercentageAllowedForThisType(type) == 1) then
			return '-' .. ceil(100 - percent) .. '%';
		else
			return '-' .. Insight_NumberFormat(missing);
		end
	else
		if (Option_AsPer == 1 and Insight_PercentageAllowedForThisType(type) == 1) then
			return ceil(percent) .. '%';
		else
			return Insight_NumberFormat(value_current);
		end
	end
end

function Insight_FormatMaxValue(type, value_max, Option_AsPer, Option_ShowMaxes)
	if (Option_ShowMaxes == 0) then
		return '';
	end;

	if (Option_AsPer == 1 and Insight_PercentageAllowedForThisType(type) == 1) then
		return ' / 100%';
	else
		return ' / ' .. Insight_NumberFormat(value_max);
	end
end

function Insight_UpdateText(unit, type, spot, Option_Show, TextFrame, value_current, value_max, Option_AsPer, Option_ShowMaxes, Option_ShowMissing, Option_Color, Frame_Bar, status_dead)
	if (Option_Show == 1) then
		if (spot == 'bar' and InCombatLockdown() ~= 1) then
			if (unit == 'player') then
				if (type == 'health') then
					PlayerFrameHealthBarText:SetWidth(1);
				elseif (type == 'mana') then
					PlayerFrameManaBarText:SetWidth(1);
				end
			elseif (unit == 'target') then
				if (type == 'health') then
					TargetFrameTextureFrameHealthBarText:SetWidth(1);
				elseif (type == 'mana') then
					TargetFrameTextureFrameManaBarText:SetWidth(1);
				end
			end
		end
		if (status_dead == 1) then
			if (Option_AsPer == 1 and unit ~= 'target' and type == 'health') then
				TextFrame:SetText('Dead');
				if (spot == 'side') then
					TextFrame:SetTextColor(1, 0, 0);
				end
			else
				TextFrame:SetText('');
			end
		else
			TextFrame:SetText(Insight_FormatValues(unit, type, value_current, value_max, Option_AsPer, Option_ShowMaxes, Option_ShowMissing));
			if (type == 'health') then
				Insight_UpdateHealthColor(spot, TextFrame, value_current, value_max, Option_Color, Frame_Bar);
			elseif (type == 'mana') then
				Insight_UpdateManaColor(  spot, TextFrame,						   Option_Color);
			end
		end
	else
		TextFrame:SetText("");
		if (spot == 'bar' and InCombatLockdown() ~= 1) then
			TextFrame:SetWidth(115);
		end
	end
end

function Insight_UpdateHealthColor(spot, TextFrame, value_current, value_max, Option_Color, Frame_Bar)
	local percent = (tonumber(value_current) / tonumber(value_max)) * 100;
	if (spot == 'side') then
		if (Option_Color == 1) then
			if ((percent <= 100) and (percent > 75)) then
				TextFrame:SetTextColor(0, 1, 0);
			elseif ((percent <= 75) and (percent > 50)) then
				TextFrame:SetTextColor(1, 1, 0);
			elseif ((percent <= 50) and (percent > 25)) then
				TextFrame:SetTextColor(1, 0.5, 0);
			else
				TextFrame:SetTextColor(1, 0, 0);
			end
		else
			TextFrame:SetTextColor(0, 1, 0);
		end
	end
	if (spot == 'bar') then
		if (Option_Color == 1 and Frame_Bar ~= 0) then
			if ((percent <= 100) and (percent > 75)) then
				Frame_Bar:SetStatusBarColor(0, 1, 0);
			elseif ((percent <= 75) and (percent > 50)) then
				Frame_Bar:SetStatusBarColor(1, 1, 0);
			elseif ((percent <= 50) and (percent > 25)) then
				Frame_Bar:SetStatusBarColor(1, 0.5, 0);
			else
				Frame_Bar:SetStatusBarColor(1, 0, 0);
			end
		else
			Frame_Bar:SetStatusBarColor(0, 1, 0);
		end
	end
end

function Insight_UpdateManaColor(spot, TextFrame, Option_Color)
	if (spot == 'side') then
		if (Option_Color == 1) then
			if (CurrentManaType == 1) then
				TextFrame:SetTextColor(1, 0.50, 0.50);
			elseif (CurrentManaType == 3) then
				TextFrame:SetTextColor(1, 1, 0);
			else
				TextFrame:SetTextColor(0.75, 0.75, 1);
			end
		else
			TextFrame:SetTextColor(0, 1, 0);
		end
	end
end

function Insight_ProcessValues(unit, type)
	if (unit == 'player') then
		if (type == 'health') then
			if (PlayerSideHealth == 1 or PlayerBarHealth == 1 or ColorPlayerHealthBar == 1) then
				return 1;
			end
		elseif (type == 'mana') then
			if (PlayerSideMana == 1 or PlayerBarMana == 1) then
				return 1;
			end
		end
	elseif (unit == 'target') then
		if (type == 'health') then
			if ((TargetSideHealth == 1 or TargetBarHealth == 1) and UnitExists("target") == 1) then
				-- KEEPING OLD CODE FOR REFERENCE: and ((UnitIsPlayer("target") == 0) or (UnitInParty("target") or UnitInRaid("target") or UnitIsUnit("target", "pet")))
				return 1;
			end
		elseif (type == 'mana') then
			if ((TargetSideMana == 1 or TargetBarMana == 1) and UnitExists("target") == 1) then
				return 1;
			end
		end
	end
	return 0;
end

function Insight_RenderUnitValues(unit, type)
	local TextFrame_Side, TextFrame_Bar = 0;
	if (unit == 'player' and type == 'health') then
		TextFrame_Side = InsightDisplay_PlayerSideHealth;
		TextFrame_Bar  = InsightDisplay_PlayerBarHealth;
	elseif (unit == 'player' and type == 'mana') then
		TextFrame_Side = InsightDisplay_PlayerSideMana;
		TextFrame_Bar  = InsightDisplay_PlayerBarMana;
	elseif (unit == 'target' and type == 'health') then
		TextFrame_Side = InsightDisplay_TargetSideHealth;
		TextFrame_Bar  = InsightDisplay_TargetBarHealth;
	elseif (unit == 'target' and type == 'mana') then
		TextFrame_Side = InsightDisplay_TargetSideMana;
		TextFrame_Bar  = InsightDisplay_TargetBarMana;
	end
	if (Insight_ProcessValues(unit, type) == 1) then
		if (unit == 'target') then
			if (MoveTarget == 1) then
				TargetFrameVertPosTemp = 0 - TargetFrameVertPos;
				TargetFrame:SetPoint("TOPLEFT", "UIParent", "TOPLEFT", TargetFramePos, TargetFrameVertPosTemp);
			else
				TargetFrame:SetPoint("TOPLEFT", "UIParent", "TOPLEFT", 250, -4);
			end
		end
		-- situational variables
		local value_current, value_max = 0;
		local status_dead = UnitIsDeadOrGhost(unit);
		-- Options and Frames
		local Option_Side_Show, Option_Side_AsPer, Option_Side_ShowMaxes, Option_Side_ShowMissing, Option_Side_Color		   = 0;
		local Option_Bar_Show,  Option_Bar_AsPer,  Option_Bar_ShowMaxes,  Option_Bar_ShowMissing,  Option_Bar_Color, Frame_Bar = 0;

		if (unit == 'player') then
			Option_Side_ShowMaxes = PlayerSideMaxes;
			Option_Side_ShowMissing = PlayerSideMissing;
			Option_Bar_ShowMaxes = PlayerBarMaxes;
			Option_Bar_ShowMissing = PlayerBarMissing;
		elseif (unit == 'target') then
			Option_Side_ShowMaxes = TargetSideMaxes;
			Option_Side_ShowMissing = TargetSideMissing;
			Option_Bar_ShowMaxes = TargetBarMaxes;
			Option_Bar_ShowMissing = TargetBarMissing;
		end
		if (type == 'health') then
			value_current = UnitHealth(unit);
			value_max = UnitHealthMax(unit);

			if (unit == 'player') then
				Option_Side_Show = PlayerSideHealth;
				Option_Side_AsPer = PlayerSideHealthPer;
				Option_Side_Color = ColorPlayerHealth;
				Option_Bar_Show = PlayerBarHealth;
				Option_Bar_AsPer = PlayerBarHealthPer;
				Option_Bar_Color = ColorPlayerHealthBar;
				Frame_Bar = PlayerFrameHealthBar;
			elseif (unit == 'target') then
				Option_Side_Show = TargetSideHealth;
				Option_Side_AsPer = TargetSideHealthPer;
				Option_Side_Color = ColorTargetHealth;
				Option_Bar_Show = TargetBarHealth;
				Option_Bar_AsPer = TargetBarHealthPer;
				Option_Bar_Color = ColorTargetHealthBar;
				Frame_Bar = TargetFrameHealthBar;
			end
		elseif (type == 'mana') then
			value_current = UnitMana(unit);
			value_max = UnitManaMax(unit);
			CurrentManaType = UnitPowerType(unit); -- 0 = mana; 1 = rage; 2 = focus; 3 = energy; 4 = happiness

			if (unit == 'player') then
				Option_Side_Show = PlayerSideMana;
				Option_Side_AsPer = PlayerSideManaPer;
				Option_Side_Color = ColorPlayerMana;
				Option_Bar_Show = PlayerBarMana;
				Option_Bar_AsPer = PlayerBarManaPer;
				Option_Bar_Color = ColorPlayerManaBar;
				Frame_Bar = PlayerFrameManaBar;
			elseif (unit == 'target') then
				Option_Side_Show = TargetSideMana;
				Option_Side_AsPer = TargetSideManaPer;
				Option_Side_Color = ColorTargetMana;
				Option_Bar_Show = TargetBarMana;
				Option_Bar_AsPer = TargetBarManaPer;
				Option_Bar_Color = ColorTargetManaBar;
				Frame_Bar = TargetFrameManaBar;
			end
		end

		Insight_UpdateText(unit, type, 'side', Option_Side_Show, TextFrame_Side, value_current, value_max, Option_Side_AsPer, Option_Side_ShowMaxes, Option_Side_ShowMissing, Option_Side_Color, 0,		 status_dead);
		Insight_UpdateText(unit, type, 'bar',  Option_Bar_Show,  TextFrame_Bar,  value_current, value_max, Option_Bar_AsPer,  Option_Bar_ShowMaxes,  Option_Bar_ShowMissing,  Option_Bar_Color,  Frame_Bar, status_dead);
	else
		TextFrame_Side:SetText("");
	end
end

-- ** EXPERIENCE BAR FUNCTIONS ** --

function Insight_RenderPlayerExp()
	Level = UnitLevel("player");
	if (AutohideExp == 1 and Level == 100) then
		InsightDisplay_PlayerExp:SetText("");
		InsightDisplay_PlayerTnl:SetText("");
	else
		local currXP = UnitXP("player");
		local nextXP = UnitXPMax("player");
		local restXP = GetXPExhaustion();
		local tnlXP = nextXP - currXP;

		local currXPFormatted = Insight_NumberFormat(currXP);
		local nextXPFormatted = Insight_NumberFormat(nextXP);
		local tnlXPFormatted = Insight_NumberFormat(tnlXP);

		Insight_AdjustExpPlacement();

		if (Exp == 1 and (BarExp == 1 or ActualExp == 1)) then
			if(restXP == nil) then
				if (BarExp == 1 and ActualExp == 0) then
					local barsXP = (floor(200 * (currXP / nextXP))) / 10;
					InsightDisplay_PlayerExp:SetText("EXP: " .. barsXP .. " bars");
				elseif (BarExp == 1 and ActualExp == 1) then
					local barsXP = (floor(200 * (currXP / nextXP))) / 10;
					InsightDisplay_PlayerExp:SetText("EXP: " .. barsXP .. " bars   |cFFAAAAAA" .. Insight_NumberFormat(currXP) .. " / " .. Insight_NumberFormat(nextXP));
				else
					InsightDisplay_PlayerExp:SetText(Insight_NumberFormat(currXP) .. " / " .. Insight_NumberFormat(nextXP));
				end
			else
				if (BarExp == 1 and ActualExp == 0) then
					local barsXP = (floor(200 * (currXP / nextXP))) / 10;
					local restbars = (floor(200 * (restXP / nextXP))) / 10;
					InsightDisplay_PlayerExp:SetText(barsXP .. " bars   |cFFAAAAAA" .. restbars .. " rested");
				elseif (BarExp == 1 and ActualExp == 1) then
					local barsXP = (floor(200 * (currXP / nextXP))) / 10;
					local restbars = (floor(200 * (restXP / nextXP))) / 10;
					InsightDisplay_PlayerExp:SetText(barsXP .. " bars   |cFFAAAAAA" .. Insight_NumberFormat(currXP) .. " / " .. Insight_NumberFormat(nextXP) .. "   |cFFFFFFFF" .. restbars .. " rested");
				else
					InsightDisplay_PlayerExp:SetText(Insight_NumberFormat(currXP) .. " / " .. Insight_NumberFormat(nextXP) .. " (+" .. (tonumber(restXP)/2) .. ")");
				end
			end
			if (Tnl == 1) then
				if (BarExp == 1 and ActualExp == 0) then
					local barsTNL = (ceil(200 * (tnlXP / nextXP))) / 10;
					InsightDisplay_PlayerTnl:SetText("TNL: " .. barsTNL .. " bars");
				elseif (BarExp == 1 and ActualExp == 1) then
					local barsTNL = (ceil(200 * (tnlXP / nextXP))) / 10;
					InsightDisplay_PlayerTnl:SetText("TNL: " .. barsTNL .. " bars   |cFFAAAAAA" .. Insight_NumberFormat(tnlXP));
				else
					InsightDisplay_PlayerTnl:SetText("TNL: " .. Insight_NumberFormat(tnlXP));
				end
			else
				InsightDisplay_PlayerTnl:SetText("");
			end
		else
			InsightDisplay_PlayerTnl:SetText("");
			if (Tnl == 1 and (BarExp == 1 or ActualExp == 1)) then
				if (restXP) then
					if (BarExp == 1 and ActualExp == 0) then
						local barsTNL = (ceil(200 * (tnlXP / nextXP))) / 10;
						local restbars = (floor(200 * (restXP / nextXP))) / 10;
						InsightDisplay_PlayerExp:SetText(barsTNL .. " bars (" .. restbars .. " rested)");
					elseif (BarExp == 1 and ActualExp == 1) then
						local barsTNL = (ceil(200 * (tnlXP / nextXP))) / 10;
						local restbars = (floor(200 * (restXP / nextXP))) / 10;
						InsightDisplay_PlayerExp:SetText(barsTNL .. " bars (" .. Insight_NumberFormat(tnlXP) .. ")   |cFFFFFFFF" .. restbars .. " rested");
					else
						InsightDisplay_PlayerExp:SetText(Insight_NumberFormat(tnlXP) .. " (+" .. Insight_NumberFormat(tonumber(restXP)/2) .. ")");
					end
				else
					if (BarExp == 1 and ActualExp == 0) then
						local barsTNL = (ceil(200 * (tnlXP / nextXP))) / 10;
						InsightDisplay_PlayerExp:SetText("TNL: " .. barsTNL .. " bars");
					elseif (BarExp == 1 and ActualExp == 1) then
						local barsTNL = (ceil(200 * (tnlXP / nextXP))) / 10;
						InsightDisplay_PlayerExp:SetText("TNL: " .. barsTNL .. " bars   |cFFAAAAAA" .. Insight_NumberFormat(tnlXP));
					else
						InsightDisplay_PlayerExp:SetText("TNL: " .. Insight_NumberFormat(tnlXP));
					end
				end
			else
				InsightDisplay_PlayerExp:SetText("");
			end
		end
	end
end

-- ** MOVE EXP/TNL WITH PET BUFFS ** --

function Insight_AdjustExpPlacement()
	local placementType = false;
	if (HasPetUI() == 1) then
		placementType = 'pet';
	else
		placementType = UnitClass('player');
	end

	local x = 105;
	local y = -75;
	-- FIXME: TODO: Druids and Shaman
	if (placementType == 'pet') then
		x = 125;
		y = -110;
	elseif (placementType == 'Monk') then
		y = -100;
	elseif (placementType == 'Death Knight') then
		y = -95;
	elseif (placementType == 'Priest') then
		local currentSpec = GetSpecialization()
		if (currentSpec) then
			local currentSpecName = currentSpec and select(2, GetSpecializationInfo(currentSpec)) or "None"
			if (currentSpecName == 'Shadow') then
				y = -104;
			end
		end
	elseif (placementType == 'Druid') then
		local currentSpec = GetSpecialization()
		if (currentSpec) then
			local currentSpecName = currentSpec and select(2, GetSpecializationInfo(currentSpec)) or "None"
			if (currentSpecName == 'Balance') then
				y = -100;
			end
		end
		local form = GetShapeshiftForm();
		if (form == 1 or form == 3) then -- Bear or Cat
			y = -87;
		elseif (form == 2 or form == 4 or form == 6) then -- Aquatic, Travel, or Flight
			y = -75;
		end
	elseif (placementType == 'Shaman') then
		if (select(1, GetTotemInfo(1)) == true or select(1, GetTotemInfo(2)) == true or select(1, GetTotemInfo(3)) == true or select(1, GetTotemInfo(4)) == true) then
			y = -113;
		end
	elseif (placementType == 'Warlock') then
		local currentSpec = GetSpecialization()
		if (currentSpec) then
			local currentSpecName = currentSpec and select(2, GetSpecializationInfo(currentSpec)) or "None"
			if (currentSpecName and currentSpecName ~= 'None') then
				y = -110;
			end
		end
	elseif (placementType == 'Paladin') then
		y = -107;
	end
	InsightDisplay_PlayerExp:SetPoint('LEFT', 'PlayerFrame', 'TOPLEFT', x, y)
	InsightDisplay_PlayerTnl:SetPoint('LEFT', 'PlayerFrame', 'TOPLEFT', x, y - 11)
end

-- ** TNL'S PRINT COMMAND ** --

function Insight_PrintTNL(msg)
	msg = string.lower(msg);
	local currXP = UnitXP("player");
	local nextXP = UnitXPMax("player");
	local restXP = GetXPExhaustion();
	local tnlXP = nextXP - currXP;
	local barsXP = (floor(200 * (currXP / nextXP))) / 10;
	local barsTNL = (ceil(200 * (tnlXP / nextXP))) / 10;
	local nextlvl = tonumber(UnitLevel("player")) + 1;
	local tnlinfo = nil;
	if (restXP) then
		local restbars = (floor(200 * (restXP / nextXP))) / 10;
		tnlinfo = INSIGHT_TNL_REPORT .. barsTNL .. INSIGHT_TNL_BARSTO .. nextlvl .. " (" .. restbars .. INSIGHT_TNL_RESTED .. ". " .. tnlXP .. " experience needed   " .. restXP .. " rested.";
	else
		tnlinfo = INSIGHT_TNL_REPORT .. barsTNL .. INSIGHT_TNL_BARSTO .. nextlvl .. ". " .. tnlXP .. " experience needed.";
	end
	if ((msg == "party" or msg == "p") and UnitInParty("player") or (msg == "raid" or msg == "r") and UnitInRaid("player") or msg == "say" or msg == "s" or msg == "battleground" or msg == "bg" or msg == "b" or (msg == "guild" or msg == "g" or msg == "officer" or msg == "o") and IsInGuild() == 1) then
		if (msg == "p") then
			msg = "PARTY";
		elseif (msg == "g") then
			msg = "GUILD";
		elseif (msg == "s") then
			msg = "SAY";
		elseif (msg == "r") then
			msg = "RAID";
		elseif (msg == "o") then
			msg = "OFFICER";
		elseif (msg == "bg" or msg == "b") then
			msg = "BATTLEGROUND";
		end
		SendChatMessage(tnlinfo, msg);
	elseif (msg == "w") then
		local wtarget = "FeatureIncomplete";
		SendChatMessage(tnlinfo, "WHISPER", nil, wtarget);
	elseif ((msg == "raid" or msg == "r") and not UnitInRaid("player") and UnitInParty("player")) then
		SendChatMessage(tnlinfo, "PARTY");
	elseif (msg == "" or msg == "party" or msg == "p" or msg == "raid" or msg == "r" or msg == "guild" or msg == "g" or msg == "officer" or msg == "o") then
		DEFAULT_CHAT_FRAME:AddMessage(tnlinfo, 0, 1, 1);
	else
		DEFAULT_CHAT_FRAME:AddMessage(INSIGHT_TNL_EXPLANATION1, 1, 1, 0);
		DEFAULT_CHAT_FRAME:AddMessage(INSIGHT_TNL_EXPLANATION2, 1, .65, 0);
		DEFAULT_CHAT_FRAME:AddMessage(INSIGHT_TNL_EXPLANATION3, 1, .65, 0);
		DEFAULT_CHAT_FRAME:AddMessage(INSIGHT_TNL_EXPLANATION4, 1, .65, 0);
		-- DEFAULT_CHAT_FRAME:AddMessage(INSIGHT_TNL_EXPLANATION5, 1, 1, 0);
	end
end

-- ** SLASH HANDLER FUNCTIONS ** --

function Insight_SlashHandler(msg)
	-- if (msg == "o" or msg == "options") then
	InsightOptionsDisplay:Show();
	DEFAULT_CHAT_FRAME:AddMessage(INSIGHT_SLASH_INSIGHT0, 1, 1, 0);
	DEFAULT_CHAT_FRAME:AddMessage(INSIGHT_SLASH_INSIGHT1, 1, 1, 0);
	DEFAULT_CHAT_FRAME:AddMessage(INSIGHT_SLASH_INSIGHT2, 1, .65, 0);
	DEFAULT_CHAT_FRAME:AddMessage(INSIGHT_SLASH_INSIGHT3, 1, .65, 0);
end

function Insight_QueueEvent(eventFunction, event, eventArg) -- Not used, saved for reference
	if (InCombatLockdown() ~= 1) then
		if (table.getn(eventQueue) > 0) then
			table.foreach(eventQueue, function(key, value)
				-- Do the things in the queue
				eventFunction(value[0], value[1]);
			end);
			eventQueue = {};
		end
		-- Do the current event
		eventFunction(event, eventArg);
	else
		-- Queue the event for later
		table.insert(eventQueue, { event, eventArg });
	end
end
