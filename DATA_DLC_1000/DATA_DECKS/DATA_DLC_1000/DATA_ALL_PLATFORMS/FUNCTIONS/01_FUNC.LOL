
--=================================================================================
--====================SET GLOBAL DATA==============================================
--=================================================================================

local MetaWeakKeys = { __mode = "k" };
local MetaWeakValues = { __mode = "v" };
TokenTable = { "MANATOKEN_W", "MANATOKEN_U", "MANATOKEN_B", "MANATOKEN_R", "MANATOKEN_G" };
TokenTable[0] = "MANATOKEN_C"
TokenTable.C = "MANATOKEN_C"
TokenTable.R = "MANATOKEN_R"
TokenTable.G = "MANATOKEN_G"
TokenTable.B = "MANATOKEN_B"
TokenTable.U = "MANATOKEN_U"
TokenTable.W = "MANATOKEN_W"

--=================================================================================
--=================CONTENT PACK FUNCTIONS==========================================
--=================================================================================
function Scry(player,num)
local n = MTG():GetActionRepCount()
local message = {"CARD_QUERY_CHOOSE_CARD_TO_PUT_ON_BOTTOM_LIBRARY","CARD_QUERY_CHOOSE_CARD_TO_PUT_ONTO_LIBRARY"}
local cards = {}
if n ~= 0 then
local carddc = EffectDC():Get_Targets(0)
	for i=0,num-1 do
		local card = carddc:Get_CardPtr(i)
		if card then cards[#cards+1] = card end
	end
	for i=1,#cards do
		if cards[i] then cards[i]:PutInLibrary(n-2) end
	end
end
local remain = num - #cards
if n < 2 and remain > 0 then
	local filter = Object():GetFilter()
	filter:Clear()
	filter:NotTargetted()
	filter:SetPortion( remain )
	filter:SetPlayer( player )
	filter:SetZone( ZONE_LIBRARY )
	player:SetTargetCount( remain )
	for i=1,remain do
		player:SetTargetPrompt( i-1, message[n+1] )
	end
	player:ChooseTargetsWithFlags( NO_VALIDATION, EffectDC():Make_Targets(0), QUERY_FLAG_CAN_BE_FINISHED_EARLY + QUERY_FLAG_CAN_BE_FINISHED_EARLY_FOR_AI_AS_WELL )
	return true
end
return false
end

local manaTable = setmetatable( {}, MetaWeakKeys );
function ProduceMana(color,amount)
local control = Object():GetPlayer();
if (manaTable[control] == nil) then
	manaTable[control] = {};
end

local mana = manaTable[control][color];

if mana then
	local total = #mana;
	while total ~= 0 do
		if amount > 0 then
			local card = mana[total];
			if card and card:Tapped() ~= 0 then
				amount = amount - 1;
				card:Untap()
			end
		else
			total = 1
		end
		total = total - 1;
	end
else
	mana = {};
end

while amount > 0 do
	local token = MTG():ObtainToken( TokenTable[color], control );
	if token ~= nil then
		token:PutIntoPlay( control );
		mana[#mana + 1] = token;
		amount = amount - 1;
	end
end

manaTable[control][color] = mana;
end