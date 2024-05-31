local jobId = game.JobId

local ExecutorUsing = is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Trigon" or secure_load and "Sentinel" or KRNL_LOADED and "Krnl" or SONA_LOADED and "Sona" or "Fluxus" or "Fluxus"
local HttpService = game:GetService("HttpService")
local Data =
{
    ["embeds"] = {
        {
            ["title"] = "Thông Tin | Account",
            ["url"] = "https://www.roblox.com/users/"..game.Players.LocalPlayer.UserId,
            ["description"] = "```"..game.Players.LocalPlayer.DisplayName.." ```",
            ["color"] = tonumber(322852),
            ["thumbnail"] = {["url"] = "https://cdn.discordapp.com/attachments/1214650224161726544/1235943849537568828/IMG_1714652535034_1714652539506.jpg?ex=663635e8&is=6634e468&hm=a5530ef6d0795650fb1590e218c3e56e0985481f3261dd5a406ed61a4d33bce5&"},
            ["fields"] = {
                {
                    ["name"] = "Execute:",
                    ["value"] = "```"..ExecutorUsing.."```",
                    ["inline"] = true
                },
                {
                    ["name"] = "Job ID:",
                    ["value"] = " " .. jobId, 
                    ["inline"] = true
                },
                {
                    ["name"] = "Script Teleport:",
                    ["value"] = "\n" .. 'game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', "'..game.JobId..'", game.Players.LocalPlayer)' .. "\n", 
                    ["inline"] = true 
                },
                {
                    ["name"] = "Ty For Use:",
                    ["value"] = "**__AnDepZai Hub__**",
                    ["inline"] = true
                }
            }              
        }
    }
}

local Headers = {["Content-Type"] = "application/json"}
local Encoded = HttpService:JSONEncode(Data)

local Request = http_request or request or HttpPost or syn.request
local Final = {Url = "https://discord.com/api/webhooks/1244799543489597511/C5ZfEN3rooYBhbA-kkJalm-Nqs4ToDDQAYuM4bZF6KcVhtLKqha-aMoQCnx36tXRqqRT", Body = Encoded, Method = "POST", Headers = Headers}
Request(Final)