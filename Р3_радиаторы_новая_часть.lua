-- Получаем значение температур

temp1 = grp.getvalue('7/1/16') --спальня2
temp2 = grp.getvalue('7/1/19') --спортзал
temp3 = grp.getvalue('7/1/22') --зона отдыха

-- Получаем значение уставок

setpoint1 = grp.getvalue('7/1/17') --спальня2
setpoint2 = grp.getvalue('7/1/20') --спортзал
setpoint3 = grp.getvalue('7/1/23') --зона отдыха

-- Логика работы

if temp1>setpoint1 then rele1=false else rele1=true end 
if temp2>setpoint2 then rele2=false else rele2=true end 
if temp3>setpoint3 then rele3=false else rele3=true end 

-- Записываем значения термоголовок

grp.write('7/6/111', rele1) --термоголовки спальня1
grp.write('7/6/112', rele2) --термоголовки гардероб
grp.write('7/6/113', rele3) --термоголовки зал
