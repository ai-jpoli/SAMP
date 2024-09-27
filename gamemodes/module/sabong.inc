
enum sEnum
{
	sExist,
	sStart,
	sTimer,
	sInside[MAX_PLAYERS],
	sPlayerRed,
	sPlayerBlue,
	sBet[MAX_PLAYERS],
	sBetRed[MAX_PLAYERS],
	sBetBlue[MAX_PLAYERS],
	sRed[MAX_PLAYERS],
	sBlue[MAX_PLAYERS],
	sTotalRed,
	sTotalBlue
};

new SabongInfo[sEnum];
new sabongskinred[MAX_PLAYERS],
	sabongskinblue[MAX_PLAYERS];

stock ShowPlayerSabongTextdraw(playerid)
{
	for(new s = 0; s < 15; s ++)
	{
		PlayerTextDrawShow(playerid, SabongTD[playerid][s]);	
	}

	ShowPlayerProgressBar(playerid, SabongBarTD[playerid][0]);
	ShowPlayerProgressBar(playerid, SabongBarTD[playerid][1]);
}

stock HidePlayerSabongTextdraw(playerid)
{
	for(new s = 0; s < 15; s ++)
	{
		PlayerTextDrawHide(playerid, SabongTD[playerid][s]);
	}
	HidePlayerProgressBar(playerid, SabongBarTD[playerid][0]);
	HidePlayerProgressBar(playerid, SabongBarTD[playerid][1]);
}

forward onSabongDone();
public onSabongDone()
{
	new pRed = SabongInfo[sPlayerRed],
		pBlue = SabongInfo[sPlayerBlue];

	SetFreezePos(pRed, PlayerInfo[pRed][pPosX], PlayerInfo[pRed][pPosY],PlayerInfo[pRed][pPosZ]);
	SetFreezePos(pBlue, PlayerInfo[pBlue][pPosX], PlayerInfo[pBlue][pPosY],PlayerInfo[pBlue][pPosZ]);

    SetPlayerSkin(pRed, PlayerInfo[pRed][pSkin]);
    SetPlayerSkin(pBlue, PlayerInfo[pBlue][pSkin]);

	SetScriptHealth(pRed, PlayerInfo[pRed][pHealth]);
	SetScriptHealth(pBlue, PlayerInfo[pBlue][pHealth]);

    SetScriptArmour(pRed, PlayerInfo[pRed][pArmor]);
    SetScriptArmour(pBlue, PlayerInfo[pBlue][pArmor]);

    SetPlayerFightingStyle(pRed, PlayerInfo[pRed][pFightStyle]);
    SetPlayerFightingStyle(pBlue, PlayerInfo[pBlue][pFightStyle]);

	SetPlayerWeapons(pRed);
    SetPlayerWeapons(pBlue);

	SabongInfo[sExist] = 0;
    SabongInfo[sStart] = 0;
    SabongInfo[sPlayerRed] = INVALID_PLAYER_ID;
    SabongInfo[sPlayerBlue] = INVALID_PLAYER_ID;
    SabongInfo[sRed] = 0;
    SabongInfo[sBlue] = 0;
	foreach(new i : Player)
	{
		PlayerInfo[i][pSabongBet] = 0;
    	SabongInfo[sBet][i] = 0;
		SabongInfo[sInside][i] = 0;
		SabongInfo[sBetRed][i] = 0;
		SabongInfo[sBetBlue][i] = 0;
	}

	SavePlayerVariables(pRed);
	SavePlayerVariables(pBlue);
}

public OnPlayerDisconnect(playerid, reason)
{
    if(SabongInfo[sExist] && (SabongInfo[sPlayerRed] == playerid || SabongInfo[sPlayerBlue] == playerid))
	{
		foreach(new i : Player)
		{
			GivePlayerCash(i, PlayerInfo[i][pSabongBet]);
		}
		onSabongDone();
	}
    #if defined SB_OnPlayerDisconnect
		return SB_OnPlayerDisconnect(playerid, reason);
	#else
		return 1;
	#endif
}

// OnPlayerDisconnect
#if defined _ALS_OnPlayerDisconnect
	#undef OnPlayerDisconnect
#else
	#define _ALS_OnPlayerDisconnect
