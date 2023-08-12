local t = Def.ActorFrame {};

t[#t+1] = LoadActor(THEME:GetPathG("","scroll/lechat"))..{
    InitCommand=cmd(zoomx,0.9;zoomy,0.5;rotationz,180;Center;y,SCREEN_BOTTOM-170);
    OnCommand=cmd(customtexturerect,1.7,0.5,0,0;texcoordvelocity,0.04,0);
  };
return t
