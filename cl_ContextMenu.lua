
surface.CreateFont( "Bariol25", {
            font = "Bariol Regular",
            extended = false,
            size = 25,
            weight = 600,
            blursize = 0,
            scanlines = 0,
            antialias = true,
            underline = false,
            italic = false,
            strikeout = false,
            symbol = false,
            rotary = false,
            shadow = false,
            additive = false,
            outline = false,
        } )


surface.CreateFont( "Barial35", {
            font = "Bariol Regular",
            extended = false,
            size = 40,
            weight = 600,
            blursize = 0,
            scanlines = 0,
            antialias = true,
            underline = false,
            italic = false,
            strikeout = false,
            symbol = false,
            rotary = false,
            shadow = false,
            additive = false,
            outline = false,
        } )
hook.Add("ContextMenuCreated","hide_it_like_it's_hot",function()
    local icons = list.GetForEdit("DesktopWindows")
    for key in pairs(icons) do
        icons[key] = nil
    end
end)
textec = color_black
couleuradmin = Color(196, 13, 13, 255)
couleuradminhovered = Color(196, 13, 13, 100)
couleuradminmode = Color(196, 13, 13, 255)
couleuradminmodehovered = Color(196, 13, 13, 100)
couleurnormal = Color(22, 127, 207, 255)
couleurhovered = Color(22, 127, 207, 100)

local function dummy() end
menubar = {
    Init = dummy,
    ParentTo = dummy,
    IsParent = dummy
}

surface.CreateFont("Police1",{

    font = "Trebuchet18",
    size = 40,
    weight = 800,

})
local blur = Material("pp/blurscreen")

local function DrawBlur(panel, amount)
    local x, y = panel:LocalToScreen(0, 0)
    local scrW, scrH = ScrW(), ScrH()
    surface.SetDrawColor(255, 255, 255)
    surface.SetMaterial(blur)
    for i = 1, 3 do
        blur:SetFloat("$blur", (i / 3) * (amount or 6))
        blur:Recompute()
        render.UpdateScreenEffectTexture()
        surface.DrawTexturedRect(x * -1, y * -1, scrW, scrH)
    end
end

