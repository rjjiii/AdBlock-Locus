# AdBlock Locus
K-Meleon is a privacy-focused web browser that comes with a built-in adblocker (BAB). However, it does not come with a graphical interface for that adblocker. AdBlock Locus (ABL) provides a graphical interface to toggle the BAB, create custom rules, manage subscriptions, and create exceptions. K-Meleon 76.X.G comes with the BAB already installed. If you are using K-Meleon 75.1 or the version 76 release candidate, you will need to download the BAB for older versions of K-Meleon first.

## Installation
To install AdBlock Locus with the K-Meleon Extension Manager:

1. Download the K-Meleon Extensions Manager for your operating system.
2. Extract the extension manager packages directly into your K-Meleon folder.
3. Go to Tools - Extension Manager.
4. Click the Run Installer button. A file dialog will open. Browse to an extension saved in the .7z format.
5. K-Meleon will automatically restart after an extension is installed.

Or to install AdBlock Locus manually:

1. Download the compressed file.
2. Copy and Paste the root K-Meleon folder to create a backup.
3. Extract the extension directly into your root K-Meleon folder.
4. Restart and test K-Meleon.

## Blocking rules
Blocking software uses a list of rules to prevent certain types of content from loading. The blocking rules for the BAB are stored in the "adblock.txt" file in your profile folder. If this file does not exist or is blank, the BAB will not have any effect. The BAB supports most ABP rules. You can refer to the ABP reference for rules syntax. There are 2 significant exceptions. The BAB does not support any element hiding rules, and due to a bug does not currently support the "$document" exception.

## Subscriptions
The BAB like other blocking software creates its list of blocking rules from subscriptions. Despite their name, these subscriptions are free. A subscription is a massive list of blocking rules that is regularly maintained. The BAB's list of subscriptions is stored in the "kmeleon.plugins.adblock.subscriptions" preference accessible from the "about:config" page. Multiple subcription addresses are separated by pipe "|" characters. Anytime "adblock.txt" is deleted, it will be refreshed from the subscriptions. AdBlock Locus provides 2 easy ways to update your subscriptions. First, you can right-click the icon and select "Refresh Rules" from the menu. This will clear out the old rules and prompt you to restart your browser. Second, you can right-click the icon and set up automatic refresh periods from the "Automatic" section.

Below is a summary of the subscription options in AdBlock Locus:
- **Easylist:** Easylist is the standard international base list used by AdBlock Plus, uBlock, and other popular blocking software.
- **Core:** This list uses an optimized version of Easylist from AdGuard with all element-hiding rules (which are not supported) removed. It is 7 times lighter than Easylist and will allow K-Meleon to boot more quickly.
- **Fallback:** This is an experimental subscription to force elements using unsupported javascript features to fall back to a non-javascript version.
- **Language Packs:** The language packs are optimized language subscriptions. They are meant to be used with a base subscription like Easylist or AdBlock Locus Core.
- **Annoyances:** This adds many blocking rules to prevent annoying scripts like pop-ups, pop-unders, and notifications.
- **RU Counters:** This Russian subscription blocks counting and tracking scripts, especially on RUnet. 
- **Custom:** You can use the "Custom" option to choose any subscription you wish. Be sure to copy the exact URL of the public .txt file. You can enter multiple subscriptions here if you use pipe "|" characters to separate them.
- **Local:** All of your custom rules are stored in the "ablock_user.txt" file. You can manually add rules to this file. Any time you "nuke" content or "allow" content those will be automatically added to this list.

## FAQ

#### Q: How do I allow sites with AdBlock Locus?
A: You can allow all sites, by temporarily toggling the adblocker off. You can allow the current site by right-clicking the AdBlock Locus icon and choosing "Allow Domain" in the menu. You can also create custom exceptions in the URL bar and apply them by selecting "Allow Address" in the menu. Any exceptions you create will take effect the next time you start K-Meleon.

#### Q: Can I use K-Meleon's built-in ad blocker without an extension?
A: Yes. If you set up the BAB with AdBlock Locus and then uninstall the extension, you will still have the built-in blocking abilities. You can manually toggle the adblocker from the "Kplugins" preferences panel. You will still have the AdBlock Locus subscriptions set up and can manually refresh them by deleting "adblock.txt" in your profile and restarting K-Meleon. 

#### Q:Can I just use K-Meleon's Privacy Bar to toggle ad-blocking?
A: Yes, after you install AdBlock Locus. To add a toggle to your privacy bar for ad-blocking, select "Edit - Configuration - Toolbars" in the menu, press "Ctrl+F" in the text editor that pops up, type "Privacy Bar" to scroll down, copy and paste the code below, and then re-start K-Meleon:

	!Ads{
	macros(_Adblockplugin_toggle)|&Privacy
	Block ads with K-Meleon's built-in ad blocker.
	check.png[0,32,32]
	}
	
#### Q: Will AdBlock Locus add support for features like element hiding?
A: AdBlock Locus only operates the built-in adblocker. If the BAB doesn't support a feature like element hiding or the $document exception, the feature will not be available.

## License
AdBlock Locus is a package containing several parts that can work together or be used separately. The individual components of the package each have different licensing situations:
- The AdBlock Locus subscriptions (**Core and Fallback**) are both available under the General Public License (GPL) 3.0. They can be used with AdBlock Locus, K-Meleon's Built-in Ad Blocker, or any ad-blocking software that supports ABP rule syntax. See the GPL 3.0 section below for details.
- The **AdBlock Locus icons** are released to the Public Domain and can be used under any license including the GPL. See the Unlicense Disclaimer for details.
- Both macros are made freely available, without warranty, on an as-is basis. They include code from JamesD with an implicit license grant only, and therefore cannot be re-licensed under an OSI-approved license.
- The contents of the "**tools**" folder are made available under the GPL. See the GPL 3.0 section below for details.

### Unlicense Disclaimer

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or distribute this software, either in source code form or as a compiled binary, for any purpose, commercial or non-commercial, and by any means.

In jurisdictions that recognize copyright laws, the author or authors of this software dedicate any and all copyright interest in the software to the public domain. We make this dedication for the benefit of the public at large and to the detriment of our heirs and successors. We intend this dedication to be an overt act of relinquishment in perpetuity of all present and future rights to this software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to http://unlicense.org/

### GPL 3.0
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

For the complete text of the GPL 3.0 click below:
https://www.gnu.org/licenses/gpl-3.0.html
