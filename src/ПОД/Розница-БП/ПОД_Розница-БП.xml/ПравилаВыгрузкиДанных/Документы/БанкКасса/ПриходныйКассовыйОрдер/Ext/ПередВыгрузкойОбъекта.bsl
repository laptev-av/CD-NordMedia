﻿Если ЗначениеЗаполнено(Параметры.Организация) Тогда
	
	Если ЗначениеЗаполнено(Объект.Организация.ГоловнаяОрганизация) Тогда
		Организация = Объект.Организация.ГоловнаяОрганизация;
	Иначе
		Организация = Объект.Организация;
	КонецЕсли;	
	
	Если НЕ Организация = Параметры.Организация Тогда
		Отказ = Истина;
	КонецЕсли;	
КонецЕсли;
