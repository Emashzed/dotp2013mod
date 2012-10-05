CountCardsZone = function(1_1_0)
	Object():GetFilter():Clear()
	Object():GetFilter():AddCardType( CARD_TYPE_ARTIFACT )
	Object():GetFilter():AddCardType( CARD_TYPE_CREATURE )
    Object():GetFilter():AddCardType( CARD_TYPE_ENCHANTMENT )
	Object():GetFilter():AddCardType( CARD_TYPE_INSTANT )
    Object():GetFilter():AddCardType( CARD_TYPE_LAND )
    Object():GetFilter():AddCardType( CARD_TYPE_PLANESWALKER )
	Object():GetFilter():AddCardType( CARD_TYPE_SORCERY )
	Object():GetFilter():SetZone( 1_1_0 )
	Object():GetFilter():NotTargetted()
	return Object():GetFilter():Count()
end

CountCardsTypeZone = function(1_2_0, 1_2_1)
	Object():GetFilter():Clear()
	Object():GetFilter():AddCardType( 1_2_0 )
	Object():GetFilter():SetZone( 1_2_1 )
	Object():GetFilter():NotTargetted()
	return Object():GetFilter():Count()
end

CountCardsSubtypeZone = function(1_3_0, 1_3_1)
	Object():GetFilter():Clear()
	Object():GetFilter():AddCardType( CARD_TYPE_ARTIFACT )
	Object():GetFilter():AddCardType( CARD_TYPE_CREATURE )
    Object():GetFilter():AddCardType( CARD_TYPE_ENCHANTMENT )
	Object():GetFilter():AddCardType( CARD_TYPE_INSTANT )
    Object():GetFilter():AddCardType( CARD_TYPE_LAND )
    Object():GetFilter():AddCardType( CARD_TYPE_PLANESWALKER )
	Object():GetFilter():AddCardType( CARD_TYPE_SORCERY )
	Object():GetFilter():AddSubType( 1_3_0 )
	Object():GetFilter():SetZone( 1_3_1 )
	Object():GetFilter():NotTargetted()
	return Object():GetFilter():Count()
end

CountCardsTypeSubtypeZone = function(1_4_0, 1_4_1, 1_4_2)
	Object():GetFilter():Clear()
	Object():GetFilter():AddCardType( 1_4_0 )
	Object():GetFilter():AddSubType( 1_4_1 )
	Object():GetFilter():SetZone( 1_4_2 )
	Object():GetFilter():NotTargetted()
	return Object():GetFilter():Count()
end

CountCardsZonePlayer = function(1_5_0, 1_5_1)
	Object():GetFilter():Clear()
	Object():GetFilter():AddCardType( CARD_TYPE_ARTIFACT )
	Object():GetFilter():AddCardType( CARD_TYPE_CREATURE )
    Object():GetFilter():AddCardType( CARD_TYPE_ENCHANTMENT )
	Object():GetFilter():AddCardType( CARD_TYPE_INSTANT )
    Object():GetFilter():AddCardType( CARD_TYPE_LAND )
    Object():GetFilter():AddCardType( CARD_TYPE_PLANESWALKER )
	Object():GetFilter():AddCardType( CARD_TYPE_SORCERY )
	Object():GetFilter():SetZone( 1_5_0 )
	Object():GetFilter():NotTargetted()
	
	if 1_5_0 == ZONE_IN_PLAY then
		Object():GetFilter():SetController( 1_5_1 ) 
	else
		Object():GetFilter():SetPlayer( 1_5_1 ) 
	end
	
	return Object():GetFilter():Count()
end

CountCardsTypeZonePlayer = function(1_6_0, 1_6_1, 1_6_2)
	Object():GetFilter():Clear()
	Object():GetFilter():AddCardType( 1_6_0 )
	Object():GetFilter():SetZone( 1_6_1 )
	Object():GetFilter():NotTargetted()
	
	if 1_6_1 == ZONE_IN_PLAY then
		Object():GetFilter():SetController( 1_6_2 ) 
	else
		Object():GetFilter():SetPlayer( 1_6_2 ) 
	end
	
	return Object():GetFilter():Count()
end

CountCardsSubtypeZonePlayer = function(1_7_0, 1_7_1, 1_7_2)
	Object():GetFilter():Clear()
	Object():GetFilter():AddCardType( CARD_TYPE_ARTIFACT )
	Object():GetFilter():AddCardType( CARD_TYPE_CREATURE )
    Object():GetFilter():AddCardType( CARD_TYPE_ENCHANTMENT )
	Object():GetFilter():AddCardType( CARD_TYPE_INSTANT )
    Object():GetFilter():AddCardType( CARD_TYPE_LAND )
    Object():GetFilter():AddCardType( CARD_TYPE_PLANESWALKER )
	Object():GetFilter():AddCardType( CARD_TYPE_SORCERY )
	Object():GetFilter():AddSubType( 1_7_0 )
	Object():GetFilter():SetZone( 1_7_1 )
	Object():GetFilter():NotTargetted()
	
	if 1_7_1 == ZONE_IN_PLAY then
		Object():GetFilter():SetController( 1_7_2 ) 
	else
		Object():GetFilter():SetPlayer( 1_7_2 ) 
	end
	
	return Object():GetFilter():Count()
