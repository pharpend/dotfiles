module Main where

import Data.Monoid
import qualified Data.Map as M
import System.Exit
import XMonad
import XMonad.Actions.CycleWS
import XMonad.Layout.IndependentScreens
import qualified XMonad.StackSet as W

main :: IO ()
main =
  xmonad defaultConfig { terminal = "terminator"
                       , modMask = mod4Mask
                       , borderWidth = 3
                       , normalBorderColor = "#222222"
                       , focusedBorderColor = "#62d2e2"
                       , workspaces = map show [0 .. 9]
                       , keys = myKeys
                       , mouseBindings = myMouseBindings
                       , layoutHook = myLayout
                       , startupHook = myStartupHook
                       }
  where
    myStartupHook =
      do spawn "compton"
         spawn "deluge"
         spawn "dunst"
         spawn "emacs --daemon"
         spawn "mpd"
         spawn "nitrogen --restore"
         spawn "parcellite"
         spawn "redshift -l 41:112"
         spawn "thunar --daemon"
         spawn $ mconcat [ "setxkbmap us -variant colemak -option"
                         , "terminate:ctrl_alt_bksp"
                         , ",grp:rctrl_toggle"
                         , ",compose:ralt"
                         , ",ctrl:nocaps"
                         ]
    myKeys conf =
      let modm = modMask conf
      in M.fromList $
           mappend [ ((modm, xK_Return), spawn $ XMonad.terminal conf)
                   , ((modm, xK_space), sendMessage NextLayout)
                   , ((modm, xK_k), kill)
                   , ((modm, xK_Tab), windows W.focusDown)
                   , ((modm, xK_n), windows W.focusDown)
                   , ((modm, xK_e), windows W.focusUp)
                   , ((modm, xK_o), windows W.focusMaster)
                   , ((modm .|. shiftMask, xK_o), windows W.swapMaster)
                   , ((modm .|. shiftMask, xK_n), windows W.swapDown)
                   , ((modm .|. shiftMask, xK_e), windows W.swapUp)
                   , ((modm, xK_h), sendMessage Shrink)
                   , ((modm, xK_i), sendMessage Expand)
                   , ((modm, xK_t), withFocused $ windows . W.sink)
                   , ((modm, xK_comma), sendMessage (IncMasterN 1))
                   , ((modm, xK_period), sendMessage (IncMasterN (-1)))
                   , ((modm .|. shiftMask,xK_q), io (exitWith ExitSuccess))
                   , ((modm ,xK_q), spawn "xmonad --recompile; xmonad --restart")
                   , ((modm, xK_u), prevWS)
                   , ((modm, xK_u), nextWS)
                   , ((modm .|. shiftMask, xK_u), shiftToPrev)
                   , ((modm .|. shiftMask, xK_u), shiftToNext)
                   , ((modm,xK_w), spawn "dmenu_run")
                   , ((modm .|. shiftMask, xK_c), spawn "chromium --incognito")
                   , ((modm, xK_c), spawn "firefox")
                   , ((modm, xK_m), spawn "emacs")
                   , ((modm .|. shiftMask, xK_f), spawn "thunar")
                   , ((modm .|. shiftMask, xK_p), spawn "pavucontrol")
                   ]
                   [ ( (m .|. modm, key)
                     , windows (onCurrentScreen f workspace)
                     )
                   | (workspace,key) <- zip (workspaces' conf) [xK_1 .. xK_9]
                   , (f,m) <- [ (W.greedyView, 0)
                              , (W.shift, shiftMask)
                              ]
                   ]
    myMouseBindings conf =
      let modm = modMask conf
      in M.fromList [ ( (modm, button1)
                      , \w -> do focus w
                                 mouseMoveWindow w
                                 windows W.shiftMaster
                      )
                    , ( (modm, button2)
                      , \w -> do focus w
                                 windows W.shiftMaster
                      )
                    , ( (modm, button3)
                      , \w -> do focus w
                                 mouseResizeWindow w
                                 windows W.shiftMaster
                      )
                    ]
    myLayout = tiled ||| Mirror tiled ||| Full
    tiled = Tall nmaster delta ratio
    nmaster = 1
    ratio = 1 / 2
    delta = 3 / 100
module Main where

import Data.Monoid
import qualified Data.Map as M
import System.Exit
import XMonad
import XMonad.Actions.CycleWS
import XMonad.Layout.IndependentScreens
import qualified XMonad.StackSet as W

main :: IO ()
main =
  xmonad defaultConfig { terminal = "terminator"
                       , modMask = mod4Mask
                       , borderWidth = 3
                       , normalBorderColor = "#222222"
                       , focusedBorderColor = "#62d2e2"
                       , workspaces = map show [0 .. 9]
                       , keys = myKeys
                       , mouseBindings = myMouseBindings
                       , layoutHook = myLayout
                       , startupHook = myStartupHook
                       }
  where
    myStartupHook =
      do spawn "compton"
         spawn "deluge"
         spawn "dunst"
         spawn "emacs --daemon"
         spawn "mpd"
         spawn "nitrogen --restore"
         spawn "parcellite"
         spawn "redshift -l 41:112"
         spawn "thunar --daemon"
         spawn $ mconcat [ "setxkbmap us -variant colemak -option"
                         , "terminate:ctrl_alt_bksp"
                         , ",grp:rctrl_toggle"
                         , ",compose:ralt"
                         , ",ctrl:nocaps"
                         ]
    myKeys conf =
      let modm = modMask conf
      in M.fromList $
           mappend [ ((modm, xK_Return), spawn $ XMonad.terminal conf)
                   , ((modm, xK_space), sendMessage NextLayout)
                   , ((modm, xK_k), kill)
                   , ((modm, xK_Tab), windows W.focusDown)
                   , ((modm, xK_n), windows W.focusDown)
                   , ((modm, xK_e), windows W.focusUp)
                   , ((modm, xK_o), windows W.focusMaster)
                   , ((modm .|. shiftMask, xK_o), windows W.swapMaster)
                   , ((modm .|. shiftMask, xK_n), windows W.swapDown)
                   , ((modm .|. shiftMask, xK_e), windows W.swapUp)
                   , ((modm, xK_h), sendMessage Shrink)
                   , ((modm, xK_i), sendMessage Expand)
                   , ((modm, xK_t), withFocused $ windows . W.sink)
                   , ((modm, xK_comma), sendMessage (IncMasterN 1))
                   , ((modm, xK_period), sendMessage (IncMasterN (-1)))
                   , ((modm .|. shiftMask,xK_q), io (exitWith ExitSuccess))
                   , ((modm ,xK_q), spawn "xmonad --recompile; xmonad --restart")
                   , ((modm, xK_u), prevWS)
                   , ((modm, xK_u), nextWS)
                   , ((modm .|. shiftMask, xK_u), shiftToPrev)
                   , ((modm .|. shiftMask, xK_u), shiftToNext)
                   , ((modm,xK_w), spawn "dmenu_run")
                   , ((modm .|. shiftMask, xK_c), spawn "chromium --incognito")
                   , ((modm, xK_c), spawn "firefox")
                   , ((modm, xK_m), spawn "emacs")
                   , ((modm .|. shiftMask, xK_f), spawn "thunar")
                   , ((modm .|. shiftMask, xK_p), spawn "pavucontrol")
                   ]
                   [ ( (m .|. modm, key)
                     , windows (onCurrentScreen f workspace)
                     )
                   | (workspace,key) <- zip (workspaces' conf) [xK_1 .. xK_9]
                   , (f,m) <- [ (W.greedyView, 0)
                              , (W.shift, shiftMask)
                              ]
                   ]
    myMouseBindings conf =
      let modm = modMask conf
      in M.fromList [ ( (modm, button1)
                      , \w -> do focus w
                                 mouseMoveWindow w
                                 windows W.shiftMaster
                      )
                    , ( (modm, button2)
                      , \w -> do focus w
                                 windows W.shiftMaster
                      )
                    , ( (modm, button3)
                      , \w -> do focus w
                                 mouseResizeWindow w
                                 windows W.shiftMaster
                      )
                    ]
    myLayout = tiled ||| Mirror tiled ||| Full
    tiled = Tall nmaster delta ratio
    nmaster = 1
    ratio = 1 / 2
    delta = 3 / 100
