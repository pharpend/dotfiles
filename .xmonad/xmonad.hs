import qualified Data.Map        as M
import           System.Exit
import           XMonad
import           XMonad.Hooks.ManageDocks
import           XMonad.Layout.Accordion
import           XMonad.Layout.Column
import           XMonad.Layout.Minimize
import           XMonad.Layout.Reflect
import           XMonad.Layout.Tabbed
import           XMonad.Layout.WindowNavigation
import           XMonad.Prompt
import           XMonad.Prompt.RunOrRaise
import qualified XMonad.StackSet as W

main = xmonad myConf

myConf = defaultConfig { terminal           = "sakura" 
                       , modMask            = mod4Mask
                       , borderWidth        = 2
                       , focusFollowsMouse  = False
                       , keys               = myKeys
                       , startupHook        = myStartupHook
                       , layoutHook         = minimize $ windowNavigation myLayout
                       , manageHook         = manageDocks
                       , handleEventHook    = docksEventHook
                       , focusedBorderColor = myFocusedBorderColor
                       , normalBorderColor  = myNormalBorderColor
                       }

myFocusedBorderColor = "#94defd"
myNormalBorderColor  = "#000000"
myFont = "xft:Meslo LG S DZ:weight=bold:size=9"

myXPConfig = defaultXPConfig { font     = myFont
                             , bgColor  = "#212121"
                             , position = Top
                             }

myLayout = avoidStruts $ tiled ||| reflectHoriz tiled ||| myTabbed ||| Accordion 
  where
    -- default tiling algorithm partitions the screen into two panes
    tiled   = Tall nmaster delta ratio
    -- The default number of windows in the master pane
    nmaster = 1
    -- Default proportion of screen occupied by master pane
    ratio   = 0.5
    -- Percent of screen to increment by when resizing panes
    delta   = 5/100
    myTabbed = tabbedBottom shrinkText defaultTheme { fontName            = myFont
                                                    , activeColor         = "#212121"
                                                    , inactiveColor       = "#161616"
                                                    , activeBorderColor   = myFocusedBorderColor
                                                    , inactiveBorderColor = myNormalBorderColor
                                                    }

myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
  -- The most basic, opening a terminal
  [ (( modm               , xK_Return ), spawn $ XMonad.terminal conf )
  
  -- Movement between windows
  , (( modm               , xK_Tab   ), windows W.focusDown )
  , (( modm .|. shiftMask , xK_Tab   ), windows W.focusUp   )
  , (( modm               , xK_h     ), sendMessage $ Go L  )
  , (( modm               , xK_n     ), sendMessage $ Go D  )
  , (( modm               , xK_e     ), sendMessage $ Go U  )
  , (( modm               , xK_i     ), sendMessage $ Go R  )
  , (( modm               , xK_Left  ), sendMessage $ Go L  )
  , (( modm               , xK_Down  ), sendMessage $ Go D  )
  , (( modm               , xK_Up    ), sendMessage $ Go U  )
  , (( modm               , xK_Right ), sendMessage $ Go R  )

  -- Moving the windows
  , (( modm .|. shiftMask , xK_h     ), sendMessage $ Swap L  )
  , (( modm .|. shiftMask , xK_n     ), sendMessage $ Swap D  )
  , (( modm .|. shiftMask , xK_e     ), sendMessage $ Swap U  )
  , (( modm .|. shiftMask , xK_i     ), sendMessage $ Swap R  )
  , (( modm .|. shiftMask , xK_Left  ), sendMessage $ Swap L  )
  , (( modm .|. shiftMask , xK_Down  ), sendMessage $ Swap D  )
  , (( modm .|. shiftMask , xK_Up    ), sendMessage $ Swap U  )
  , (( modm .|. shiftMask , xK_Right ), sendMessage $ Swap R  )

  -- Do other things to windows
  , (( modm .|. shiftMask , xK_Return    ), windows W.swapMaster                )
  , (( modm               , xK_period    ), sendMessage $ IncMasterN 1          )
  , (( modm               , xK_comma     ), sendMessage $ IncMasterN (-1)       )
  , (( modm .|. shiftMask , xK_space     ), sendMessage NextLayout              )
  , (( modm               , xK_k         ), kill                                )
  , (( modm               , xK_o         ), withFocused minimizeWindow          )
  , (( modm               , xK_semicolon ), sendMessage RestoreNextMinimizedWin )
  , (( modm               , xK_equal     ), sendMessage Expand                  )
  , (( modm               , xK_minus     ), sendMessage Shrink                  )
  , (( modm               , xK_z         ), withFocused $ windows . W.sink      )
  
  -- |Utilities
  , (( 0                  , xK_Print     ), spawn "scrot -e 'mv $f ~/Pictures/screenshots'" )

  -- Non-application keybindings
  , (( modm               , xK_F7  ), spawn "cmus-remote --prev"                         )
  , (( modm               , xK_F8  ), spawn "cmus-remote --pause"                        )
  , (( modm               , xK_F9  ), spawn "cmus-remote --next"                         )
  , (( modm               , xK_F10 ), spawn "amixer set Master toggle"                   )
  , (( modm               , xK_F11 ), spawn "amixer set Master 8%-"                      )
  , (( modm               , xK_F12 ), spawn "amixer set Master 8%+"                      )
  , (( modm .|. shiftMask , xK_q   ), spawn "/home/pete/.cabal/bin/xmonad --recompile;\
                                            \/home/pete/.cabal/bin/xmonad --restart"     )
  , (( modm               , xK_space ), runOrRaisePrompt myXPConfig                      )
  , (( modm               , xK_w     ), runOrRaisePrompt myXPConfig                      )

  -- Application keybindings
  , (( modm               , xK_m     ), spawn "emacs"                )
  , (( modm               , xK_grave ), spawn "dwb"                  )
  , (( modm .|. shiftMask , xK_c     ), spawn "chromium --incognito" )
  , (( modm               , xK_c     ), spawn "chromium"             )
  , (( modm               , xK_f     ), spawn "pcmanfm"              )
  ] ++

  -- mod-N       - go to workspace N
  -- mod-shift-N - move client to workspace N
  [ ((m .|. modm, k), windows $ f i)
    | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
    , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]
  ] ++

  -- mod-{u,y}       - go to screen 1 or 2
  -- mod-shift-{u,y} - move client to screen 1 or 2
  [ ((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
    | (key, sc) <- zip [xK_u, xK_y] [0..]
    , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]
  ]

myStartupHook = killOld >> nonPanelThings >> panelThings
  where
    killOld = spawn "/home/pete/bin/killinit.rb xmobar nm-applet cbatticon kalu"
    panelThings = do    
      spawn "/home/pete/.cabal/bin/xmobar"
      spawn "stalonetray"
      spawn "nm-applet"
      spawn "dropboxd"
      spawn "parcellite"
      spawn "kalu"
      spawn "vidalia"                                                              
      spawn "deluge"                                                               
    nonPanelThings = do
      spawn "xrandr --output VGA-1 --rotate normal"
      spawn "xrandr --output DVI-D-2 --rotate normal --right-of VGA-1"                           
      spawn "compton"                                                                            
      spawn "emacs --daemon"                                                                     
      spawn "nitrogen --restore"                                                                 
      spawn "xsetroot -cursor_name left_ptr"                                                     
      spawn "xautolock -time 30 -locker \"i3lock -c \"#222222\"\""                                              
      spawn "setxkbmap us,ar -variant colemak, -option \                                         
            \terminate:ctrl_alt_bksp,grp:rctrl_toggle,compose:ralt,ctrl:nocaps"                  