#endif
#define OnPlayerDisconnect SB_OnPlayerDisconnect
#if defined SB_OnPlayerDisconnect
	forward SB_OnPlayerDisconnect(playerid, reason);
#endif

public OnPlayerDamage(&playerid, &Float:amount, &issuerid, &weapon, &bodypart)
{
	if(playerid != INVALID_PLAYER_ID && issuerid != INVALID_PLAYER_ID)
	{
        if(SabongInfo[sExist] && !SabongInfo[sStart])
		{
			if(SabongInfo[sPlayerRed] == issuerid || SabongInfo[sPlayerBlue] == issuerid)
			{
				SendClientMessage(issuerid, COLOR_YELLOW, "dont Punch while the Sabong is Not Starting");
				return 0;
			}
		}
    }
    #if defined SB_OnPlayerDamage
		return SB_OnPlayerDamage(playerid, amount, issuerid, weapon, bodypart);
	#else
		return 1;
	#endif
}

// OnPlayerDamage
#if defined _ALS_OnPlayerDamage
	#undef OnPlayerDamage
#else
	#define _ALS_OnPlayerDamage
#endif
#define OnPlayerDamage SB_OnPlayerDamage
#if defined SB_OnPlayerDamage
	forward SB_OnPlayerDamage(&playerid, &Float:amount, &issuerid, &weapon, &bodypart);
#endif

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_SABONG:
		{
			new string[2048];
			if(response)
			{
				if(!SabongInfo[sExist])
					return SendClientMessage(playerid, COLOR_SYNTAX, "Sabong is not Starting");

				SabongInfo[sInside][playerid] = 1;

				switch(listitem)
				{
					case 0:
					{
						// Red
						format(string, sizeof(string), "{FFFFFF}You are about to place a bet on %s {FF0000}Meron{FFFFFF}!\n\
                        Minimum Bet:{FFFFFF} $500\nMaximum Bet:{FFFFFF} $10,000\n\
                        {FFFF00}----------------------------------------\n\
                        {FF0000}Note: Once you lock your bet you won't able to turn back!\nWe're not responsible of your bet once you get DISCONNECTED from the Server so make sure\nBet Responsibly.\n\n\
                        Total of Bet:{FFFFFF} $%s\nNumber of Bet:{FFFFFF} %s\n\n{FFFF00}Please input your amount of bet below.",
                        GetRPName(SabongInfo[sPlayerRed]),
                    	AddCommas(SabongInfo[sTotalRed]),
                        AddCommas(SabongInfo[sBetRed]));
						ShowPlayerDialog(playerid, DIALOG_BET_MERON, DIALOG_STYLE_INPUT, "Sabong System:", string, "Enter.", "Back.");
					}
					case 1:
					{
						// Blue
						format(string, sizeof(string), 
						"{FFFFFF}You are about to place a bet on %s {0000FF}Wala{FFFFFF}!\n\
                        Minimum Bet:{FFFFFF} $500\nMaximum Bet:{FFFFFF} $10,000\n\
                        {FFFF00}----------------------------------------\n\
                        {FF0000}Note: Once you lock your bet you won't able to turn back!\nWe're not responsible of your bet once you get DISCONNECTED from the Server so make sure\nBet Responsibly.\n\n\
                        Total of Bet:{FFFFFF} $%s\nNumber of Bet:{FFFFFF} %s\n\n{FFFF00}Please input your amount of bet below.",
						GetRPName(SabongInfo[sPlayerRed]),
                    	AddCommas(SabongInfo[sTotalRed]),
                        AddCommas(SabongInfo[sBetRed]));
						ShowPlayerDialog(playerid, DIALOG_BET_WALA, DIALOG_STYLE_INPUT, "Sabong System:", string, "Enter.", "Back.");
					}
				}
			}
		}
		case DIALOG_BET_MERON:
		{
			new bet;
			if(sscanf(inputtext, "i", bet)) {
				return 1;
			}
			
			if(response)
			{
				if(bet > PlayerInfo[playerid][pCash])
					return SendMessage(playerid, COLOR_SYNTAX, "You can only pay up to $%s", AddCommas(PlayerInfo[playerid][pCash]));

				if(!(500 <= bet <= 10000)) {
					return SendClientMessage(playerid, COLOR_SYNTAX, "You can only pay from $500 to $10,000");
				}

				SabongInfo[sBet][playerid] = 1;
				SabongInfo[sBetRed][playerid] = 1;
				SabongInfo[sRed] += bet;
				GivePlayerCash(playerid, -bet);
				PlayerPlaySound(playerid, 1052, 0.0, 0.0, 0.0);
				SendMessage(playerid, COLOR_GREY, "SABONG: You have Voted for Meron. $%s", AddCommas(bet));

				PlayerInfo[playerid][pSabongBet] = bet;
			}
		}
		case DIALOG_BET_WALA:
		{
			new bet;
			if(sscanf(inputtext, "i", bet)) {
				return 1;
			}
			
			if(response)
			{
				if(bet > PlayerInfo[playerid][pCash])
					return SendMessage(playerid, COLOR_SYNTAX, "You can only pay up to $%s", AddCommas(PlayerInfo[playerid][pCash]));
				
				if(!(500 <= bet <= 10000)) {
					return SendClientMessage(playerid, COLOR_SYNTAX, "You can only pay from $500 to $10,000");
				}

				GivePlayerCash(playerid, -bet);
				PlayerPlaySound(playerid, 1052, 0.0, 0.0, 0.0);

				SabongInfo[sBet][playerid] = 1;
				SabongInfo[sBetBlue][playerid] = 1;
				SabongInfo[sBlue] += bet;
				
				SendMessage(playerid, COLOR_GREY, "SABONG: You have Voted for Wala. $%s", AddCommas(bet));

				PlayerInfo[playerid][pSabongBet] = bet;
			}
		}
    }
    #if defined SB_OnDialogResponse
		return SB_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	#else
		return 1;
	#endif
}