hook.Add("OnContextMenuOpen","tanaka:ContextMenu::::Open", function ()




BaseBox = vgui.Create("DFrame")

    BaseBox:SetSize(450,ScrH())
    BaseBox:SetTitle("")
    BaseBox:ShowCloseButton(false)
    BaseBox:SetVisible(true)
    BaseBox:MakePopup()
BaseBox:SetPos(ScrW(),0)
   BaseBox:SetDraggable(false)
    BaseBox:SetContentAlignment(5)
    BaseBox:MoveTo(ScrW()-BaseBox:GetWide(),0,0.5)
  BaseBox:SetBackgroundBlur( 1007 )

    BaseBox.Paint = function(self, w, h)
    DrawBlur(self,8)

                                     draw.SimpleText("Commandes","Barial35",w/2,"+250",color_black,TEXT_ALIGN_CENTER)

                                 draw.SimpleText("Magasin","Barial35",w/2,"500",color_black,TEXT_ALIGN_CENTER)

                draw.RoundedBox(5, 0, 0, w, h, Color(52, 73, 94,100 ))

end


    local image = vgui.Create("DImage", BaseBox)
            image:SetPos(BaseBox:GetWide() / 8, 40)
            image:SetSize(351,176)
            image:SetImage("petit_tanaka.png")



   Tabscroolbouton = vgui.Create( "DScrollPanel", BaseBox )
    Tabscroolbouton:SetSize( 625,200 )
   Tabscroolbouton:SetPos( 50, 300    )

    local sbar = Tabscroolbouton:GetVBar()



     function sbar:Paint( w, h )
        end
        function sbar.btnUp:Paint( w, h )
        end
        function sbar.btnDown:Paint( w, h )
        end
        function sbar.btnGrip:Paint( w, h )
            draw.RoundedBox( 6, 0, 0, w-8, h, Color( 210, 151, 035,220 ) )
        end



 local staff = vgui.Create("DButton", Tabscroolbouton)
            staff:SetText("")
                staff:SetPos(2,8)
            staff:SetTextColor(Color(11, 19, 23, 255))
            staff:SetSize(350, 40)

            staff.Paint = function(self, w, h)

       if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Appeler un staff","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

            end
            staff.DoClick = function()



MenuDemandeAdmin = vgui.Create("DFrame")

    MenuDemandeAdmin:SetSize(600,250)
    MenuDemandeAdmin:SetTitle("")
    MenuDemandeAdmin:ShowCloseButton(false)
    MenuDemandeAdmin:SetVisible(true)
    MenuDemandeAdmin:MakePopup()
MenuDemandeAdmin:Center()
   MenuDemandeAdmin:SetDraggable(false)
    MenuDemandeAdmin:SetContentAlignment(5)

    MenuDemandeAdmin.Paint = function(self, w, h)

                    draw.RoundedBox(5, 0, 0, w, h, Color(52, 73, 94,200 ))





                                 draw.SimpleText("Votre raison :","Bariol25",w/2,"8",color_white,TEXT_ALIGN_CENTER)


end

                    local ChooseClass3 = vgui.Create( "DTextEntry", MenuDemandeAdmin)
    ChooseClass3:SetPos( 50, 100 )
    ChooseClass3:SetSize( 500, 30 )
    ChooseClass3:SetValue("")





 local fermer = vgui.Create("DButton", MenuDemandeAdmin)
            fermer:SetText("X")
                fermer:SetPos(567,8)
            fermer:SetTextColor(color_white)
            fermer:SetSize(20, 20)

            fermer.Paint = function(self, w, h)
                draw.RoundedBox(5, 0, 0, w, h, Color(255, 0, 0, 255))

            end
            fermer.DoClick = function()
MenuDemandeAdmin:Close()
                    end

                     local valider = vgui.Create("DButton", MenuDemandeAdmin)
            valider:SetText("")
                valider:SetPos(250,200)
            valider:SetTextColor(color_white)
            valider:SetSize(100, 20)

            valider.Paint = function(self, w, h)

     if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                                              draw.SimpleText("Valider","Trebuchet18",w/2,"2",color_white,TEXT_ALIGN_CENTER)

            end
            valider.DoClick = function()

                    if ChooseClass3:GetText() == "" or ChooseClass3:GetText() == " " then return end

                LocalPlayer():ConCommand("say @ ".. ChooseClass3:GetText())




MenuDemandeAdmin:Close()
                    end

end



 local stopsound = vgui.Create("DButton", Tabscroolbouton)
            stopsound:SetText("")
                stopsound:SetPos(2,50)
            stopsound:SetTextColor(Color(11, 19, 23, 255))
            stopsound:SetSize(350, 40)

            stopsound.Paint = function(self, w, h)


       if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end
            draw.SimpleText("Stopper les sons","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

end


            stopsound.DoClick = function()

LocalPlayer():ConCommand("stopsound")
        end

 local personnes = vgui.Create("DButton", Tabscroolbouton)
            personnes:SetText("")
                personnes:SetPos(2,92)
            personnes:SetTextColor(Color(11, 19, 23, 255))
            personnes:SetSize(350, 40)

            personnes.Paint = function(self, w, h)


       if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                    draw.SimpleText("3 éme personnes","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

            end
            personnes.DoClick = function()
RunConsoleCommand("simple_thirdperson_enable_toggle")
        end

         local arme = vgui.Create("DButton", Tabscroolbouton)
            arme:SetText("")
                arme:SetPos(2,134)
            arme:SetTextColor(Color(11, 19, 23, 255))
            arme:SetSize(350, 40)

            arme.Paint = function(self, w, h)

       if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Jetez son arme","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

            end
            arme.DoClick = function()
RunConsoleCommand("say","/drop")
        end

               local vcmod = vgui.Create("DButton", Tabscroolbouton)
            vcmod:SetText("")
                vcmod:SetPos(2,176)
            vcmod:SetTextColor(Color(11, 19, 23, 255))
            vcmod:SetSize(350, 40)

            vcmod.Paint = function(self, w, h)

       if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Menu VCMOD","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

            end
            vcmod.DoClick = function()
RunConsoleCommand("vcmod")
        end local modeadmin = vgui.Create("DButton", Tabscroolbouton)
            modeadmin:SetText("")
                modeadmin:SetPos(2,218)
            modeadmin:SetTextColor(Color(11, 19, 23, 255))
            modeadmin:SetSize(350, 40)

            modeadmin.Paint = function(self, w, h)
                 if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleuradminmodehovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleuradminmode)

end
                        draw.SimpleText("Mode Admin","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

            end
            modeadmin.DoClick = function()
RunConsoleCommand("tanaka_modeadmin")
        end local logs = vgui.Create("DButton", Tabscroolbouton)
            logs:SetText("")
                logs:SetPos(2,260)
            logs:SetTextColor(Color(11, 19, 23, 255))
            logs:SetSize(350, 40)

            logs.Paint = function(self, w, h)
               if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleuradminhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleuradmin)

end                          draw.SimpleText("Logs","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

            end
            logs.DoClick = function()
RunConsoleCommand("say","!blogs")
        end local bwhitelist = vgui.Create("DButton", Tabscroolbouton)
            bwhitelist:SetText("")
                bwhitelist:SetPos(2,302)
            bwhitelist:SetTextColor(Color(11, 19, 23, 255))
            bwhitelist:SetSize(350, 40)

            bwhitelist.Paint = function(self, w, h)
             if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleuradminhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleuradmin)

end                           draw.SimpleText("BWhitelist","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

            end
            bwhitelist.DoClick = function()
RunConsoleCommand("say","!bwhitelist")
        end

 local whitelistpolice = vgui.Create("DButton", Tabscroolbouton)
            whitelistpolice:SetText("")
                whitelistpolice:SetPos(2,344)
            whitelistpolice:SetTextColor(Color(11, 19, 23, 255))
            whitelistpolice:SetSize(350, 40)

            whitelistpolice.Paint = function(self, w, h)
             if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleuradminhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleuradmin)

end                           draw.SimpleText("Menu de Gestion tanaka","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

            end
            whitelistpolice.DoClick = function()
RunConsoleCommand("tanaka_Gestion_Menu")
        end


 local skinfondabouton = vgui.Create("DButton", Tabscroolbouton)
            skinfondabouton:SetText("")
            skinfondabouton:SetTextColor(Color(11, 19, 23, 255))
            skinfondabouton:SetSize(350, 40)

            skinfondabouton.Paint = function(self, w, h)
             if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleuradminhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleuradmin)

end                           draw.SimpleText("Votre Skin","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

            end
            skinfondabouton.DoClick = function()
RunConsoleCommand("tanaka_skin_fonda")
        end

         local ulxmenu = vgui.Create("DButton", Tabscroolbouton)
            ulxmenu:SetText("")
                ulxmenu:SetPos(2,386)
            ulxmenu:SetTextColor(Color(11, 19, 23, 255))
            ulxmenu:SetSize(350, 40)

            ulxmenu.Paint = function(self, w, h)
             if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleuradminhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleuradmin)

end                           draw.SimpleText("Ulx Menu","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

            end
            ulxmenu.DoClick = function()
RunConsoleCommand("ulx","menu")
        end


               local warn = vgui.Create("DButton", Tabscroolbouton)
            warn:SetText("")
                warn:SetPos(2,428)
            warn:SetTextColor(Color(11, 19, 23, 255))
            warn:SetSize(350, 40)


            warn.Paint = function(self, w, h)
             if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleuradminhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleuradmin)

end                           draw.SimpleText("Warn Menu","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

            end
            warn.DoClick = function()
RunConsoleCommand("say","!warnings")
        end

                    if LocalPlayer():IsSuperAdmin() then
        bwhitelist:SetVisible(true)
        whitelistpolice:SetVisible(true)

      else

        bwhitelist:SetVisible(false)
        whitelistpolice:SetVisible(false)
        end


  if LocalPlayer():GetUserGroup() == "superadmin" or LocalPlayer():GetUserGroup() == "admin" or LocalPlayer():GetUserGroup() == "Modérateur" or LocalPlayer():GetUserGroup() == "moderateur-test" then
        modeadmin:SetVisible(true)
        if LocalPlayer():GetNWString("ModeAdmin") == "En service" then

            logs:SetVisible(true)
            ulxmenu:SetVisible(true)
            warn:SetVisible(true)

else
            logs:SetVisible(false)

ulxmenu:SetVisible(false)
warn:SetVisible(false)

end

 else

            modeadmin:SetVisible(false)
               logs:SetVisible(false)
bwhitelist:SetVisible(false)
whitelistpolice:SetVisible(false)
ulxmenu:SetVisible(false)
warn:SetVisible(false)

end

if LocalPlayer():SteamID() == "STEAM_0:1:204432827" or LocalPlayer():SteamID() == "STEAM_0:0:190113080" then
        if LocalPlayer():GetNWString("ModeAdmin") == "En service" then

                            skinfondabouton:SetPos(2,470)

                        else

                                            skinfondabouton:SetPos(2,260)


        end
        skinfondabouton:SetVisible(true)

    else

        skinfondabouton:SetVisible(false)

end
   local categoryWeapon = vgui.Create( "DPanelList", BaseBox )
            categoryWeapon:SetSize( 400, ScrH() / 4 )
            categoryWeapon:SetPos( 25, 550 )
            categoryWeapon:SetSpacing( 3 )
            categoryWeapon:EnableHorizontal( false )
            categoryWeapon:EnableVerticalScrollbar( true )
            categoryWeapon.Paint = function(s,w,h)
                draw.RoundedBox(0,0,0,w,h,Color(255,0,0,0))
            end

            local sbar = categoryWeapon.VBar
            function sbar:Paint( w, h )
                draw.RoundedBox( 0, 0, 0, w, h,  Color(1, 58, 128, 255) )
            end
            function sbar.btnUp:Paint( w, h )
                draw.RoundedBox( 0, 0, 0, w, h, Color(1, 58, 128, 255) )
            end
            function sbar.btnDown:Paint( w, h )
                draw.RoundedBox( 0, 0, 0, w, h, Color(1, 58, 128, 255) )
            end
            function sbar.btnGrip:Paint( w, h )
                draw.RoundedBox( 0, 0, 0, w, h, Color(1, 58, 128, 255) )
            end


for k, v in pairs(DarkRPEntities) do
        local ShowThisItem = true
        if istable(v.allowed) and not table.HasValue( v.allowed, LocalPlayer():Team() ) then ShowThisItem = false end
        if ShowThisItem then
            local test = vgui.Create("DPanel",categoryWeapon)
            test:SetSize(categoryWeapon:GetWide() / 2 - 2,ScrH() * 0.06)
            test.Paint = function(s,w,h)
                draw.RoundedBox(0,0,0,w,h,couleurnormal)
                draw.RoundedBox(0,0,0,ScrW() * 0.033,ScrW() * 0.033,Color(196, 196, 196, 255))
                draw.SimpleText(string.upper(v.name),"SlawerContextFontSItemTitle",ScrW() * 0.038,ScrH() * 0.002,Color(255,255,255))
                draw.SimpleText("Prix: " .. v.price .. "$","SlawerContextFontSItemPrice",ScrW() * 0.038,ScrH() * 0.018,Color(255,255,255))
            end

            local model = vgui.Create("SpawnIcon",test)
            model:SetSize(ScrW() * 0.033,ScrW() * 0.033)
            model:SetModel(v.model)

            local buy = vgui.Create("DButton",test)
            buy:SetSize(ScrW() * 0.06,ScrH()* 0.02)
            buy:SetPos(ScrW() * 0.038,ScrH()*0.035)
            buy:SetText("Acheter")
            buy:SetTextColor(Color(255,255,255))
            buy.Paint = function(s,w,h)
                if buy:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, Color(52, 73, 94,100 ))

        else
                                draw.RoundedBox(0,0,0,w,h,Color(52, 73, 94,50 ))

                end
            end
            buy.DoClick = function() LocalPlayer():ConCommand("darkrp " .. v.cmd) end

            categoryWeapon:AddItem(test)
        end
    end

 hook.Add("HUDPaint","tanaka:ContextMenu::HUDPaint", function()

        for k, v in pairs(player.GetAll()) do
            pos = v:EyePos()
                pos.z = pos.z
                pos = pos:ToScreen()

              --Details

                if v:GetPos():Distance(LocalPlayer():GetPos()) < 300 && LocalPlayer():GetNWString("ModeAdmin") == "En service" then
 if v != LocalPlayer() then
                     local x, y = gui.MousePos()

                    --FREEZE
                    if tonumber(x) > tonumber(pos.x-180) && tonumber(x) < tonumber(pos.x-180)+100 && tonumber(y) > tonumber(pos.y) && tonumber(y) < tonumber(pos.y)+30  then

                        draw.RoundedBox(6, pos.x-180, pos.y,100,30, Color(200, 0, 0, 255))

                        if input.IsMouseDown( MOUSE_LEFT ) == true then
                                                                chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Vous revive ", v:GetName() )

                            net.Start("tanaka:ContextMenu::Revive")
                            net.WriteEntity(v)
                            net.SendToServer()

hook.Remove("HUDPaint","tanaka:ContextMenu::HUDPaint")

                        end

                    else

                    draw.RoundedBox(6, pos.x-180, pos.y,100,30, Color(255, 0, 0, 255))

                    end


                        draw.DrawText("Revive" , "tanaka:ModeAdmin::Police1", pos.x-135 , pos.y , Color(255,255,255), TEXT_ALIGN_CENTER)


    --RETURN ULX
    if v:Alive() then
                    if tonumber(x) > tonumber(pos.x-180) && tonumber(x) < tonumber(pos.x-180)+100 && tonumber(y) > tonumber(pos.y + 60) && tonumber(y) < tonumber(pos.y + 60)+30  then

                        draw.RoundedBox(6, pos.x-180, pos.y + 60,100,30, Color(200, 0, 0, 255))

                        if input.IsMouseDown( MOUSE_LEFT ) == true then

                                       RunConsoleCommand("ulx","return",v:GetName())
                                                                chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Vous return ", v:GetName() )

hook.Remove("HUDPaint","tanaka:ContextMenu::HUDPaint")


                        end

                    else

                    draw.RoundedBox(6, pos.x-180, pos.y + 60,100,30, Color(255, 0, 0, 255))

                    end


                        draw.DrawText("Return" , "tanaka:ModeAdmin::Police1", pos.x-135 , pos.y + 60, Color(255,255,255), TEXT_ALIGN_CENTER)

         if tonumber(x) > tonumber(pos.x-180) && tonumber(x) < tonumber(pos.x-180)+100 && tonumber(y) > tonumber(pos.y + 120) && tonumber(y) < tonumber(pos.y + 120)+30  then

                        draw.RoundedBox(6, pos.x-180, pos.y + 120,100,30, Color(200, 0, 0, 255))

                        if input.IsMouseDown( MOUSE_LEFT ) == true then

                                                                                            chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Arme(s) de ", v:GetName() )

        for _, ent in pairs(v:GetWeapons()) do


                chat.AddText(Color(255, 255, 255, 255), ent:GetPrintName() )
end

                                                                                            chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "SteamID 32 ", v:SteamID() , " SteamID 64 ", v:SteamID64() )
    net.Start("tanaka:AdminMode::CheckGradePolice")
    net.WriteEntity(v)
    net.SendToServer()

    net.Receive("tanaka:AdminMode::ReturnCheckGradePolice",function()
        local gradepolice = net.ReadString()
                                         chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Grade de Police : ", gradepolice )
end)


hook.Remove("HUDPaint","tanaka:ContextMenu::HUDPaint")


                        end

                    else

                    draw.RoundedBox(6, pos.x-180, pos.y + 120,100,30, Color(255, 0, 0, 255))

                    end


                        draw.DrawText("Infos" , "tanaka:ModeAdmin::Police1", pos.x-135 , pos.y + 120, Color(255,255,255), TEXT_ALIGN_CENTER)

                           if tonumber(x) > tonumber(pos.x-180) && tonumber(x) < tonumber(pos.x-180)+100 && tonumber(y) > tonumber(pos.y + 180) && tonumber(y) < tonumber(pos.y + 180)+30  then

                        draw.RoundedBox(6, pos.x-180, pos.y + 180,100,30, Color(200, 0, 0, 255))

                        if input.IsMouseDown( MOUSE_LEFT ) == true then
                            if v:IsFrozen() == false then
     net.Start("tanaka:ContextMenu::freeze")
                            net.WriteEntity(v)
                            net.WriteString("frezze")
                            net.SendToServer()                                                                      hook.Remove("HUDPaint","tanaka:ContextMenu::HUDPaint")

                                                                                            chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "vous avez freeze ", v:GetName() )
                       else
                        print(v:IsFrozen())
           net.Start("tanaka:ContextMenu::freeze")
                            net.WriteEntity(v)
                            net.WriteString("unfrezze")
                            net.SendToServer()
                                          hook.Remove("HUDPaint","tanaka:ContextMenu::HUDPaint")
                                                  chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "vous avez unfreeze ", v:GetName() )

                       end


                        end

                    else

                    draw.RoundedBox(6, pos.x-180, pos.y + 180,100,30, Color(255, 0, 0, 255))

                    end

