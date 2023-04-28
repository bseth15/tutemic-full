# Godot Project Template

## Description:
A template repository that contains some common settings and configurations for starting a new Godot Project. This repository is also a good choice for using VS Code as an external code editor for Godot.

## 1. Getting Started:
1. Create New Repository
	* Navigate to the godot-template repository
	* Click Use this template on the top-right of the page
	* Enter settings for your **new** repository
	* Click **Create repository from template** on the bottom of the page
2. Clone Repository
	* Click the `Code` button on the Github repo you created above
	* Copy the URL of the remote repository for either HTTPS or SSH, which ever you have configured
	* Open a terminal and navigate to the directory you want to clone the repo to
	* Enter: `git clone <repo_url>`
		* The absolute path of the directory created during this step will be known as the **%REPOROOT%** in the remainder of this document, replace **%REPOROOT%** with the actual absolute path when following the instructions

## 2. Open Project in Godot For First Time:
1. Open the **Godot Engine - Project Manager**
2. Click **Scan**
3. Navigate to the **%REPOROOT%** and click **Select Curent Folder**
4. Godot will locate the Godot Project source directory and add it to the **Local Projects** tab
5. Select the project from the **Local Projects** tab and click **Rename** to give the Godot Project a meaningful name for your proejct, type in the new name and click **Rename**
6. Select the project from the **Local Projects** tab and click **Edit**, or double-click the project from the **Local Projects** tab, to open the project in the Godot editor

## Stop
If you do not plan to use VS Code as an external editor you can stop here. Otherwise continue with the next steps.

## 3. Setting VS Code as External Editor:
1. Open the project in Godot, if it is not already open
2. From the menu bar at the top of the window select **Editor > Editor Settings**
3. Select **Text Editor > External**
	* Make sure **Use External Editor** is checked
	* Set **Exec Path** to the full path of the VS Code executable/binary
	* Set **Exec Flags** to **{project} --goto {file}:{line}:{col}**
		* Copy the above string literal (in bold) as is into the Exec Flags editor setting, Godot will fill in the placeholders
4. Double click on a .gd script, or use any Godot Editor UI option that would launch the internal editor, to open the script in VS Code
	* Important:
	    * You should always launch VS Code this way when working with Godot
	    * You should always use the godot editor when making file system changes
5. \[Optional] Select **Text Editor > Files**
	* Check **Auto Reload Scripts On External Change**
	* Uncheck **Restore Scripts On Load**

## 4. Load Godot Profile for VS Code:
1. Click the gear icon in the bottom left of the VS Code window
2. Select Profiles > Import Profile...
3. Select Import from profile file
4. Select the included Godot Profile found at %REPOROOT%/.vscode/
5. Select Open
6. Make sure all of the options are selected and click Import Profile
7. You can verify the profile is activated by the "GO" tag displayed on top of the VS Code gear icon at the bottom left of the window

## 5. Configuring VS Code Debugger for Godot
At the time of updating this template repo the debugger configuration in the most recently released version of the godot tools plugin is not working with Godot 4. I think this just means we will only be able to launch the debugger from the Godot editor, instead of from the Godot editor *and* VS Code. So not really a big loss.

## 6. Additional Help with VS Code for Godot
The Godot Profile will include the official Godot extension for VS Code. Please visit this extension page and read through all of the setup and troubleshooting information there before submitting a request for help. Except for the debugger the extensions settings should be configured within the workspace configuration file included with this template repo. This configuration should work with a default installation of Godot.
