--------------------------------------------------------------------------------
-- agent.lua
--------------------------------------------------------------------------------
local _PACKAGE = string.gsub(...,"%.","/") or ""

local INFO_MSG = tengine.INFO_MSG
local DEBUG_MSG = tengine.DEBUG_MSG
local ERROR_MSG = tengine.ERROR_MSG

local class = require 'lib.middleclass'
local stateful = require 'lib.stateful'

local _M = class("agent")

_M:include(stateful)

function _M:initialize(listener, session)
    self.session = session
    self.listener = listener
end

function _M:get_session()
    return self.session
end

function _M:get_listener()
    return self.listener
end

function _M:get_client_address()
    if self.listener then
        return self.listener:remoteaddress(self.session)
    end

    return ""
end

return _M

