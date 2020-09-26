﻿# language: ru
# encoding: utf-8
#parent uf:
@UF6_текстовые_и_видео_инструкции
#parent ua:
@UA40_проверять_формирование_видеоинструкций

@tree
@IgnoreOn82Builds
@IgnoreOnOFBuilds
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
@IgnoreOnWeb
@IgnoreOnUFSovm82Builds
@Video


Функционал: Возможность делать подсветку до платформы 8.3.12. Видео.




Сценарий: Возможность делать подсветку до платформы 8.3.12. Видео.
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Дано Я убедился что работает звуковой движок по созданию TTS
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе


	
	Дано Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Видео/ПроверкаПодсветки01"

	
	И я перехожу к закладке с именем "ГруппаНастройки"
	И В открытой форме я изменяю флаг "Создавать видеоинструкцию"
	И я устанавливаю флаг с именем 'ЗаписьВидеоФормироватьИнструкциюТипHTML'
	И я меняю значение переключателя с именем 'ЗаписьВидеоИнструмент' на 'VLC media player'
	И я нажимаю на кнопку с именем 'ЗагрузитьНастройкиПоУмолчанию'
	И пауза 1

	И в поле "Каталог видео инструкций" я указываю путь к относительному каталогу "tools\Video" и очищаю каталог
	И Я запоминаю значение выражения '$ПараметрКаталог$ + "\Video"' в переменную "ПараметрКаталог"
	
	
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаВидеоДополнительные"
	И я устанавливаю флаг с именем 'ЗаписьВидеоПеремещатьКурсорМышкиКАктивномуЭлементуФормы'
	И я устанавливаю флаг с именем 'ЗаписьВидеоПодсвечиватьАктивныеЭлементыФорм'
	
	И я разворачиваю группу с именем "ГруппаSikuliXServer"
	И я нажимаю на кнопку с именем 'УстановитьСервисныеУтилиты'
	Тогда открылось окно 'Сервисные утилиты'
	И я нажимаю на кнопку 'Да'
	Тогда открылось окно '*Vanessa Automation*'
	И я устанавливаю флаг с именем 'ЗаписьВидеоДобавлятьСубтитры'
	И я устанавливаю флаг с именем 'ЗаписьВидеоГруппаШаговКакШаг'
	И я устанавливаю флаг с именем 'ЗаписьВидеоПодсвечиватьНажатияМышки'
	И я устанавливаю флаг с именем 'ЗаписьВидеоЭмулироватьВводСКлавиатуры'
	И я устанавливаю флаг с именем 'ЗаписьВидеоОтключитьСлайдСЗаголовкомФичи'
	И я устанавливаю флаг с именем 'ЗаписьВидеоОтключитьСлайдСценария'
	И я устанавливаю флаг с именем 'ЗаписьВидеоОтключитьСлайдФинал'
	
	
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	И я нажимаю на кнопку с именем 'ВыполнитьСценарии'
	И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 1800 секунд
	И Файл "$КаталогИнструментов$\tools\Video\Video\result.mp4" существует

	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюСвернутьДоСценариев' на элементе формы с именем "ДеревоТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                | 'Статус'  |
		| 'ПроверкаПодсветки01.feature' | ''        |
		| 'ПроверкаПодсветки01'         | ''        |
		| 'Контекст'                    | ''        |
		| 'ПроверкаПодсветки01'         | 'Success' |


	И я перехожу к закладке с именем "ГруппаНастройки"
	И я снимаю флаг с именем 'СоздаватьИнструкциюHTML'
	И я снимаю флаг с именем 'СоздаватьИнструкциюMarkdown'
	И я снимаю флаг с именем 'СоздаватьИнструкциюВидео'



	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient 1000


Сценарий: Закрыть TestClient
	И я закрываю TestClient "TM"	
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'