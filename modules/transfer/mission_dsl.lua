local TransferVerbs = VFS.Include("modules/transfer/lib/mission_verbs.lua")

return {
	-- No Finalize: transfer arms nothing at load.
	---@param file MissionDslFile
	ForFile = function(file)
		return { env = { Transfer = TransferVerbs.MakeTransfer(file.groups or {}) } }
	end,
}
