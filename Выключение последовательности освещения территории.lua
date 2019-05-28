--Выключаем последовательность и синий светильник
grp.write('7/3/0', false)
---- wait for 5 seconds
os.sleep(5)
-- выключаем светильники 
grp.write('7/0/7', false)
grp.write('7/0/8', false)
grp.write('7/0/9', false)
