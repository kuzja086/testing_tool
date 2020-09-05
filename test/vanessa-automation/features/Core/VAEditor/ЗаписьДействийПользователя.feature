﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316

@ServerCodeCoverage


Функциональность: Запись действий пользователя в новом редакторе

    Как разработчик
    Я хочу чтобы в редакторе можно было начать запись пользователя и сразу получить результат
    Чтобы я мог быстро накликивать новые шаги


Сценарий: Запись действий пользователя в новом редакторе

	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'


	* Подключение клиента тестирования
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'
		И я перехожу к закладке с именем "ГруппаНастройки"
		И я устанавливаю флаг с именем 'DebugLog2'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И я перехожу к закладке с именем "СтраницыДляОтображенияДереваИРедактора"
		И я нажимаю на кнопку с именем 'VanessaEditorОткрытьПодключитьTestClient'
		Тогда в логе сообщений TestClient есть строки:
			|'TestClient подключен'|
		И я очищаю окно сообщений пользователю

	* Запись действий пользователя		
		И я нажимаю на кнопку с именем 'VanessaEditorНачатьЗаписьДействийПользователя'
		Тогда в логе сообщений TestClient есть строки:
			|'Уже открытый TestClient подключен'|


		Затем клик на картинку "Основная"
		Затем клик на картинку "Справочник1"

		И я нажимаю на кнопку с именем 'кнЗавершитьЗаписьДействийПользователя'

	* Проверка результата
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(СокрЛП(VanessaEditor.getContent()))'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		Тогда в логе сообщений TestClient есть строки:
			|'И В командном интерфейсе я выбираю \'Основная\' \'Справочник1\''|

	* Проверка чтения данных из активной формы клиента тестирования

		И я перехожу к закладке "Запуск сценариев"
		И Пауза 2

		И я нажимаю на кнопку с именем 'VanessaEditorИспользоватьДанныеТекущейФормыПриПодбореШагов'
		И Пауза 4
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(ЗначенияЭлементовТекущегоОкнаVanessaEditor[\"Заголовок окна\"])'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		Тогда в логе сообщений TestClient есть строки:
			|'Справочник1'|

		И я перехожу к закладке "Запуск сценариев"
		И Пауза 2
		И я нажимаю на кнопку с именем 'VanessaEditorИспользоватьДанныеТекущейФормыПриПодбореШагов'	

	* Закрытие клиента тестирования
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
		
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient




Сценарий: Активизация основного клиента
	И я закрываю TestClient "TM"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'