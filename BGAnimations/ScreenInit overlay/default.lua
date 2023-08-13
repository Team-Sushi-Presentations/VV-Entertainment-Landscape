local t = Def.ActorFrame {};

local LANG = "";

if ThemePrefs.Get("LanguagePreference") == "Korean" then
  LANG = "korean"
elseif ThemePrefs.Get("LanguagePreference") == "Japanese" then
	LANG = "japanese"
else
  LANG = "english"
end;

t[#t+1] = LoadActor("disclaimer"..LANG)..{
    InitCommand=cmd(zoom,0.57;Center);
};

t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		--Reset the vars, player options, etc here.
		ResetGame();
	end;
  };
return t


