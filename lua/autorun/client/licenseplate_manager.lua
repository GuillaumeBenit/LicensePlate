list.Set(
	"DesktopWindows",
	"License plate",
	{
		title="License plate",
		icon="licenseplate/logo.png",
		width=200,
		height=225,
		onewindow=true,
		init=function(icon,window)

			window.Paint=function(self,w,h)
				draw.RoundedBox(0,0,0,w,h,Color(0,0,0,150))
			end

			local Text=vgui.Create("DLabel",window)
			Text:SetPos(25,25)
			Text:SetSize(150,25)
			Text:SetTextColor(Color(255,255,255))
			Text:SetText("Choose your country :")

			local MenuButton=vgui.Create("DButton",window)
			MenuButton:SetText(LicensePlate.lang)
			MenuButton:SetPos(25,50)
			MenuButton:SetSize(150,150)
			MenuButton:SetTextColor(Color(255,255,255))
			MenuButton.Paint=function(self,w,h)
				draw.RoundedBox(0,0,0,w,h,Color(34,63,255,255))
			end

			MenuButton.DoClick=function ()
				local MenuButtonOptions=DermaMenu()
				MenuButtonOptions:AddOption("Belgique (be)",function() RunConsoleCommand("LicensePlate_country","be") Frame_restart() end)
				MenuButtonOptions:AddOption("Deutschland (de)",function() RunConsoleCommand("LicensePlate_country","de") Frame_restart() end)
				MenuButtonOptions:AddOption("Finland (fi)",function() RunConsoleCommand("LicensePlate_country","fi") Frame_restart() end)
				MenuButtonOptions:AddOption("France (fr)",function() RunConsoleCommand("LicensePlate_country","fr") Frame_restart() end)
				MenuButtonOptions:AddOption("Italia (it)",function() RunConsoleCommand("LicensePlate_country","it") Frame_restart() end)
				MenuButtonOptions:AddOption("Россия (ru)",function() RunConsoleCommand("LicensePlate_country","ru") Frame_restart() end)
				MenuButtonOptions:AddOption("Danmark (da)",function() RunConsoleCommand("LicensePlate_country","da") Frame_restart() end)
				MenuButtonOptions:AddOption("Norge (nb)",function() RunConsoleCommand("LicensePlate_country","nb") Frame_restart() end)
				MenuButtonOptions:AddOption("More soon...",function() end)
				MenuButtonOptions:Open()
			end

			function Frame_restart()

				window:Close()

				local Frame=vgui.Create("DFrame")
				Frame:SetSize(300,100) 
				Frame:SetTitle("License plate")
				Frame:Center()
				Frame:ShowCloseButton(false) 
				Frame:MakePopup()
				Frame.Paint=function(self,w,h)
					draw.RoundedBox(0,0,0,w,h,Color(0,125,0,150))
				end

				local Text=vgui.Create("DLabel",Frame)
				Text:SetPos(25,25)
				Text:SetSize(250,25)
				Text:SetTextColor(Color(255,255,255))
				Text:SetText("You need restart server for apply modifications.")

				local Button=vgui.Create("DButton",Frame)
				Button:SetText("Ok")
				Button:SetTextColor(Color(255,255,255))
				Button:SetPos(100,55)
				Button:SetSize(100,30)
				Button.Paint=function(self,w,h)
					draw.RoundedBox(0,0,0,w,h,Color(34,63,255,255))
				end
				Button.DoClick=function()
					Frame:Close()
				end
			end
			
		end
	}
)