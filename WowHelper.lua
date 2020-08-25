-- init

local NickAddon = LibStub("AceAddon-3.0"):NewAddon("NickAddon")

--[[ 
  addon events handlders
]]
-- init
function NickAddon:OnInitialize()
  self.db = LibStub("AceDB-3.0"):New("NickAddonDB")
end

-- enable
function NickAddon:OnEnable()
end

-- disable
function NickAddon:OnDisable()
end
