#Использовать irac
#Использовать cmdline
#Использовать v8runner

Перем АдресСервера;
Перем ПортСервера;
Перем ВерсияПлатформы;
Перем ИмяБазы;
Перем АвторизацияИБ;

Перем Лог;

Функция Инициализация()

    Парсер = Новый ПарсерАргументовКоманднойСтроки();
	Парсер.ДобавитьИменованныйПараметр("-srv");
	Парсер.ДобавитьИменованныйПараметр("-platformversion");
	Парсер.ДобавитьИменованныйПараметр("-basename");
	Парсер.ДобавитьИменованныйПараметр("-usr");
	Парсер.ДобавитьИменованныйПараметр("-pwd");

    Параметры = Парсер.Разобрать(АргументыКоманднойСтроки);
	АдресСервера      = Параметры["-srv"];
	ВерсияПлатформы      = Параметры["-platformversion"];
	ИмяБазы = Параметры["-basename"];

	АвторизацияИБ = Новый Структура("Пользователь, Пароль", Параметры["-usr"], Параметры["-pwd"]);

    Лог = Логирование.ПолучитьЛог("deleteBaseFromCluster");

КонецФункции

Процедура УдалитьБазу()
	УправлениеКластером = Новый УправлениеКластером1С("8.3", АдресСервера);
	Кластеры = УправлениеКластером.Кластеры();

	Лог.Информация("Cluster connected");
	Для Каждого Кластер Из Кластеры.Список() Цикл
        ЛОГ.Информация("Cluster name = " + Кластер.Получить("Имя"));
		ИБКластера = Кластер.ИнформационныеБазы();
		
		для Каждого База ИЗ ИБКластера Цикл
			Лог.Информация("IB" + База.Получить("Имя"))
		КонецЦикла
    КонецЦикла;
	//УправлениеКластером.УдалитьИнформационнуюБазу(ИмяБазы, Ложь, Истина, АвторизацияИБ);
КонецПроцедуры

Инициализация();
Лог.Информация("Init finish");
УдалитьБазу();
Лог.Информация("script completed");