if v:IsFrozen() == false then
                        draw.DrawText("Freeze" , "tanaka:ModeAdmin::Police1", pos.x-135 , pos.y + 180, Color(255,255,255), TEXT_ALIGN_CENTER)
else
                                          draw.DrawText("UnFreeze" , "tanaka:ModeAdmin::Police1", pos.x-135 , pos.y + 180, Color(255,255,255), TEXT_ALIGN_CENTER)
end

  if tonumber(x) > tonumber(pos.x-180) && tonumber(x) < tonumber(pos.x-180)+100 && tonumber(y) > tonumber(pos.y + 240) && tonumber(y) < tonumber(pos.y + 240)+30  then

                        draw.RoundedBox(6, pos.x-180, pos.y + 240,150,30, Color(200, 0, 0, 255))

                        if input.IsMouseDown( MOUSE_LEFT ) == true then

                                                                                            chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Vous avez ban ", v:GetName().. " pour StreamStalk" )

RunConsoleCommand("ulx","banid",v:SteamID(),"10080","StreamStalk")
                       RunConsoleCommand("fadmin","slay",v:Name(),"explode")

hook.Remove("HUDPaint","tanaka:ContextMenu::HUDPaint")


                        end

                    else

                    draw.RoundedBox(6, pos.x-180, pos.y + 240,150,30, Color(255, 0, 0, 255))

                    end


                        draw.DrawText("StreamStalk" , "tanaka:ModeAdmin::Police1", pos.x-135 , pos.y + 240, Color(255,255,255), TEXT_ALIGN_CENTER)

