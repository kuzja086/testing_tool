﻿# language: ru
# encoding: utf-8
#parent uf:
@UF1_загрузка_и_обработка_features
#parent ua:
@UA16_парсить_features

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb





Функционал: Проверка работы тега tree

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой


Сценарий: Проверка работы тега tree 3

	И я перехожу к закладке "Сервис"
	И я снимаю флаг 'Тег @tree включен по умолчанию'
	
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиТег_tree3"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиТег_tree2"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиТег_tree3"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                 | 'Статус' |
		| 'ФичаДляПроверкиТег_tree3.feature'                             | ''       |
		| 'ФичаДляПроверкиТег_tree3'                                     | ''       |
		| 'ФичаДляПроверкиТег_tree3'                                     | 'Failed' |
		| 'И Проверка бага'                                              | ''       |
		| 'И я вызываю исключение "Этот шаг должен вызвать исключение."' | 'Failed' |







Сценарий: Проверка работы тега tree 2
	
	И Я запоминаю значение выражения 'Ванесса.Объект.КаталогИнструментов + "/features/Support/Templates/ФичаДляПроверкиТег_tree2.feature"' в переменную "ИмяФичиИсточник"
	И Я запоминаю значение выражения 'C:\Temp\CommandFeature\test.feature' в переменную "ИмяФичиПриемник"
	Тогда я удаляю файл "$ИмяФичиПриемник$" 
	Тогда я копирую файл "$ИмяФичиИсточник$" "$ИмяФичиПриемник$" 
	
	И я перехожу к закладке "Служебная"
	И в поле с именем 'КаталогФичСлужебный' я ввожу текст '$ИмяФичиПриемник$'

	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	И элемент формы с именем "Статистика" стал равен '1/1/44'
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Имя процедуры'                                          |
		| ''                                                       |
		| ''                                                       |
		| ''                                                       |
		| ''                                                       |
		| 'ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий' |
		| 'ЯЗакрылВсеОкнаКлиентскогоПриложения'                    |
		| ''                                                       |
		| 'ЯЗапоминаюСтрокуВПеременную'                            |
		| 'ВКонстантеУказанСуществующийФайл'                       |
		| ''                                                       |
		| 'ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий' |
		| 'ЯЗакрылВсеОкнаКлиентскогоПриложения'                    |
		| 'ВПанелиРазделовЯВыбираю'                                |
		| 'Условие'                                                |
		| 'ВПанелиФункцийЯВыбираю'                                 |
		| ''                                                       |
		| 'ВПанелиФункцийЯВыбираю'                                 |
		| 'ОткрылосьОкно'                                          |
		| 'ЯФиксируюТекущуюФорму'                                  |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ЯУстанавливаюФлагСИменем'                               |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ВПолеСИменемЯУказываюЗначениеРеквизитаОбъектаОбработки' |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ВПолеСИменемЯУказываюЗначениеРеквизитаОбъектаОбработки' |
		| 'ВПолеСИменемЯВвожуТекст'                                |
		| 'ЯПерехожуКСледующемуРеквизиту'                          |
		| 'ПолеСИменемИмеетЗначениеТогда'                          |
		| ''                                                       |
		| 'ВПолеСИменемЯВвожуТекст'                                |
		| 'ЯПерехожуКСледующемуРеквизиту'                          |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ВОткрытойФормеЯНажимаюНаКнопкуСИменем'                  |
		| 'ЯДобавляюВБиблиотекиСтрокуССтандартнойБиблиотекой'      |
		| 'ЯОтменяюФиксированиеФормы'                              |
		| ''                                                       |
		| 'ВПолеСИменемЯУказываюПутьКСлужебнойФиче'                |
		| ''                                                       |
		| 'ЯФиксируюТекущуюФорму'                                  |
		| 'ЯСнимаюФлагСИменем'                                     |
		| 'ЯНажимаюНаКнопкуСИменем'                                |
		| 'УЭлементаСИменемЯЖдуЗначенияВТечениеСекунд'             |
		| 'ЯОтменяюФиксированиеФормы'                              |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| ''                                                       |
		| 'ЯФиксируюТекущуюФорму'                                  |
		| 'ЯСнимаюФлагСИменем'                                     |
		| 'ЯНажимаюНаКнопкуСИменем'                                |
		| 'УЭлементаСИменемЯЖдуЗначенияВТечениеСекунд'             |
		| 'ЯОтменяюФиксированиеФормы'                              |
		| 'ЭлементФормыСИменемСталРавен'                           |


	
	И Я запоминаю значение выражения 'Ванесса.Объект.КаталогИнструментов + "/features/Support/Templates/ФичаДляПроверкиТег_tree2_2.feature"' в переменную "ИмяФичиИсточник"
	Тогда я удаляю файл "$ИмяФичиПриемник$" 
	Тогда я копирую файл "$ИмяФичиИсточник$" "$ИмяФичиПриемник$" 
	
	И я перехожу к закладке "Служебная"
	И в поле с именем 'КаталогФичСлужебный' я ввожу текст '$ИмяФичиПриемник$'

	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	И элемент формы с именем "Статистика" стал равен '1/1/44'

		Тогда таблица "ДеревоТестов" стала равной:
		| 'Имя процедуры'                                          |
		| ''                                                       |
		| ''                                                       |
		| ''                                                       |
		| ''                                                       |
		| 'ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий' |
		| 'ЯЗакрылВсеОкнаКлиентскогоПриложения'                    |
		| ''                                                       |
		| 'ЯЗапоминаюСтрокуВПеременную'                            |
		| 'ВКонстантеУказанСуществующийФайл'                       |
		| ''                                                       |
		| 'ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий' |
		| 'ЯЗакрылВсеОкнаКлиентскогоПриложения'                    |
		| 'ВПанелиРазделовЯВыбираю'                                |
		| 'Условие'                                                |
		| 'ВПанелиФункцийЯВыбираю'                                 |
		| ''                                                       |
		| 'ВПанелиФункцийЯВыбираю'                                 |
		| 'ОткрылосьОкно'                                          |
		| 'ЯФиксируюТекущуюФорму'                                  |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ЯУстанавливаюФлагСИменем'                               |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ВПолеСИменемЯУказываюЗначениеРеквизитаОбъектаОбработки' |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ВПолеСИменемЯУказываюЗначениеРеквизитаОбъектаОбработки' |
		| 'ВПолеСИменемЯВвожуТекст'                                |
		| 'ЯПерехожуКСледующемуРеквизиту'                          |
		| 'ПолеСИменемИмеетЗначениеТогда'                          |
		| ''                                                       |
		| 'ВПолеСИменемЯВвожуТекст'                                |
		| 'ЯПерехожуКСледующемуРеквизиту'                          |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| 'ВОткрытойФормеЯНажимаюНаКнопкуСИменем'                  |
		| 'ЯДобавляюВБиблиотекиСтрокуССтандартнойБиблиотекой'      |
		| 'ЯОтменяюФиксированиеФормы'                              |
		| ''                                                       |
		| 'ВПолеСИменемЯУказываюПутьКСлужебнойФиче'                |
		| ''                                                       |
		| 'ЯФиксируюТекущуюФорму'                                  |
		| 'ЯСнимаюФлагСИменем'                                     |
		| 'ЯНажимаюНаКнопкуСИменем'                                |
		| 'УЭлементаСИменемЯЖдуЗначенияВТечениеСекунд'             |
		| 'ЯОтменяюФиксированиеФормы'                              |
		| 'ЯПерехожуКЗакладкеСИменем'                              |
		| ''                                                       |
		| 'ЯФиксируюТекущуюФорму'                                  |
		| 'ЯСнимаюФлагСИменем'                                     |
		| 'ЯНажимаюНаКнопкуСИменем'                                |
		| 'УЭлементаСИменемЯЖдуЗначенияВТечениеСекунд'             |
		| 'ЯОтменяюФиксированиеФормы'                              |
		| 'ЭлементФормыСИменемСталРавен'                           |










Сценарий: Проверка работы тега tree 1

	И я перехожу к закладке "Сервис"
	И я снимаю флаг 'Тег @tree включен по умолчанию'
	
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиТег_tree1"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И элемент формы с именем "Статистика" стал равен '1/1/44'
