-- Получаем значение температур

temp1 = grp.getvalue('7/1/1') --спальня1
temp2 = grp.getvalue('7/1/4') --гардероб
temp3 = grp.getvalue('7/1/7') --зал
temp4 = grp.getvalue('7/1/13') --кухня

-- Получаем значение уставок

setpoint1 = grp.getvalue('7/1/2') --спальня1
setpoint2 = grp.getvalue('7/1/5') --гардероб
setpoint3 = grp.getvalue('7/1/8') --зал
setpoint4 = grp.getvalue('7/1/14') --кухня

-- Логика работы

if temp1>setpoint1 then rele1=false else rele1=true end 
if temp2>setpoint2 then rele2=false else rele2=true end 
if temp3>setpoint3 then rele3=false else rele3=true end 
if temp4>setpoint4 then rele4=false else rele4=true end 

-- Записываем значения термоголовок

grp.write('7/3/31', rele1) --термоголовки спальня1
grp.write('7/3/32', rele1) --термоголовки спальня1
grp.write('7/3/30', rele2) --термоголовки гардероб
grp.write('7/3/33', rele3) --термоголовки зал
grp.write('7/3/34', rele4) --термоголовки кухня