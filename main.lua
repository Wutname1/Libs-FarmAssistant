---@class LibFA : AceAddon, AceConsole-3.0
local LibFA = LibStub('AceAddon-3.0'):NewAddon('LibFA', 'AceConsole-3.0')
---@diagnostic disable-next-line: undefined-field
-- local L = LibStub('AceLocale-3.0'):GetLocale('LibFA', true) ---@type LibFA_locale
-- LibFA.L = L

---@class LibFA.DB
local DBDefaults = {
	enabled = true,
	showWindow = true,
	outputInChat = false,
	debug = false
}

function LibFA:OnInitialize()
	self.db = LibStub('AceDB-3.0'):New('LibFADB', {profile = DBDefaults})
	self:RegisterChatCommand('LibFA', 'ChatCommand')
end

function LibFA:OnEnable()
	self:RegisterChatCommand('LibFA', 'ChatCommand')
end

function LibFA:ChatCommand(input)
end
