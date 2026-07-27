local CombatVerbs = VFS.Include("modules/combat/lib/mission_verbs.lua")

return {
	-- No Finalize: combat arms nothing at load, so a file that fails to parse
	-- leaves no combat state behind — the loader's transaction covers the
	-- staging engine, not the modules that contribute to it.
	---@param file MissionDslFile
	ForFile = function(file)
		return { env = { Combat = CombatVerbs.MakeCombat(file) } }
	end,
}
