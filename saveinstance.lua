local isdecompilerenabled = false -- set this to false if you dont want to use the disassembler or it corrupts the game file

if isdecompilerenabled then
    getgenv().decompile = function(p)
        return loadstring(game:HttpGet("https://raw.githubusercontent.com/TheSeaweedMonster/Luau/main/decompile.lua"))()(p,true)
    end
end

local Params = {
    RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
    SSI = "saveinstance",
}
local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()

synsaveinstance()