// OnDialogResponse
#if defined _ALS_OnDialogResponse
	#undef OnDialogResponse
#else
	#define _ALS_OnDialogResponse
#endif
#define OnDialogResponse SB_OnDialogResponse
#if defined SB_OnDialogResponse
	forward SB_OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]);
#endif

CMD:fixsabong(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 2)
		return SendClientMessage(playerid, COLOR_SYNTAX, "You are not Authoried to use this Command.");

	SabongInfo[sExist] = 0;
	SabongInfo[sStart] = 0;
	SendAdminMessage(COLOR_WHITE, "%s has Fixed the Sabong.", GetRPName(playerid));
	return 1;
}

CMD:sabong(playerid, params[])
{
	new timer, target1, target2, Float:health = 100;

	if(SabongInfo[sExist])
		return SendMessage(playerid, COLOR_SYNTAX, "** Sabong in on going.");

    if(PlayerInfo[playerid][pAdmin] < 2) {
	    return SendClientMessage(playerid, COLOR_SYNTAX, "You are not authorized to use this command.");
	}
	if(sscanf(params, "iuu", timer, target1, target2)) {
	    return SendClientMessage(playerid, COLOR_SYNTAX, "Usage: /sabong [timer] [player1] [player2]");
	}
	if(target1 == INVALID_PLAYER_ID || target2 == INVALID_PLAYER_ID) {
	    return SendClientMessage(playerid, COLOR_SYNTAX, "Invalid player specified.");
	}
	if(target1 == target2) {
		return SendClientMessage(playerid, COLOR_SYNTAX, "You cant set up a 1v1 on himself.");
	}


	SavePlayerVariables(target1);
	SavePlayerVariables(target2);

	ResetPlayerWeapons(target1);
	ResetPlayerWeapons(target2);

	SetPlayerPos(target1, 1041.8472,-902.1752,43.4689);
	SetPlayerPos(target2, 1045.6609,-898.0554,43.4689);

	SetPlayerInterior(target1, 0);
	SetPlayerInterior(target2, 0);
	SetPlayerVirtualWorld(target1, 0);
	SetPlayerVirtualWorld(target2, 0);

	SetScriptHealth(target1, health);
	SetScriptHealth(target2, health);
	SetScriptArmour(target1, 0.0);
	SetScriptArmour(target2, 0.0);


	SetPlayerFightingStyle(target1, FIGHT_STYLE_BOXING);
	SetPlayerFightingStyle(target2, FIGHT_STYLE_BOXING);

	GameTextForPlayer(target1, "~b~Sabong time!", 3000, 3);
	GameTextForPlayer(target2, "~r~Sabong time!", 3000, 3);
	
	sabongskinred[target1] = GetPlayerSkin(target1);
	sabongskinblue[target2] = GetPlayerSkin(target2);
	
	SetPlayerSkin(target1, 80);
	SetPlayerSkin(target2, 81);

	SabongInfo[sPlayerRed] = target1;
	SabongInfo[sPlayerBlue] = target2;

	SabongInfo[sInside][target1] = 1;
	SabongInfo[sInside][target2] = 1;
	
	SabongInfo[sExist] = 1;
	SabongInfo[sStart] = 0;
	SabongInfo[sTimer] = timer;

	foreach(new i : Player)
	{
		PlayerInfo[i][pSabongBet] = 0;
		SabongInfo[sBet][i] = 0;
		SabongInfo[sBetRed][i] = 0;
		SabongInfo[sBetBlue][i] = 0;
		SabongInfo[sRed] = 0;
		SabongInfo[sBlue] = 0;

		new string[1000];

		format(string, sizeof(string), "Payout = $%s", AddCommas(PlayerInfo[i][pSabongBet]));
		PlayerTextDrawSetString(i, SabongTD[i][10], string);

		format(string, sizeof(string), "Payout = $%s", AddCommas(PlayerInfo[i][pSabongBet]));
		PlayerTextDrawSetString(i, SabongTD[i][11], string);

		if(IsPlayerInRangeOfPoint(i, 50.0, area_bet_sabong))
		{
			SabongInfo[sInside][i] = 1;
		}
	}
	SendMessageToAll(COLOR_WHITE, "Sabong: the Battle will begin in %i Seconds. use(/bet)", timer);
	SendAdminMessage(COLOR_LIGHTRED, "System: %s has forced %s and %s into a Sabong.", GetRPName(playerid), GetRPName(target1), GetRPName(target2));
	return 1;
}

