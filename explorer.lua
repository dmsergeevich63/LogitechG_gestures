--main
x_old=0
y_old=0
mode=0
x=0
y=0
xx=0
yy=0
abs_xx=0
abs_yy=0

--g2 = {[0]="ctrlf", [1]="", [2]="ctrlv", [3]="f5", [4]="ctrlc"}--pravay

g3 = {[0]="3", [1]="winshifts", [2]="enter", [3]="screen", [4]="del"}--koleso
--screen winshifts
g5 = {[0]="ctrlf", [1]="", [2]="ctrlv", [3]="f5", [4]="ctrlc"} --bok dalnya
g4 = {[0]="alttab", [1]="mute", [2]="winctrl+", [3]="", [4]="winctrl-"}--bok blojnia

--g6 = {[0]="right", [1]="", [2]="", [3]="", [4]="left"}--verxnia 
g6 = {[0]="", [1]="", [2]="", [3]="", [4]=""}--verxnia 

a = 1; -- Р   Р РЋРІР‚вЂќР   Р вЂ™Р’ВµР  Р Р‹Р  РІР‚С™Р   Р вЂ™Р’ВµР   Р РЋР’ВР   Р вЂ™Р’ВµР   Р  РІР‚В¦Р   Р  РІР‚В¦Р   Р вЂ™Р’В°Р  Р Р‹Р  Р РЏ Р   Р вЂ™Р’В°  
--while a < 20 do -- Р   Р  РІР‚ Р  Р Р‹Р Р†Р вЂљРІвЂћвЂ“Р   Р РЋРІР‚вЂќР   Р РЋРІР‚СћР   Р вЂ™Р’В»Р   Р  РІР‚В¦Р  Р Р‹Р  Р РЏР  Р Р‹Р Р†Р вЂљРЎв„ўР  Р Р‹Р  Р вЂ° Р  Р Р‹Р Р†Р вЂљ Р   Р РЋРІР‚ВР   Р РЋРІР‚СњР   Р вЂ™Р’В» Р   Р СћРІР‚ВР   Р РЋРІР‚Сћ Р  Р Р‹Р Р†Р вЂљРЎв„ўР   Р вЂ™Р’ВµР  Р Р‹Р Р†Р вЂљР’В¦ Р   Р РЋРІР‚вЂќР   Р РЋРІР‚СћР  Р Р‹Р  РІР‚С™, Р   Р РЋРІР‚вЂќР   Р РЋРІР‚СћР   Р РЋРІР‚СњР   Р вЂ™Р’В° Р   Р вЂ™Р’В° Р   Р РЋР’ВР   Р вЂ™Р’ВµР   Р  РІР‚В¦Р  Р Р‹Р  Р вЂ°Р  Р Р‹Р Р†РІР‚С™Р’В¬Р   Р вЂ™Р’Вµ 20  
  --a = a + 1;  
--OutputLogMessage("000")
--mode=1
--end
    



