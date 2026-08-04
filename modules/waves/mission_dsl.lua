--- Waves contributes no words of its own: the verbs ride the pack handle a flavor module
--- hands out (WavesVerbs.Pack), so the vocabulary a mission may say is exactly the set of
--- packs the modules its manifest requires publish.

return {
	-- No Finalize: waves arms nothing at load, so a file that fails to parse
	-- leaves no director behind.
	---@param file MissionDslFile
	ForFile = function(file)
		return { env = {} }
	end,
}
