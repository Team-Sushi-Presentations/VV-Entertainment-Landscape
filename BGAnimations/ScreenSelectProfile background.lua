local t = Def.ActorFrame {};
t[#t+1] = LoadActor(THEME:GetPathG("","backgrounds/gradient"))..{
	InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;Center);
};
return t