function OnEvent(event, arg)
  if (event == "PROFILE_ACTIVATED") then
    -- profile has been activated
    OutputLogMessage("activated")
    mode=1
  end
  if (event == "PROFILE_DEACTIVATED") then
    -- profile has been deactivated
    OutputLogMessage("deactivated")
    mode=1 --0
  end

  if (mode== 1) then

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 3) then
    -- Mouse Button 6 has been pressed
    x_old=0
    y_old=0
    x_old, y_old= GetMousePosition();
    OutputLogMessage("PRESSED ", x, y, arg);
    a=0
  --while a < 1 do -- Р   Р  РІР‚ Р  Р Р‹Р Р†Р вЂљРІвЂћвЂ“Р   Р РЋРІР‚вЂќР   Р РЋРІР‚СћР   Р вЂ™Р’В»Р   Р  РІР‚В¦Р  Р Р‹Р  Р РЏР  Р Р‹Р Р†Р вЂљРЎв„ўР  Р Р‹Р  Р вЂ° Р  Р Р‹Р Р†Р вЂљ Р   Р РЋРІР‚ВР   Р РЋРІР‚СњР   Р вЂ™Р’В» Р   Р СћРІР‚ВР   Р РЋРІР‚Сћ Р  Р Р‹Р Р†Р вЂљРЎв„ўР   Р вЂ™Р’ВµР  Р Р‹Р Р†Р вЂљР’В¦ Р   Р РЋРІР‚вЂќР   Р РЋРІР‚СћР  Р Р‹Р  РІР‚С™, Р   Р РЋРІР‚вЂќР   Р РЋРІР‚СћР   Р РЋРІР‚СњР   Р вЂ™Р’В° Р   Р вЂ™Р’В° Р   Р РЋР’ВР   Р вЂ™Р’ВµР   Р  РІР‚В¦Р  Р Р‹Р  Р вЂ°Р  Р Р‹Р Р†РІР‚С™Р’В¬Р   Р вЂ™Р’Вµ 20  
  a = a + 1   
  --slep(50)
  --MoveMouseRelative(1000, 1)
  --GetMouseWheel()
  --OutputLogMessage(GetMouseWheel());
  --end

  end
  if (event == "MOUSE_BUTTON_RELEASED" and arg == 3) then
    x, y = GetMousePosition();
    OutputLogMessage( gesture(g3[0],g3[1],g3[2],g3[3],g3[4]))
    OutputLogMessage("RELEASED",x_old, y_old);

  end
  if (event == "MOUSE_BUTTON_PRESSED" and arg == 5) then
    -- Mouse Button 6 has been pressed
    x_old=0
    y_old=0
    x_old, y_old= GetMousePosition();
    OutputLogMessage("PRESSED ", x, y, arg);
  end
  if (event == "MOUSE_BUTTON_RELEASED" and arg == 5) then
    x, y = GetMousePosition();
    OutputLogMessage( gesture(g5[0],g5[1],g5[2],g5[3],g5[4]))
    OutputLogMessage("RELEASED",x_old, y_old);
  end
  if (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then
    -- Mouse Button 6 has been pressed
    x_old=0
    y_old=0
    x_old, y_old= GetMousePosition();
    OutputLogMessage("PRESSED ", x, y, arg);
  end
  if (event == "MOUSE_BUTTON_RELEASED" and arg == 4) then
    x, y = GetMousePosition();
    OutputLogMessage( gesture(g4[0],g4[1],g4[2],g4[3],g4[4]))
    OutputLogMessage("RELEASED",x_old, y_old);

  end

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 6) then
    -- Mouse Button 6 has been pressed
    x_old=0
    y_old=0
    x_old, y_old= GetMousePosition();
    OutputLogMessage("PRESSED ", x, y, arg);
  end
  if (event == "MOUSE_BUTTON_RELEASED" and arg == 6) then
    x, y = GetMousePosition();
    OutputLogMessage( gesture(g6[0],g6[1],g6[2],g6[3],g6[4]))
    OutputLogMessage("RELEASED",x_old, y_old);

  end
end
end

function gesture(m0,m1,m2,m3,m4)
  xx = x - x_old
  yy = y - y_old
  if (xx<0) then
  abs_xx=xx*-1
else abs_xx =xx
end

  if (yy<0) then
  abs_yy =yy*-1
  else abs_yy =yy
  end
  if (x== x_old and  y== y_old) then --0


  --  PlayMacro(m0)
   -- return 0
  end

  if (abs_xx<=5 or  abs_yy<=5) then --0 droj ryki            bilo 25


    PlayMacro(m0)
    return 0
  end
  if (xx > abs_yy) then --2 if (xx > Math.abs(yy)) then


    PlayMacro(m2);
	if (x_old~=0 and y_old~=0) then
		MoveMouseTo(x_old, y_old)
	end
    return 2
  end
  if (xx > (yy)) then--1

    PlayMacro(m1);
	if (x_old~=0 and y_old~=0) then
		MoveMouseTo(x_old, y_old)
	end
    return 1

  end

  if (abs_xx < (yy)) then--3 if (math.abs(xx) < (yy)) then

    PlayMacro(m3);
	if (x_old~=0 and y_old~=0) then
		MoveMouseTo(x_old, y_old)
	end
    return 3
  end

  if ((xx) < (yy)) then--4

    PlayMacro(m4);
	if (x_old~=0 and y_old~=0) then
		MoveMouseTo(x_old, y_old)
	end
    return 4
  end

end
-- Mouse Button 6 has been released
--PressKey("a")
--ReleaseKey("a")
--PressAndReleaseKey("lctrl", "")
--PressAndReleaseKey("f", "")


--PressKey("lctrl")
--  PressKey("f")
--ReleaseKey("f")
-- ReleaseKey("lctrl")


--PressKey("latl")
--PressKey("lshift")
--   PressKey("m")
--  ReleaseKey("m")
--  ReleaseKey("lshift")
--  ReleaseKey("latl")


-- PressKey("delete")
--   ReleaseKey("delete")
--PlayMacro("del");
