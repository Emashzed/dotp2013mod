TopCardHasKinshipWith = function( source )
   if (source:GetController():Library_Count() > 0) then
      local filter = source:GetFilter()
      filter:Clear()
      filter:SetZone( ZONE_LIBRARY )
      filter:SetPlayer( source:GetController() )
      filter:SetSubTypes( source:GetSubType() )
      filter:AddExtra( FILTER_EXTRA_ANY_SUB_TYPE )
      filter:SetPortion( 1 )
      return (filter:CountStopAt( 1 ) == 1)
   else
      return false
   end
end

SourceHasAnyCreatureInPlayNotBonded = function( source )
  MTG():ClearFilterMarkedObjectsInZone( ZONE_IN_PLAY )
  local filter = source:GetFilter()
  filter:Clear()
  filter:NotTargetted()
  filter:SetController( source:GetController() )
  filter:SetZone( ZONE_IN_PLAY )
  filter:AddCardType( CARD_TYPE_CREATURE )
  filter:SetCardInstance( source )
  filter:AddExtra( FILTER_EXTRA_FLIP_CARD_INSTANCE )
  local filter_count = filter:EvaluateObjects()
    for i=0,filter_count-1 do
    	local candidate = filter:GetNthEvaluatedObject(i)
    	if candidate:GetDataChest():Get_Int(CHARACTERISTIC_SOULBOUND) ~= 1 then
    		candidate:MarkForFilter()
    	end
    end
    filter:SetMarkedObjectsOnly()
    return (filter:CountStopAt( 1 ) > 0)
end