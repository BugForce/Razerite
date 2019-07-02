if [ -n "$PIXEL" ]; then
  ui_print " "
  ui_print "   Razerite doesn't support Google Pixel devices on stock Rom!"
  ui_print "   DO NOT ATTEMPT TO INSTALL ON STOCK ROM, YOU'LL HAVE A BOOTLOOP"
  ui_print "   If flashed on a Custom Rom you won't have problems"
  ui_print "   *******************************************"
  ui_print "   Are you using a Custom Rom and do you want to install it?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Ignoring warnings..."
  else
    ui_print " "
    ui_print "   Exiting..."
    abort
  fi
fi

if [ -n "$SAMSUNG" ]; then
  ui_print " "
  ui_print "   Razerite doesn't support Samsung devices on stock Rom!"
  ui_print "   DO NOT ATTEMPT TO INSTALL ON STOCK ROM, YOU'LL HAVE A BOOTLOOP"
  ui_print "   If flashed on a Custom Rom you won't have problems"
  ui_print "   *******************************************"
  ui_print "   Are you using a Custom Rom and do you want to install it?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Ignoring warnings..."
  else
    ui_print " "
    ui_print "   Exiting..."
    abort
  fi
fi



ui_print " "
ui_print " - Boot Animation Option -"
ui_print " *******************************************"
ui_print "   Do you want to enable Razer Phone 2 boot animation?"
ui_print "   (boot animation may not work for some devices)"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling boot animation..."
else
  ui_print " "
  ui_print "   Disabling boot animation..."
  rm -rf "$TMPDIR/system/media/bootanimation.zip"
fi

ui_print " "
ui_print " - Font Option -"
ui_print " *******************************************"
ui_print "   Do you want to use default fonts in Razer Phone 2?"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling font..."
else
  ui_print " "
  ui_print "   Disabling font..."
  rm -rf "$TMPDIR"/system/fonts
fi

ui_print " "
ui_print " - Media Option -"
ui_print " *******************************************"
ui_print "   Do you want to install Razer custom media sounds?"
ui_print "   They include ringtones, alarms, notifications,"
ui_print "   And UI sounds ported from RazerPhone2"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling custom media sounds..."
  propsoss.prop
else
  ui_print " "
  ui_print "   Disabling custom media sounds..."
  rm -rf "$TMPDIR"/system/media/audio
fi


if [ "$API" -ge 27 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want to install Razer Wallpapers and Nova Launcher?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Enabling Razer Wallpapers and Nova Launcher..."
  else
    ui_print " "
    ui_print "  Disabling Razer Wallpapers and Nova Launcher..."
    rm -rf "$TMPDIR"/system/app/RazerWallpapers
    rm -rf "$TMPDIR"/system/app/NovaLauncherOverlay
    rm -rf "$TMPDIR"/system/priv-app/NovaLauncher
  fi

else
    rm -rf "$TMPDIR"/system/app/RazerWallpapers
    rm -rf "$TMPDIR"/system/app/NovaLauncherOverlay
    rm -rf "$TMPDIR"/system/priv-app/NovaLauncher
fi



if [ "$API" -ge 27 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want to install Razer Cortex?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Enabling Razer Cortex..."
  else
    ui_print " "
    ui_print "  Disabling Razer Cortex..."
    rm -rf "$TMPDIR"/system/priv-app/RazerCortex
  fi
else
    rm -rf "$TMPDIR"/system/priv-app/RazerCortex
fi

if [ "$API" -ge 27 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want to install Razer Game Booster (Beta)?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Enabling Razer Game Booster..."
  else
    ui_print " "
    ui_print "  Disabling Razer Game Booster..."
    rm -rf "$TMPDIR"/system/priv-app/RazerGameBooster
  fi
else
    rm -rf "$TMPDIR"/system/priv-app/RazerGameBooster
fi

ui_print "

░░░░▓
░░░▓▓
░░█▓▓█
░██▓▓██
░░██▓▓██
░░░██▓▓██
░░░░██▓▓██
░░░░░██▓▓██
░░░░██▓▓██
░░░██▓▓██
░░██▓▓██
░██▓▓██
░░██▓▓██
░░░██▓▓██
░░░░██▓▓██
░░░░░██▓▓██
░░░░██▓▓██
░░░██▓▓██
░░██▓▓██
░██▓▓██
░░██▓▓██
░░░██▓▓██
░░░░██▓▓██
░░░░░██▓▓██
░░░░██▓▓██
░░░██▓▓██
░░██▓▓██
░██▓▓██
░░██▓▓██
░░░██▓▓██
░░░░██▓▓██
░░░░░██▓▓██
░░░░██▓▓██
░░░██▓▓██
░░██▓▓██
░██▓▓██
░░██▓▓██
░░░██▓▓██
░░░░██▓▓██
░░░░░██▓▓██
░░░░██▓▓██
░░░██▓▓██
░░██▓▓██
░██▓▓██
░░██▓▓██
░░░██▓▓██
░░░░██▓▓██
░░░░░██▓▓██
░░░░██▓▓██
░░░██▓▓██
░░██▓▓██
░██▓▓██
░░██▓▓██
░░░██▓▓██
░░░░██▓▓██
░░░░░██▓▓██
░░░░██▓▓██
░░░██▓▓██
░░██▓▓██
░██▓▓██
░░██▓▓██
░░░██▓▓██
░░░░██▓▓██
░░░░░██▓▓██
░░░░██▓▓██
░░░██▓▓██
░░██▓▓██
░░██▓▓██
░░██▓▓██
░░██▓▓██
░  ██▓▓██
░░██▓▓██
░░░██▓▓███
░░░░██▓▓████
░░░░░██▓▓█████
░░░░░░██▓▓██████
░░░░░░███▓▓███████
░░░░░████▓▓████████
░░░░█████▓▓█████████
░░░█████░░░█████●███
░░████░░░░░░░███████
░░███░░░░░░░░░██████
░░██░░░░░░░░░░░████
░░░░░░░░░░░░░░░░███
░░░░░░░░░░░░░░░░

            
              By Gamers.
              For Gamers.™
             



"
 
