class Types extends Object;

`include(Build.uci)
`include(Logger.uci)

struct ColorRGBA
{
	var byte R, G, B, A;
	
	StructDefaultProperties
	{
		R = 250
		G = 250
		B = 250
		A = 255
	}
};

struct Fields
{
	var bool Rank;
	var bool Player;
	var bool Level;
	var bool Perk;
	var bool Dosh;
	var bool Kills;
	var bool Assists;
	var bool Health;
	var bool Ping;
	
	StructDefaultProperties
	{
		Rank    = true;
		Player  = true;
		Level   = false;
		Perk    = false;
		Dosh    = false;
		Kills   = false;
		Assists = false;
		Health  = false;
		Ping    = false;
	}
};

struct RankInfo
{
	var int       ID;
	var string    Rank;
	var ColorRGBA TextColor;
	var bool      OverrideAdminRank;
	var Fields    ApplyColorToFields;
};

struct RankRelation
{
	var string ObjectID;
	var int    RankID;
	
	StructDefaultProperties
	{
		RankID = -999
	}
};

struct UIDRankRelation
{
	var UniqueNetId UID;
	var int RankID;
	
	StructDefaultProperties
	{
		RankID = -999
	}
};

struct SCESettingsAdmin
{
	var string    Rank;
	var ColorRGBA TextColor;
	var Fields    ApplyColorToFields;
	
	StructDefaultProperties
	{
		Rank               = "Admin"
		TextColor          = (R=250, G=0, B=0, A=255)
		ApplyColorToFields = (Rank=True, Player=True, Level=False, Perk=False, Dosh=False, Kills=False, Assists=False, Health=False, Ping=False)
	}
};

struct SCESettingsPlayer
{
	var string    Rank;
	var ColorRGBA TextColor;
	var Fields    ApplyColorToFields;
	
	StructDefaultProperties
	{
		Rank               = "Player"
		TextColor          = (R=250, G=250, B=250, A=255)
		ApplyColorToFields = (Rank=True, Player=True, Level=False, Perk=False, Dosh=False, Kills=False, Assists=False, Health=False, Ping=False)
	}
};

struct SCESettingsState
{	
	var bool Dynamic;
	var int Low;
	var int High;
	
	StructDefaultProperties
	{
		Dynamic = True
		Low     = 40
		High    = 80
	}
};

struct SCESettingsPing
{
	var bool Dynamic;
	var int Low;
	var int High;
	var bool ShowPingBars;
	
	StructDefaultProperties
	{
		Dynamic      = True
		Low          = 60
		High         = 120
		ShowPingBars = True
	}
};

struct SCESettingsLevel
{
	var bool Dynamic;
	var int Low[4];
	var int High[4];
	
	StructDefaultProperties
	{
		Dynamic = True
		Low [0] = 0
		High[0] = 0
		Low [1] = 5
		High[1] = 15
		Low [2] = 15
		High[2] = 20
		Low [3] = 20
		High[3] = 25
	}
};

struct SCEStyle
{
	var ColorRGBA ServerNameBoxColor;
	var ColorRGBA ServerNameTextColor;
	
	var ColorRGBA GameInfoBoxColor;
	var ColorRGBA GameInfoTextColor;
	
	var ColorRGBA WaveBoxColor;
	var ColorRGBA WaveTextColor;
	
	var ColorRGBA PlayerCountBoxColor;
	var ColorRGBA PlayerCountTextColor;
	
	var ColorRGBA ListHeaderBoxColor;
	var ColorRGBA ListHeaderTextColor;
	
	var ColorRGBA LeftStateBoxColor;
	var ColorRGBA LeftStateBoxColorDead;
	var ColorRGBA LeftStateBoxColorLow;
	var ColorRGBA LeftStateBoxColorMid;
	var ColorRGBA LeftStateBoxColorHigh;
	
	var ColorRGBA PlayerOwnerBoxColor;
	var ColorRGBA PlayerBoxColor;
	var ColorRGBA StatsBoxColor;
	
	var ColorRGBA RankTextColor;
	var ColorRGBA ZedTextColor;
	var ColorRGBA PerkTextColor;
	var ColorRGBA LevelTextColor;
	var ColorRGBA PlayerNameTextColor;
	var ColorRGBA KillsTextColor;
	var ColorRGBA AssistsTextColor;
	var ColorRGBA DoshTextColor;
	var ColorRGBA StateTextColor;
	var ColorRGBA PingTextColor;
	
