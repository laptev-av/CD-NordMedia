﻿Выполнить(Алгоритмы.ОбработатьЗаписьДокументаПослеЗагрузки);
Объект.ВалютаДокумента  = Параметры.ВалютаРегламентированногоУчета;
ЗаполнениеДокументовПоУмолчанию.ЗаполнитьСчетаПоУмолчанию(Объект);

Объект.СчетУчетаРасчетовСКонтрагентом = ПланыСчетов.Хозрасчетный.ВыручкаЕНВД;

Объект.Ответственный = Справочники.Пользователи.НайтиПоНаименованию("Пользователь в рознице");

СубконтоКт1 = ПараметрыОбъекта["СубконтоКт1"];
Объект.СубконтоКт1 = Справочники.НоменклатурныеГруппы.НайтиПоНаименованию(СубконтоКт1);
Выполнить(Алгоритмы.ПослеЗагрузкиДокумента_УстановитьССылку);
