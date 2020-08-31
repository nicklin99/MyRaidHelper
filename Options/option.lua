-- init

local NickAddon = LibStub("AceAddon-3.0"):NewAddon("NickAddon")
local AceConfig = LibStub("AceConfig-3.0")

-- create module

local ConfigModule = NickAddon.NewModule("NickConfig", nil, "AceConsole-3.0")

local options = {
  type = "group",
  args = {
    enable = {
      name = "开启",
      desc = "启用/禁用Buff监控",
      type = "toggle",
      set = function(info, val)
        ConfigModule.profile.buff.enable = val
      end,
      get = function(info)
        return ConfigModule.profile.buff.enable
      end
    }
  }
}

AceConfig:RegisterOptionsTable("NickConfig", options, {"/nick"})

-- event handlers

function ConfigModule:OnInitialize()
  -- load db
  local defaults = {
    profile = {
      buff = {
        enable = true
      }
    }
  }
  self.db = LibStub("AceDB-3.0"):New("NickAddonDB", defaults, true)

end

function ConfigModule:Disable()

end

-- methods
function ConfigModule:Create()
  
end
