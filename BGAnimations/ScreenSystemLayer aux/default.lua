local t = Def.ActorFrame {};
t[#t+1] = LoadActor("time")..{
};
t[#t+1] = LoadActor("life")..{
    InitCommand=function(self)
		self:xy(SCREEN_RIGHT-32,SCREEN_TOP+16);
		self:zoomx(0.18);
		self:zoomy(0.56);
	end;
};
t[#t+1] = LoadActor(THEME:GetPathG("","logo"))..{
	InitCommand=cmd(zoom,1.25;x,SCREEN_LEFT+46;y,SCREEN_BOTTOM-32);
};
return t