﻿КлючВыгружаемыхДанных = "КлючВыгружаемыхДанных" + Источник.Организация + Источник.Магазин + Источник.Номер + Источник.Дата;
ВходящиеДанные = Новый Структура;
ВходящиеДанные.Вставить("СубконтоДт1", lvОбщегоНазначенияСервер.ПолучитьДопРеквизитМагазина(Источник.Магазин, "Банк Плательщик"));
ВходящиеДанные.Вставить("СубконтоДт2", lvОбщегоНазначенияСервер.ПолучитьДопРеквизитМагазина(Источник.Магазин, "Банк Договор (плательщика)"));	
ВходящиеДанные.Вставить("СубконтоКт1", lvОбщегоНазначенияСервер.ПолучитьДопРеквизитМагазина(Источник.Магазин, "Банк Номенклатурная группа"));
ВходящиеДанные.Вставить("Содержание", "Оплата банковской картой: " + Источник.Магазин);
