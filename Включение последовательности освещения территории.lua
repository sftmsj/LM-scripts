--Выключаем свет
grp.write('7/0/7', false)
grp.write('7/0/8', false)
grp.write('7/0/9', false)
--Пауза
os.sleep(5)
--Включаем последовательность
grp.write('7/3/0',true)
