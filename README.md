# LPP-Vita Build Helper
A tiny bit smarter build command file with configurable settings for the [@Rinnegatamante](https://github.com/Rinnegatamante)'s [Lua Player Plus (lpp-vita)](https://github.com/Rinnegatamante/lpp-vita) builder (lpp-builder).

## Usage

Just replace the build.bat and place the settings.ini file by it's side.

If you look at the settings.ini file, you can see the "title" and "id" values. You can change them as you want and when you build, these values will be used appropriately.

Default "title" value is "{{folder}}" as it can be used as a template which is the folder name where the build.bat file resides. It can be useful if you are working with your projects in their own folders and named them as the title of your application.

Both of the settings can be removed from the settings.ini file. That way it will ask for you that value or values just like before. It can be useful if you want to be asked for specific setting everytime you build. Of course, if you remove both of the settings, there is no meaning to use these files for now :)
