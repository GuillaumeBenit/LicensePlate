# License Plate
### *Addon for [Garry's Mod](http://store.steampowered.com/app/4000/).* Add license plates on your vehicles !


Download last release : [LicensePlate-master.zip](https://github.com/GuillaumeBenit/LicensePlate/archive/master.zip)

*Download snapshot release : [LicensePlate-dev.zip](https://github.com/GuillaumeBenit/LicensePlate/archive/dev.zip)*

Follow this addon on Steam Workshop (for server) : [License plate](http://steamcommunity.com/sharedfiles/filedetails/?id=781258746)

Follow this addon on Steam Workshop (for client) : [License plate - content](http://steamcommunity.com/workshop/filedetails/?id=781258788)


## Installation
* Download and unzip the last version (avaible [here](https://github.com/GuillaumeBenit/LicensePlate/archive/master.zip)).
* Put the file in **garrysmod/addons/**.
* Restart your server.
* Connect on your server as admin and open your context menu. Open "License plate" and follow the instructions for choose your language (the default language is french).
* Restart your server and have fun !


## How to add liscence plates to vehicles ?
If you want add liscence plates to your vehicles, you need input and edit this code in your vehicle file :
```
LicensePlate=LicensePlate or {}

LicensePlate.ModelPlates={
    ["models/buggy.mdl"]={
        {
            pos=Vector(0,64.5,15),
            ang=Angle(0,180,90),
            scale=0.05
        },
        {
            pos=Vector(0,-108,20),
            ang=Angle(0,0,90),
            scale=0.05
        }
    }
}
```
Else, you need fork and edit this code and pull request your changes. For add new vehicles you need edit [LicensePlate/lua/autorun/licenseplate_veh.lua](https://github.com/GuillaumeBenit/LicensePlate/blob/master/lua/autorun/licenseplate_veh.lua).
