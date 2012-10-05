Cards = function()
	if (Permanents() or FilteredCard():GetCardType():Test(CARD_TYPE_INSTANT) ~= 0 or FilteredCard():GetCardType():Test(CARD_TYPE_SORCERY) ~= 0) then
		return FilteredCard() ~= nil
	end
end

CardsZone = function(1_1_0)
	if Cards() then
		return FilteredCard():GetZone() == 1_1_0
	end
end

CardsTypeZone = function(1_2_0, 1_2_1)
	if CardsZone(1_2_1) then
		return FilteredCard():GetCardType():Test(1_2_0) ~= 0
	end
end

CardsSubtypeZone = function(1_3_0, 1_3_1)
	if CardsZone(1_3_1) then
		return FilteredCard():GetSubType():Test(1_3_0) ~= 0
	end
end

CardsTypeSubtypeZone = function(1_4_0, 1_4_1, 1_4_2)
	if CardsTypeZone(1_4_0, 1_4_2) then
		return CardsSubtypeZone(1_4_1, 1_4_2)
	end
end

CardsZonePlayer = function(1_5_0, 1_5_1)
	if CardsZone(1_5_0) then
		if 1_5_0 == ZONE_IN_PLAY then
			return FilteredCard():GetController() == 1_5_1
		else
			return FilteredCard():GetPlayer() == 1_5_1
		end
	end
end

CardsTypeZonePlayer = function(1_6_0, 1_6_1, 1_6_2)
	if CardsTypeZone(1_6_0, 1_6_1) then
		return CardsZonePlayer(1_6_1, 1_6_2)
	end
end

CardsSubtypeZonePlayer = function(1_7_0, 1_7_1, 1_7_2)
	if CardsSubtypeZone(1_7_0, 1_7_1) then
		return CardsZonePlayer(1_7_1, 1_7_2)
	end
end

CardsTypeSubtypeZonePlayer = function(1_8_0, 1_8_1, 1_8_2, 1_8_3)
	if CardsTypeSubtypeZone(1_8_0, 1_8_1, 1_8_2) then
		return CardsZonePlayer(1_8_2, 1_8_3)
	end
end

OtherCardsZone = function(1_9_0, 1_9_1)
	if CardsZone(1_9_1) then
		return FilteredCard() ~= 1_9_0
	end
end

OtherCardsTypeZone = function(1_10_0, 1_10_1, 1_10_2)
	if OtherCardsZone(1_10_0, 1_10_2) then
		return CardsTypeZone(1_10_1, 1_10_2)
	end
end

OtherCardsSubtypeZone = function(1_11_0, 1_11_1, 1_11_2)
	if OtherCardsZone(1_11_0, 1_11_2) then
		return CardsSubtypeZone(1_11_1, 1_11_2)
	end
end

OtherCardsTypeSubtypeZone = function(1_12_0, 1_12_1, 1_12_2, 1_12_3)
	if OtherCardsZone(1_12_0, 1_12_3) then
		return CardsTypeSubtypeZone(1_12_1, 1_12_2, 1_12_3)
	end
end

OtherCardsZonePlayer = function(1_13_0, 1_13_1, 1_13_2)
	if OtherCardsZone(1_13_0, 1_13_1) then
		return CardsZonePlayer(1_13_1, 1_13_2)
	end
end

OtherCardsTypeZonePlayer = function(1_14_0, 1_14_1, 1_14_2, 1_14_3)
	if OtherCardsZone(1_14_0, 1_14_2)
		return CardsTypeZonePlayer(1_14_1, 1_14_2, 1_14_3)
	end
end

OtherCardsSubtypeZonePlayer = function(1_15_0, 1_15_1, 1_15_2, 1_15_3)
	if OtherCardsZone(1_15_0, 1_15_2)
		return CardsSubtypeZonePlayer(1_15_1, 1_15_2, 1_15_3)
	end
end

OtherCardsTypeSubtypeZonePlayer = function(1_16_0, 1_16_1, 1_16_2, 1_16_3, 1_16_4)
	if OtherCardsZone(1_16_0, 1_16_3)
		return CardsTypeSubtypeZonePlayer(1_16_1, 1_16_2, 1_16_3, 1_16_4)
	end
end

AttackingCreatures = function()
	if CreaturesInPlay() then
		return FilteredCard():IsAttacking() ~= 0
	end
end