# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA46_Макеты_для_загрузки_и_обработки_фич

@IgnoreOnCIMainBuild
@SpecialTag

Функционал: Загрузить фичу в vanessa-behavior 10
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность загрузить произвольную тестовую фичу в vanessa-behavior
 
Сценарий: Загрузка тестовой фичи проверка работы до брейкпоинта первый
	Когда Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1

Сценарий: Загрузка тестовой фичи проверка работы до брейкпоинта второй

	Когда Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1
	И     Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1
	И     Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1
	И     Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1
	И     Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1
	