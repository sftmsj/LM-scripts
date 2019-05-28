--Получаем значение последовательности
-- get value of object with group address 1/1/1
value = grp.getvalue('7/3/1')
--Включаем последовательность
if value==true then
grp.write('7/0/7', false)
grp.write('7/0/8', false)
grp.write('7/0/9', false)
  os.sleep(5)  
grp.write('7/3/0',true)
end
--Выключаем последовательность и синий светильник
if value==false then
grp.write('7/3/0', false)
---- wait for 5 seconds
os.sleep(5)
-- выключаем светильники 
grp.write('7/0/7', false)
grp.write('7/0/8', false)
grp.write('7/0/9', false)
end