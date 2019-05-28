--Кондиционирование гостиная

--Обозначение переменных

day_night = grp.getvalue('3/4/9')
temp = grp.getvalue('6/0/31')
setpoint = grp.getvalue('6/0/32')

--включаем кондиционер

grp.write('6/1/31',true)

---ДНЁМ НЕТ ОГРАНИЕЧЕНИЯ НА СКОРОСТЬ ВЕНТИЛЯТОРА

if day_night==true then

  if temp>setpoint+1 then fan=3 end

  if (temp>setpoint and temp<setpoint+1) then fan=2 end

  if (temp>setpoint and temp<setpoint+0.5) then fan=1 end

  if temp<setpoint then fan=0 end
  
grp.write('6/1/33', fan)
  
end

---НОЧЬЮ НЕ ВКЛЮЧАЕТСЯ 3 СКОРОСТЬ ВЕНТИЛЯТОРА

if day_night==false then

  if temp>setpoint+1 then fan=2 end

  if (temp>setpoint and temp<setpoint+0.5) then fan=1 end

  if temp<setpoint then fan=0 end

    grp.write('6/1/33', fan)
  
end