end

CountCardsTypeSubtypeZonePlayer = function(1_8_0, 1_8_1, 1_8_2, 1_8_3)
	Object():GetFilter():Clear()
	Object():GetFilter():AddCardType( 1_8_0 )
	Object():GetFilter():AddSubType( 1_8_1 )
	Object():GetFilter():SetZone( 1_8_2 )
	Object():GetFilter():NotTargetted()
	
	if 1_8_2 == ZONE_IN_PLAY then
		Object():GetFilter():SetController( 1_8_3 ) 
	else
		Object():GetFilter():SetPlayer( 1_8_3 ) 
	end
	
	return Object():GetFilter():Count()
end

CountOtherCardsZone = function(1_9_0, 1_9_1)
	Object():GetFilter():Clear()
	Object():GetFilter():SetCardInstance( 1_9_0 )
    Object():GetFilter():AddExtra( FILTER_EXTRA_FLIP_CARD_INSTANCE )
	Object():GetFilter():AddCardType( CARD_TYPE_ARTIFACT )
	Object():GetFilter():AddCardType( CARD_TYPE_CREATURE )
    Object():GetFilter():AddCardType( CARD_TYPE_ENCHANTMENT )
	Object():GetFilter():AddCardType( CARD_TYPE_INSTANT )
    Object():GetFilter():AddCardType( CARD_TYPE_LAND )
    Object():GetFilter():AddCardType( CARD_TYPE_PLANESWALKER )
	Object():GetFilter():AddCardType( CARD_TYPE_SORCERY )
	Object():GetFilter():SetZone( 1_9_1 )
	Object():GetFilter():NotTargetted()
	return Object():GetFilter():Count()
end

CountOtherCardsTypeZone = function(1_10_0, 1_10_1, 1_10_2)
	Object():GetFilter():Clear()
	Object():GetFilter():SetCardInstance( 1_10_0 )
    Object():GetFilter():AddExtra( FILTER_EXTRA_FLIP_CARD_INSTANCE )
	Object():GetFilter():AddCardType( 1_10_1 )
	Object():GetFilter():SetZone( 1_10_2 )
	Object():GetFilter():NotTargetted()
	return Object():GetFilter():Count()
end

CountOtherCardsSubtypeZone = function(1_11_0, 1_11_1, 1_11_2)
	Object():GetFilter():Clear()
	Object():GetFilter():SetCardInstance( 1_11_0 )
    Object():GetFilter():AddExtra( FILTER_EXTRA_FLIP_CARD_INSTANCE )
	Object():GetFilter():AddCardType( CARD_TYPE_ARTIFACT )
	Object():GetFilter():AddCardType( CARD_TYPE_CREATURE )
    Object():GetFilter():AddCardType( CARD_TYPE_ENCHANTMENT )
	Object():GetFilter():AddCardType( CARD_TYPE_INSTANT )
    Object():GetFilter():AddCardType( CARD_TYPE_LAND )
    Object():GetFilter():AddCardType( CARD_TYPE_PLANESWALKER )
	Object():GetFilter():AddCardType( CARD_TYPE_SORCERY )
	Object():GetFilter():AddSubType( 1_11_1 )
	Object():GetFilter():SetZone( 1_11_2 )
	Object():GetFilter():NotTargetted()
	return Object():GetFilter():Count()
end

CountOtherCardsTypeSubtypeZone = function(1_12_0, 1_12_1, 1_12_2, 1_12_3)
	Object():GetFilter():Clear()
	Object():GetFilter():SetCardInstance( 1_12_0 )
    Object():GetFilter():AddExtra( FILTER_EXTRA_FLIP_CARD_INSTANCE )
	Object():GetFilter():AddCardType( 1_12_1 )
	Object():GetFilter():AddSubType( 1_12_2 )
	Object():GetFilter():SetZone( 1_12_3 )
	Object():GetFilter():NotTargetted()
	return Object():GetFilter():Count()
end

CountOtherCardsZonePlayer = function(1_13_0, 1_13_1, 1_13_2)
	Object():GetFilter():Clear()
	Object():GetFilter():SetCardInstance( 1_13_0 )
    Object():GetFilter():AddExtra( FILTER_EXTRA_FLIP_CARD_INSTANCE )
	Object():GetFilter():AddCardType( CARD_TYPE_ARTIFACT )
	Object():GetFilter():AddCardType( CARD_TYPE_CREATURE )
    Object():GetFilter():AddCardType( CARD_TYPE_ENCHANTMENT )
	Object():GetFilter():AddCardType( CARD_TYPE_INSTANT )
    Object():GetFilter():AddCardType( CARD_TYPE_LAND )
    Object():GetFilter():AddCardType( CARD_TYPE_PLANESWALKER )
	Object():GetFilter():AddCardType( CARD_TYPE_SORCERY )
	Object():GetFilter():SetZone( 1_13_1 )
	Object():GetFilter():NotTargetted()
	
	if 1_13_1 == ZONE_IN_PLAY then
		Object():GetFilter():SetController( 1_13_2 ) 
	else
		Object():GetFilter():SetPlayer( 1_13_2 ) 
	end
	
	return Object():GetFilter():Count()
