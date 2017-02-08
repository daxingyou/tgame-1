--------------------------------------------------------------------------------
-- logic.lua
--------------------------------------------------------------------------------
local _PACKAGE = string.gsub(...,"%.","/") or ""

local INFO_MSG = tengine.INFO_MSG
local DEBUG_MSG = tengine.DEBUG_MSG
local ERROR_MSG = tengine.ERROR_MSG
local p = tengine.p

local class = require('lib.middleclass')

local super = require('framework.base')

local _M = class("mj", super)

function _M:initialize(fw)
	p('mj initialize')
	super.initialize(self, fw)
end

--- 游戏开始
function _M:on_game_start()
end

--- 游戏结束
function _M:on_game_over()
end

--- 场景
function _M:on_game_scene()
end

--- 玩家坐下
function _M:on_player_sitdown(chairid, player, looker)
end

--- 玩家起立
function _M:on_player_standup(chairid, player, looker)
end

--- 玩家准备
function _M:on_player_ready(chairid, player, ...)
end

return _M