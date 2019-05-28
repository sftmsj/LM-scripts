-- Получаем значение температур

temp1 = grp.getvalue('6/0/1') --столовая-кухня
temp3 = grp.getvalue('6/0/3') --детская
temp6 = grp.getvalue('6/0/6') --спальня
temp7 = grp.getvalue('6/0/7') --гардеробная

-- Получаем значение уставок

setpoint1 = grp.getvalue('6/0/201') --столовая-кухня
setpoint3 = grp.getvalue('6/0/203') --детская
setpoint6 = grp.getvalue('6/0/206') --спальня
setpoint7 = grp.getvalue('6/0/207') --гардеробная

-- Логика работы

if temp1>setpoint1 then rele1=true else rele1=false end 
if temp3>setpoint3 then rele3=true else rele3=false end 
if temp6>setpoint6 then rele6=true else rele6=false end 
if temp7>setpoint7 then rele7=true else rele7=false end 

-- Записываем значения термоголовок

grp.write('6/2/1', rele1) --термоголовки гостиная
grp.write('6/2/3', rele3) --термоголовки детская
grp.write('6/2/6', rele6) --термоголовки спальня
grp.write('6/2/7', rele7) --термоголовки гардероб