	var ColorRGBA LevelTextColorLow;
	var ColorRGBA LevelTextColorMid;
	var ColorRGBA LevelTextColorHigh;

	var ColorRGBA StateTextColorLobby;
	var ColorRGBA StateTextColorReady;
	var ColorRGBA StateTextColorNotReady;
	var ColorRGBA StateTextColorSpectator;
	var ColorRGBA StateTextColorDead;
	var ColorRGBA StateTextColorLowHP;
	var ColorRGBA StateTextColorMidHP;
	var ColorRGBA StateTextColorHighHP;
	
	var ColorRGBA PingTextColorLow;
	var ColorRGBA PingTextColorMid;
	var ColorRGBA PingTextColorHigh;
	
	StructDefaultProperties
	{
		ServerNameBoxColor      = (R=75,  G=0,   B=0,   A=200)
		ServerNameTextColor     = (R=250, G=250, B=250, A=255)
		
		GameInfoBoxColor        = (R=30,  G=30,  B=30,  A=200)
		GameInfoTextColor       = (R=250, G=250, B=250, A=255)
		
		WaveBoxColor            = (R=10,  G=10,  B=10,  A=200)
		WaveTextColor           = (R=250, G=250, B=250, A=255)
		
		PlayerCountBoxColor     = (R=75,  G=0,   B=0,   A=200)
		PlayerCountTextColor    = (R=250, G=250, B=250, A=255)
		
		ListHeaderBoxColor      = (R=10,  G=10,  B=10,  A=200)
		ListHeaderTextColor     = (R=250, G=250, B=250, A=255)
		
		LeftStateBoxColor       = (R=150, G=150, B=150, A=150)
		LeftStateBoxColorDead   = (R=200, G=0,   B=0,   A=150)
		LeftStateBoxColorLow    = (R=200, G=50,  B=50,  A=150)
		LeftStateBoxColorMid    = (R=200, G=200, B=0,   A=150)
		LeftStateBoxColorHigh   = (R=0,   G=200, B=0,   A=150)
		
		PlayerOwnerBoxColor     = (R=100, G=10,  B=10,  A=150)
		PlayerBoxColor          = (R=30,  G=30,  B=30,  A=150)
		StatsBoxColor           = (R=10,  G=10,  B=10,  A=150)
		
		RankTextColor           = (R=250, G=250, B=250, A=255)
		ZedTextColor            = (R=255, G=0,   B=0,   A=255)
		PerkTextColor           = (R=250, G=250, B=250, A=255)
		LevelTextColor          = (R=250, G=250, B=250, A=255)
		PlayerNameTextColor     = (R=250, G=250, B=250, A=255)
		KillsTextColor          = (R=250, G=250, B=250, A=255)
		AssistsTextColor        = (R=250, G=250, B=250, A=255)
		DoshTextColor           = (R=250, G=250, B=100, A=255)
		StateTextColor          = (R=150, G=150, B=150, A=150)
		PingTextColor           = (R=250, G=250, B=250, A=255)
		
		LevelTextColorLow       = (R=250, G=100, B=100, A=255)
		LevelTextColorMid       = (R=250, G=250, B=0,   A=255)
		LevelTextColorHigh      = (R=0,   G=250, B=0,   A=255)
		
		StateTextColorLobby     = (R=150, G=150, B=150, A=150)
		StateTextColorReady     = (R=150, G=150, B=150, A=150)
		StateTextColorNotReady  = (R=150, G=150, B=150, A=150)
		StateTextColorSpectator = (R=150, G=150, B=150, A=150)
		StateTextColorDead      = (R=250, G=0,   B=0,   A=255)
		StateTextColorLowHP     = (R=250, G=100, B=100, A=255)
		StateTextColorMidHP     = (R=250, G=250, B=0,   A=255)
		StateTextColorHighHP    = (R=0,   G=250, B=0,   A=255)
		
		PingTextColorLow        = (R=0,   G=250, B=0,   A=255)
		PingTextColorMid        = (R=250, G=250, B=0,   A=255)
		PingTextColorHigh       = (R=250, G=0,   B=0,   A=255)
	}
};

struct SCESettings
{
	var SCEStyle Style;
	var SCESettingsAdmin Admin;
	var SCESettingsPlayer Player;
	var SCESettingsState State;
	var SCESettingsPing Ping;
	var SCESettingsLevel Level;
};

