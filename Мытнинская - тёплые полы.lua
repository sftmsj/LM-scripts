-- Получаем значение температур

temp2 = grp.getvalue('6/0/2') --санузел1
temp4 = grp.getvalue('6/0/4') --санузел2
temp5 = grp.getvalue('6/0/5') --ванная


-- Получаем значение уставок

setpoint2 = grp.getvalue('6/0/202') --санузел1
setpoint4 = grp.getvalue('6/0/204') --санузел2
setpoint5 = grp.getvalue('6/0/205') --ванная

-- Логика работы

if temp2>setpoint2 then rele2=true else rele2=false end 
if temp4>setpoint4 then rele4=true else rele4=false end 
if temp5>setpoint5 then rele5=true else rele5=false end 

-- Записываем значения термоголовок

grp.write('6/2/2', rele2) --термоголовки гостиная
grp.write('6/2/4', rele4) --термоголовки детская
grp.write('6/2/5', rele5) --термоголовки спальня