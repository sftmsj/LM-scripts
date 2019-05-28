
--Получение температур помещений
temp_room_1 = grp.getvalue('4/0/1') --тамбур
temp_room_2 = grp.getvalue('4/0/4') --санузел 1 этаж
temp_room_3 = grp.getvalue('4/0/7') --санузел спальни1
temp_room_4 = grp.getvalue('4/0/9') --санузел спальни2

--Получение температур пола
temp_floor_1 = grp.getvalue('4/1/1') --тамбур
temp_floor_2 = grp.getvalue('4/1/2') --санузел 1 этаж
temp_floor_3 = grp.getvalue('4/1/3') --санузел спальни1
temp_floor_4 = grp.getvalue('4/1/4') --санузел спальни2

--Получение уставок комнат
setpoint_room_1 = grp.getvalue('4/0/201') --тамбур
setpoint_room_2 = grp.getvalue('4/0/204') --санузел 1 этаж
setpoint_room_3 = grp.getvalue('4/0/207') --санузел спальни1
setpoint_room_4 = grp.getvalue('4/0/209') --санузел спальни2

--Получение уставок пола
setpoint_floor_1 = grp.getvalue('4/1/201') --тамбур
setpoint_floor_2 = grp.getvalue('4/1/202') --санузел 1 этаж
setpoint_floor_3 = grp.getvalue('4/1/203') --спальня1
setpoint_floor_4 = grp.getvalue('4/1/204') --спальня2

-- Логика работы
--if temp_room_1>setpoint_room_1+1 then rele1=false else 
  --  if temp_floor_1>setpoint_floor_1 then rele1=false else rele1=true end
--end

if temp_room_2>setpoint_room_2+1 then rele2=false else 
    if temp_floor_2>setpoint_floor_2 then rele2=false end 
  	if temp_floor_2<setpoint_floor_2 then rele2=true end
end