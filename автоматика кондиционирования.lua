--Событийный скрипт для включения/выключания автоматики фанкойла для комнаты

--Прихожая
auto = grp.getvalue('6/1/159')
if auto == 0 then script.enable('Кондиционирование прихожей') else script.disable('Кондиционирование прихожей') end

--Холл
auto = grp.getvalue('6/1/110')
if auto = true then script.enable('Кондиционирование холл') else script.disable('Кондиционирование холл') end

--Гостевая
auto = grp.getvalue('6/1/120')
if auto = true then script.enable('Кондиционирование гостевая') else script.disable('Кондиционирование гостевая') end

--Гостиная
auto = grp.getvalue('6/1/130')
if auto = true then script.enable('Кондиционирование гостиная') else script.disable('Кондиционирование гостиная') end

--Кухня
auto = grp.getvalue('6/1/140')
if auto = true then script.enable('Кондиционирование кухня') else script.disable('Кондиционирование кухня') end

--Игровая
auto = grp.getvalue('6/1/150')
if auto = true then script.enable('Кондиционирование игровая') else script.disable('Кондиционирование игровая') end

--Холл 2эт
auto = grp.getvalue('6/1/200')
if auto = true then script.enable('Кондиционирование холл 2эт') else script.disable('Кондиционирование 2эт') end

--Гардероб
auto = grp.getvalue('6/1/210')
if auto = true then script.enable('Кондиционирование гардероб') else script.disable('Кондиционирование гардероб') end

--Спальня
auto = grp.getvalue('6/1/220')
if auto = true then script.enable('Кондиционирование спальня') else script.disable('Кондиционирование спальня') end

--Детская
auto = grp.getvalue('6/1/230')
if auto = true then script.enable('Кондиционирование детская') else script.disable('Кондиционирование детская') end33

--Кабинет
auto = grp.getvalue('6/1/240')
if auto = true then script.enable('Кондиционирование кабинет') else script.disable('Кондиционирование кабинет') end