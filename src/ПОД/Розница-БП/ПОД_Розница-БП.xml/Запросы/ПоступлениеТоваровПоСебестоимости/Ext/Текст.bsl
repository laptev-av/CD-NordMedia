﻿ВЫБРАТЬ
	ПоступлениеТоваровТовары.Номенклатура,
	СУММА(ПоступлениеТоваровТовары.Количество) КАК Количество,
	ПоступлениеТоваровТовары.Цена,
	СУММА(ПоступлениеТоваровТовары.Сумма) КАК Сумма,
	ПоступлениеТоваровТовары.СтавкаНДС,
	СУММА(ПоступлениеТоваровТовары.СуммаНДС) КАК СуммаНДС
ПОМЕСТИТЬ ВТ_ТабличнаяЧасть
ИЗ
	Документ.ПоступлениеТоваров.Товары КАК ПоступлениеТоваровТовары
		ЛЕВОЕ СОЕДИНЕНИЕ Документ.ПоступлениеТоваров КАК ПоступлениеТоваров
		ПО ПоступлениеТоваровТовары.Ссылка = ПоступлениеТоваров.Ссылка
ГДЕ
	ПоступлениеТоваров.Ссылка = &Ссылка

СГРУППИРОВАТЬ ПО
	ПоступлениеТоваровТовары.Номенклатура,
	ПоступлениеТоваровТовары.СтавкаНДС,
	ПоступлениеТоваровТовары.Цена
;

////////////////////////////////////////////////////////////////////////////////
ВЫБРАТЬ
	ВТ_ТабличнаяЧасть.Номенклатура,
	СУММА(ВТ_ТабличнаяЧасть.Количество) КАК Количество,
	СУММА(ВТ_ТабличнаяЧасть.Сумма) КАК Сумма,
	ВТ_ТабличнаяЧасть.СтавкаНДС,
	СУММА(0) КАК СуммаНДС,
	ВТ_ТабличнаяЧасть.Цена КАК Цена
ИЗ
	ВТ_ТабличнаяЧасть КАК ВТ_ТабличнаяЧасть

СГРУППИРОВАТЬ ПО
	ВТ_ТабличнаяЧасть.Номенклатура,
	ВТ_ТабличнаяЧасть.СтавкаНДС,
	ВТ_ТабличнаяЧасть.Цена