end

CountOtherCardsTypeZonePlayer = function(1_14_0, 1_14_1, 1_14_2, 1_14_3)
	Object():GetFilter():Clear()
	Object():GetFilter():SetCardInstance( 1_14_0 )
    Object():GetFilter():AddExtra( FILTER_EXTRA_FLIP_CARD_INSTANCE )
	Object():GetFilter():AddCardType( 1_14_1 )
	Object():GetFilter():SetZone( 1_14_2 )
	Object():GetFilter():NotTargetted()
	
	if 1_14_2 == ZONE_IN_PLAY then
		Object():GetFilter():SetController( 1_14_3 ) 
	else
		Object():GetFilter():SetPlayer( 1_14_3 ) 
	end
	
	return Object():GetFilter():Count()
end

CountOtherCardsSubtypeZonePlayer = function(1_15_0, 1_15_1, 1_15_2, 1_15_3)
	Object():GetFilter():Clear()
	Object():GetFilter():SetCardInstance( 1_15_0 )
    Object():GetFilter():AddExtra( FILTER_EXTRA_FLIP_CARD_INSTANCE )
	Object():GetFilter():AddCardType( CARD_TYPE_ARTIFACT )
	Object():GetFilter():AddCardType( CARD_TYPE_CREATURE )
    Object():GetFilter():AddCardType( CARD_TYPE_ENCHANTMENT )
	Object():GetFilter():AddCardType( CARD_TYPE_INSTANT )
    Object():GetFilter():AddCardType( CARD_TYPE_LAND )
    Object():GetFilter():AddCardType( CARD_TYPE_PLANESWALKER )
	Object():GetFilter():AddCardType( CARD_TYPE_SORCERY )
	Object():GetFilter():AddSubType( 1_15_1 )
	Object():GetFilter():SetZone( 1_15_2 )
	Object():GetFilter():NotTargetted()
	
	if 1_15_2 == ZONE_IN_PLAY then
		Object():GetFilter():SetController( 1_15_3 ) 
	else
		Object():GetFilter():SetPlayer( 1_15_3 ) 
	end
	
	return Object():GetFilter():Count()
end

CountOtherCardsTypeSubtypeZonePlayer = function(1_16_0, 1_16_1, 1_16_2, 1_16_3, 1_16_4)
	Object():GetFilter():Clear()
	Object():GetFilter():SetCardInstance( 1_16_0 )
    Object():GetFilter():AddExtra( FILTER_EXTRA_FLIP_CARD_INSTANCE )
	Object():GetFilter():AddCardType( 1_16_1 )
	Object():GetFilter():AddSubType( 1_16_2 )
	Object():GetFilter():SetZone( 1_16_3 )
	Object():GetFilter():NotTargetted()
	
	if 1_16_3 == ZONE_IN_PLAY then
		Object():GetFilter():SetController( 1_16_4 ) 
	else
		Object():GetFilter():SetPlayer( 1_16_4 ) 
	end
	
	return Object():GetFilter():Count()
end




CountCardsPlayerControls = function(1_17_0)
	return CountCardsZonePlayer( ZONE_IN_PLAY, 1_17_0 )
end

CountCardsTypePlayerControls = function(1_18_0, 1_18_1)
	return CountCardsTypeZonePlayer( 1_18_0, ZONE_IN_PLAY, 1_18_1 )
end

CountCardsSubtypePlayerControls = function(1_19_0, 1_19_1)
	return CountCardsSubtypeZonePlayer( 1_19_0, ZONE_IN_PLAY, 1_19_1 )
end

CountCardsTypeSubtypePlayerControls = function(1_20_0, 1_20_1, 1_20_2)
	return CountCardsTypeSubtypeZonePlayer( 1_20_0, 1_20_1, ZONE_IN_PLAY, 1_20_2 )
end

CountOtherCardsPlayerControls = function(1_21_0, 1_21_1)
	return CountOtherCardsZonePlayer( 1_21_0, ZONE_IN_PLAY, 1_21_1 )
end

CountOtherCardsTypePlayerControls = function(1_22_0, 1_22_1, 1_22_2)
	return CountOtherCardsTypeZonePlayer( 1_22_0, 1_22_1, ZONE_IN_PLAY, 1_22_2 )
end

CountOtherCardsSubtypePlayerControls = function(1_23_0, 1_23_1, 1_23_2)
	return CountOtherCardsSubtypeZonePlayer( 1_23_0, 1_23_1, ZONE_IN_PLAY, 1_23_2 )
end

CountOtherCardsTypeSubtypePlayerControls = function(1_24_0, 1_24_1, 1_24_2, 1_24_3)
	return CountOtherCardsTypeSubtypeZonePlayer( 1_24_0, 1_24_1, 1_24_2, ZONE_IN_PLAY, 1_24_3 )
end





