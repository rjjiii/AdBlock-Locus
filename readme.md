# AdBlock Locus
K-Meleon is a privacy-focused web browser that comes with a built-in ad blocker. However, it does not come with a graphical interface for that ad blocker. AdBlock Locus provides a graphical interface to toggle the ad blocker, create custom rules, manage subscriptions, and create exceptions. If you are using K-Meleon 75.1 or the version 76 release candidate, you will need to download adblock.dll for older versions of K-Meleon first.

## Installation
To install AdBlock Locus:

https://github.com/rjjiii/AdBlock-Locus/releases/download/v2.0/Adblockplugin.kmm

1. Download the AdBlock Locus K-Meleon macro module (.kmm) above.
2. Move **Adblockplugin.kmm** to your **K-Meleon/macros** folder or your **/profiles/your.profile/macros/** folder. The entire extension is stored in this single .kmm file.
3. **Restart** K-Meleon.

## Blocking rules
Blocking software uses a list of rules to prevent certain types of content from loading. The blocking rules for the BAB are stored in the "adblock.txt" file in your profile folder. If this file does not exist or is blank, the BAB will not have any effect. The BAB supports most ABP rules. You can refer to the ABP reference for rules syntax. There are 2 significant exceptions. The BAB does not support any element hiding rules, and due to a bug does not currently support the "$document" exception.

## Subscriptions
The BAB like other blocking software creates its list of blocking rules from subscriptions. Despite their name, these subscriptions are free. A subscription is a massive list of blocking rules that is regularly maintained. The BAB's list of subscriptions is stored in the "kmeleon.plugins.adblock.subscriptions" preference accessible from the "about:config" page. Multiple subscription addresses are separated by pipe "|" characters. Anytime "adblock.txt" is deleted, it will be refreshed from the subscriptions. AdBlock Locus provides 2 easy ways to update your subscriptions. First, you can right-click the icon and select "Refresh Rules" from the menu. This will clear out the old rules and prompt you to restart your browser. Second, you can right-click the icon and set up automatic refresh periods from the "Automatic" section.

Below is a summary of the subscription options in AdBlock Locus:

- **Easylist:** Easylist is the standard international base list used by AdBlock Plus, uBlock, and other popular blocking software.
- **Core:** This list uses an optimized version of Easylist from AdGuard with all element-hiding rules (which are not supported) removed. It is 7 times lighter than Easylist and will allow K-Meleon to boot more quickly.
- **Language Packs:** The language packs are optimized language subscriptions. They are meant to be used with a base subscription like Easylist or AdBlock Locus Core.
- **Annoyances:** This adds many blocking rules to prevent annoying scripts like pop-ups, pop-unders, and notifications.
- **RU Counters:** This Russian subscription blocks counting and tracking scripts, especially on RUnet. 
- **Custom:** You can use the "Custom" option to choose any subscription you wish. Be sure to copy the exact URL of the public .txt file. You can enter multiple subscriptions here if you use pipe "|" characters to separate them.
- **Local:** All of your custom rules are stored in the "ablock_user.txt" file. You can manually add rules to this file. Any time you "nuke" content or "allow" content those will be automatically added to this list.

## Icon Packs
AdBlock Locus comes with icons built into the module (.kmm) file. If you would like to modify the icons, create custom icons, or download additional icons, AdBlock Locus supports icon packs. The macro will check your **K-Meleon/skins/shared/** folder for an image file named "Basic_Adblock.png" and will use these image assets if they are present. To restore the default icons, rename or delete the .png file. You can download the icons used by previous versions of the BAB macro from the link below: 

https://sourceforge.net/projects/adblock-locus/files/icon_pack.zip/download

## FAQ

### Q: How do I allow sites with AdBlock Locus?

A: You can allow all sites, by temporarily toggling the ad blocker off. You can allow the current site by right-clicking the AdBlock Locus icon and choosing "Allow Domain" in the menu. You can also create custom exceptions in the URL bar and apply them by selecting "Allow Address" in the menu. Any exceptions you create will take effect the next time you start K-Meleon.

### Q: Can I use K-Meleon's built-in ad blocker without an extension?

A: Yes. If you set up the BAB with AdBlock Locus and then uninstall the extension, you will still have the built-in blocking abilities. You can manually toggle the ad blocker from the "Kplugins" preferences panel. You will still have the AdBlock Locus subscriptions set up and can manually refresh them by deleting "adblock.txt" in your profile and restarting K-Meleon. 

### Q: Can I just use K-Meleon's Privacy Bar to toggle ad-blocking?

A: Yes, after you install AdBlock Locus. If you're using K-Meleon's Default theme or another new-style theme:
1. Select **Edit > Configuration > Toolbars** in the menu to open your configuration file. **Save an exact copy** of this file to your profile folder or your skin's folder. Don't save modification's here.
2. Press Ctrl+F in the text editor that pops up and type **Privacy Bar** to scroll down.
3. Copy and paste the code below, save toolbars.cfg, and restart K-Meleon:

	!Ads{
	macros(_Adblockplugin_toggle)|&Privacy
	Block ads with K-Meleon's built-in ad blocker.
	check.png[0,32,32]
	}
	
### Q: Will AdBlock Locus add support for features like element hiding?

A: AdBlock Locus only operates the built-in ad blocker. If the BAB doesn't support a feature like element hiding or the $document exception, the feature will not be available.

## License

AdBlock Locus is a package containing several parts that can work together or be used separately. The individual components of the package each have different licensing situations:

- The AdBlock Locus subscriptions (**Core and Fallback**) are both available under the General Public License (GPL) 3.0. They can be used with K-Meleon's Built-in Ad Blocker, AdBlock Classic, or any ad-blocking software that supports ABP rule syntax. The **AdBlock Locus icons** are based on assets from Lim Chee Aun's Phoenity and also available under the GPL. See the GPL 3.0 section below for details.
- The macro is made freely available, without warranty, on an as-is basis. It includes code from JamesD with an implicit license grant only, and therefore cannot be re-licensed under an OSI-approved license.

### GPL 3.0

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

For the complete text of the GPL 3.0 click below:
https://www.gnu.org/licenses/gpl-3.0.html