CMD:joinsabong(playerid, params[])
{
	if(!SabongInfo[sExist])
		return SendClientMessage(playerid, COLOR_SYNTAX, "Sabong is not on going.");
	
	SabongInfo[sInside][playerid] = 1;
	SendClientMessage(playerid, COLOR_GREY, "Sabong: You have Join Sabong, use (/bet) to bet for your side.");
	return 1;
}


CMD:bet(playerid, params[])
{
	new string[2048];

	if(!SabongInfo[sExist])
	{
		for(new s = 0; s < 15; s ++)
		{
			PlayerTextDrawHide(playerid, SabongTD[playerid][s]);
		}
		return SendMessage(playerid, COLOR_SYNTAX, "** Sabong in not on going.");
	}
	if(!IsPlayerInRangeOfPoint(playerid, 50.0, area_bet_sabong))
		return SendClientMessage(playerid, COLOR_SYNTAX, "Sabong: You need to be in the sabong area.");
	if(SabongInfo[sPlayerRed] == playerid || SabongInfo[sPlayerBlue] == playerid)
		return SendClientMessage(playerid, COLOR_SYNTAX, "Players cant bet for themself.");
	if(SabongInfo[sBet][playerid])
		return SendClientMessage(playerid, COLOR_WHITE, "Sabong: you already voted.");
	if(SabongInfo[sStart])
		return SendClientMessage(playerid, COLOR_SYNTAX, "Sabong: You cant bet this time since its already Starting.");
	if(PlayerInfo[playerid][pAdminDuty])
		return SendClientMessage(playerid, COLOR_SYNTAX, "Sabong: You cant bet while in Admin Duty.");
	
	format(string, sizeof(string), 
		"Player Name\tTeam\tTotal Bet\tNumber of Bets\n\
		%s\t{FF0000}Meron\t$%s\t%s\n\
		%s\t{0000FF}Wala\t$%s\t%s",

		GetRPName(SabongInfo[sPlayerRed]),
		AddCommas(SabongInfo[sTotalRed]),
		AddCommas(SabongInfo[sRed]),

		GetRPName(SabongInfo[sPlayerBlue]),
		AddCommas(SabongInfo[sTotalBlue]),
		AddCommas(SabongInfo[sBlue]));
	ShowPlayerDialog(playerid, DIALOG_SABONG, DIALOG_STYLE_TABLIST_HEADERS, "Sabong System:", string, "Enter.", "Back.");
	return 1;
}