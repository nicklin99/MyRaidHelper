--[[ 
BUFF监控
]]
-- init

local NickAddon = LibStub("AceAddon-3.0"):GetAddon("NickAddon")

local BuffModule = NickAddon.NewModule("WatchBuff")

--[[ 
  
]]
-- init
function BuffModule:OnInitialize()
end

-- enable
function BuffModule:OnEnable()
end

-- disable
function BuffModule:OnDisable()
end

-- methods
BuffModule = BuffModule or {}
function BuffModule:load()
  local count = getNumGroupMembers()
  local noBuffUnit = {}
  for i = 1, count do
    local unitId = "raid" .. i
    local buffName = "防护自然"
    local buff = {UnitBuff(unitId, buffName)}
    if buff then
    else
      noBuffUnit[unitId] = UnitName(unitId)
    end
  end
end
