local t = Def.ActorFrame {};

t[#t+1] = LoadFont("Common large") .. {
    Text="SETTINGS";
    InitCommand=cmd(Center;y,SCREEN_TOP+34;zoom,1);
  };
t[#t+1] = LoadFont("_montserrat light 30px") .. {
    Text="VV Entertainment\nTheme by itsgioshawn\nPlease support VV Entertainment\nofficial projects and artists.";
    InitCommand=cmd(Center;horizalign,right;x,SCREEN_RIGHT-10;y,SCREEN_BOTTOM-60;zoom,0.7);
  };
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		--Reset the vars, player options, etc here.
		ResetGame();
	end;
  };
return t
