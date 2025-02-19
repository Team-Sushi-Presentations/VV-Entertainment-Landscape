local LANG = "";

if ThemePrefs.Get("LanguagePreference") == "Korean" then
  LANG = "korean"
elseif ThemePrefs.Get("LanguagePreference") == "Japanese" then
  LANG = "japanese"
else
  LANG = "english"
end;

return Def.ActorFrame{
	Def.ActorFrame{
		LoadActor(THEME:GetPathG("","backgrounds/apoki.jpg")) ..{
			GainFocusCommand=cmd(finishtweening;decelerate,0.2;diffusealpha,1);
			LoseFocusCommand=cmd(finishtweening;stopeffect;decelerate,0.2;diffusealpha,0);
		};
	};
	Def.ActorFrame{
		LoadActor("info"..LANG) ..{
			OnCommand=cmd(zoom,0.8;addy,340);
			GainFocusCommand=cmd(finishtweening;addx,20;diffusealpha,0;decelerate,0.2;addx,-20;diffusealpha,1);
			LoseFocusCommand=cmd(finishtweening;stopeffect;decelerate,0.2;diffusealpha,0);
		};
	};
};