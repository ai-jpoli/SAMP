#include <a_samp>
#include <foreach>

#define MAX_WARININGS (2)
#define SMA 	SendMessageToAll // SendClientMessageToAll with string formats
#define SCM 	SendClientMessage
#define COLOR_LIGHTRED      0xFF6347FF
static warnings[MAX_PLAYERS char] = {0,...};

public OnFilterScriptInit()
{
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
	    warnings{i} = 0;
	}
	return 1;
}

public OnPlayerConnect(playerid)
{
	warnings{playerid} = 0;
	return 1;
}

public OnPlayerDisconnect(playerid)
{
	warnings{playerid} = 0;
	return 1;
}

public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid)
{
	new str[120];
	new Float:hp;
	GetPlayerHealth(playerid, hp);
	if(IsPlayerNPC(issuerid) || !IsPlayerInAnyVehicle(issuerid)) return 0;
	if(weaponid > 21 && weaponid < 34 || weaponid == 38)
	{
	    SetPlayerHealth(playerid, hp);
		TogglePlayerControllable(issuerid, 0);
		warnings{issuerid} ++;
		if(warnings{issuerid} < MAX_WARININGS)
		{
		    format(str, sizeof(str), "{FFFFFF}Dont use Driveby inside our city{FF0000}%d{FFFFFF}/{FF0000}%d", warnings{issuerid}, MAX_WARININGS);
		    ShowPlayerDialog(issuerid, 12221, DIALOG_STYLE_MSGBOX, "{FF0000}Drive-By Detector -3ton", str, "Ok", "");
		    TogglePlayerControllable(issuerid, 1);
		}
		if(warnings{issuerid} >= MAX_WARININGS)
		{
		    ShowPlayerDialog(issuerid, 12221, DIALOG_STYLE_MSGBOX, "{FF0000}Drive-By Detector", "{FF0000}You have been kicked for doing a drive-by", "Ok", "");
		    SetTimerEx("KickPlayer", 200, false, "i", issuerid);
		}
	}
	return 0;
}

forward KickPlayer(playerid);

public KickPlayer(playerid)
{

    new name[MAX_PLAYER_NAME + 1];
    GetPlayerName(playerid, name, sizeof(name));

    new string[MAX_PLAYER_NAME + 23 + 1];
    format(string, sizeof(string), "[BOBO BOT]:%s was kicked reason driveby", name);

	SendClientMessageToAll(COLOR_LIGHTRED, string);
	SetTimerEx("KickPlayer2", 200, false, "i", playerid);
	return 1;
}

forward KickPlayer2(playerid);

public KickPlayer2(playerid)
{
	return Kick(playerid);
}


//EOF.


