Makielskis Bot User Interface for Mac OS X
-------------------------------------



# Deploy

  - Package the packages.

  - Compile the Botscript Server C API library (c_bss): libc_bss.dylib

  - Go to the Release folder (right click on .app product and "Show in Finder" to get the dir), e.g. something like:

     /Users/felix/Library/Developer/Xcode/DerivedData/makielskisbot-mac-fxeqorkgswjfvgftrbhvgkhctasw/Build/Products/Release

  - Get the current libc_bss.dylib search path:

     otool -L makielskisbot-mac.app/Contents/MacOS/makielskisbot-mac

     -> You'll find something like `/Users/felix/Code/bot/botscript-server/build/libc_bss.dylib`

  - Change the .dylib search path:

    install_name_tool -change old_dylib_path new_dylib_path executable

    -> Command looks like:

    install_name_tool -change /Users/felix/Code/bot/botscript-server/build/libc_bss.dylib @executable_path/../Resources/libc_bss.dylib makielskisbot-mac.app/Contents/MacOS/makielskisbot-mac

  - Zip the resulting .app package to something like makielskisbot-mac-0.2.3.zip:

    zip -r -9 makielskisbot-mac-0.2.3.zip makielskisbot-mac.app