end
end


end
end


end)
    end)

hook.Add("OnContextMenuClose","tanaka:ContextMenu::Close",function()
BaseBox:Close()
hook.Remove("HUDPaint","tanaka:ContextMenu::HUDPaint")
end)





surface.CreateFont("LuwinPolice", {
    size = 40,
    weight = 1,
    font = "Arial Black"
})

surface.CreateFont("luwin_3d_texte_pnc", {
    size = 32,
    weight = 1,
    antialias = true,
    shadow = true,
    outline = true,
    font = "Arial Black"
})



surface.CreateFont("luwin_3d_texte_pnc2", {
    size = 60,
    weight = 1,
    antialias = true,
    shadow = true,
    outline = true,
    font = "Arial Black"
})
surface.CreateFont("SlawerContextFontButtons",{ size = ScrH() * 0.017 , font = "Roboto"})
surface.CreateFont("SlawerContextFontTitles",{ size = ScrH() * 0.028 , font = "Roboto"})
surface.CreateFont("SlawerContextFontServInfo",{ size = ScrH() * 0.02 , font = "Roboto"})
surface.CreateFont("SlawerContextFontSItemTitle",{ size = ScrH() * 0.015 , font = "Roboto"})
surface.CreateFont("SlawerContextFontSItemPrice",{ size = ScrH() * 0.011 , font = "Roboto"})
