# coding: utf-8 
# using unicode font
#
# Remi Labbe
# http://www.github.com/Remi-labbe
#  
#
# A customized config.py for Qtile window manager (http://qtile.org)
# Modified by Remi Labbe (http://www.github.com/Remi-labbe)
#
# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2014 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2014 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

#### IMPORTS ####

import os
import iwlib
import socket
import subprocess
from libqtile.config import Key, Screen, Group, Drag, Click
from libqtile.command import lazy
from libqtile import layout, bar, widget, hook

#from typing import List  # noqa: F401

#### KEYS ####

mod = "mod4"

def init_keys():
    return [
            Key(
                [mod], "Return",
                lazy.spawn(myTerm)          #Open chosen terminal
                ),
        #SYSTEM
            Key(
                [mod, "shift"], "c",
                lazy.window.kill()          #Kill focused window
                ),
            Key(
                [mod, "shift"], "r",
                lazy.restart()              #Restart Qtile
                ),
            Key(
                [mod, "shift"], "q",
                lazy.shutdown()             #Exit Qtile
                ),
        #LAYOUTS CONTROLS
            Key(
                [mod], "Tab",
                lazy.next_layout()          #Cycle through layouts
                ),
            Key(
                [mod], "k",
                lazy.layout.down()          #Cycle window next
                ),
            Key(
                [mod], "j",
                lazy.layout.up()            #Cycle window prev
                ),
            Key(
                [mod, "control"], "k",
                lazy.layout.shuffle_down()  #Move window right
                ),
            Key(
                [mod, "control"], "j",
                lazy.layout.shuffle_up()    #Move window left
                ),
            Key(
                [mod], "space",
                lazy.layout.next()          #Cycle through window/pane
                ),
            Key(
                [mod, "shift"], "h",
                lazy.layout.shrink()        #Decrease window size
                ),
            Key(
                [mod, "shift"], "l",
                lazy.layout.grow()          #Increase window sizer
                ),
            #Key(
            #   [mod], "r",
            #   lazy.spawncmd()
            #   ),
            Key([mod], "a",
                lazy.to_screen(0)
                ),
            Key([mod], "s",
                lazy.to_screen(1)
                ),
        # DMENU CONTROLS
            Key(
                ["mod1", "shift"], "Return",
                lazy.spawn("dmenu_run -p 'dmenu:'")
                )]

#### GROUPS ####

def init_group_names():
    return [
        "WWW",
        "DEV",
        "SYS",
        "DOC",
        "MED",
        "RDM"]

def init_groups():
    return [Group(name) for name in group_names]

#### COLORS ####

def init_colors():
    return [["#282a36", "#282a36"], # panel background
            ["#434758", "#434758"], # background for current screen tab
            ["#ffffff", "#ffffff"], # font color for group names
            ["#505050", "#505050"], # font color for inactive group
            ["#000000", "#000000"], # background for other screen tabs
            ["#A77AC4", "#A77AC4"], # dark green gradiant for other screen tabs
            ["#ff8247", "#ff8247"], # background color for network widget
            ["#7197E7", "#7197E7"], # background color for pacman widget
            ["#9AEDFE", "#9AEDFE"], # background color for cmus widget
            ["#000000", "#000000"], # background color for clock widget
            ["#434758", "#434758"]] # background color for systray widget

#### LAYOUTS ####

def init_border_args():
    return {"border_width": 2}

def init_layout_theme():
    return {"borderwidth": 2,
            "margin": 5,
            "border_focus":"AD69AF",
            "border_normal":"1D2330"
            }

def init_layouts():
    return [
    #layout.Stack(num_stacks=2, **layout_theme),
    layout.MonadTall(**layout_theme), 
    layout.Max(**layout_theme),
    layout.Floating(**layout_theme)]

#### WIDGETS ####

def init_widgets_defaults():
    return dict(
        font="Ubuntu",
        fontsize=12,
        padding=2,
        background=colors[2])

#extension_defaults = widget_defaults.copy()

def init_widgets_list():            
    prompt = "{0}@{1}: ".format(os.environ["USER"], socket.gethostname())
    widget_list = [
            widget.Sep(
                linewidth=0,
                padding=6,
                foreground=colors[2],
                background=colors[0]
                ),
            widget.GroupBox(
                font="Ubuntu Bold",
                fontsize = 9,
                margin_y = 0,
                margin_x = 0,
                padding_y = 5,
                padding_x = 5,
                borderwidth = 1,
                active = colors[2],
                inactive = colors[3],
                rounded = False,
                highlight_method = "block",
                this_current_screen_border = colors[5],
                this_screen_border = colors [1],
                other_current_screen_border = colors[0],
                other_screen_border = colors[0],
                foreground = colors[2],
                background = colors[0]
                ),
            widget.Prompt(
                prompt=prompt,
                font="Ubuntu Mono",
                padding=10,
                foreground=colors[5],
                background=colors[1],
                ignore_dups_history=True
                ),
            widget.Sep(
                linewidth=0,
                padding=10,
                foregorund=colors[2],
                background=colors[0]
                ),
            widget.WindowName(
                font="Ubuntu",
                fontsize=12,
                padding=5,
                foreground=colors[5],
                background=colors[0]
                ),
            widget.Systray(
                background=colors[0],
                padding=5
                ),
            widget.Sep(
                linewidth=0,
                padding=6,
                foreground=colors[2],
                background=colors[0]),
            widget.Wlan(
                interface='wlp3s0',
                format="[{essid}] {percent:2.0%}",
                disconnected_message="DC",
                foreground=colors[2],
                background=colors[0]
                ),
            widget.TextBox(
                text=" ↯",
                foreground=colors[2],
                background=colors[0],
                padding = 0,
                fontsize=14
                ),
            widget.Net(
                interface='wlp3s0',
                foreground=colors[2],
                background=colors[0],
                padding=5
                ),
            widget.Sep(
                linewidth=0,
                padding=6,
                foreground=colors[2],
                background=colors[0]
                ),
            widget.TextBox(
                text='🔊',
                foreground=colors[2],
                background=colors[0]
                ),
            widget.Volume(
                foreground=colors[2],
                background=colors[0]
                ),
            widget.Sep(
                linewidth=0,
                padding=6,
                foreground=colors[2],
                background=colors[0]
                ),
            widget.Battery(
                format='{char} {percent:2.0%}',
                charge_char="🞁",
                discharge_char="🞃",
                empty_char="∅",
                foreground=colors[2],
                background=colors[0]
                ),
            widget.Sep(
                linewidth=0,
                padding=6,
                foreground=colors[2],
                background=colors[0]
                ),
            widget.Clock(
                format='%a %d %b - %I:%M %p',
                foreground=colors[2],
                background=colors[0]
                ),
            widget.Sep(
                linewidth=0,
                padding=6,
                foreground=colors[2],
                background=colors[0]
                )]
    return widget_list

#### SCREENS ####

def init_screens():
    return [
        Screen(top=bar.Bar(widgets=init_widgets_list(), opacity=0.8, size=20)),
        Screen(top=bar.Bar(widgets=init_widgets_list(), opacity=0.8, size=20))]

#### FLOATING ####

def init_mouse():
    return [
        Drag([mod], "Button1", lazy.window.set_position_floating(),
             start=lazy.window.get_position()),
        Drag([mod], "Button3", lazy.window.set_size_floating(),
             start=lazy.window.get_size()),
        Click([mod], "Button2", lazy.window.bring_to_front())]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    {'wmclass': 'confirm'},
    {'wmclass': 'dialog'},
    {'wmclass': 'download'},
    {'wmclass': 'error'},
    {'wmclass': 'file_progress'},
    {'wmclass': 'notification'},
    {'wmclass': 'splash'},
    {'wmclass': 'toolbar'},
    {'wmclass': 'confirmreset'},  # gitk
    {'wmclass': 'makebranch'},  # gitk
    {'wmclass': 'maketag'},  # gitk
    {'wname': 'branchdialog'},  # gitk
    {'wname': 'pinentry'},  # GPG key password entry
    {'wmclass': 'ssh-askpass'},  # ssh-askpass
    ])
auto_fullscreen = True
focus_on_window_activation = "smart"

#### MAIN INIT ####

if __name__ in ["config", "__main__"]:
    myTerm = "alacritty"
    myConfig = "/home/remi/.config/qtile/config.py"

    colors = init_colors()
    keys = init_keys()
    mouse = init_mouse()
    group_names = init_group_names()
    groups = init_groups()
    layout_theme = init_layout_theme()
    border_args = init_border_args
    layouts = init_layouts()
    screens = init_screens()
    widget_defaults = init_widgets_defaults()
    widgets_list = init_widgets_list()
    
#### LAYOUT KEYBINDS ####

for i, name in enumerate(group_names, 1):
    keys.extend([
        # mod1 + number of group = switch to group
        Key([mod], str(i), lazy.group[name].toscreen()),

        # mod1 + shift + number of group = switch to & move focused window to group
        Key([mod, "shift"], str(i), lazy.window.togroup(name)),
    ])

#### STARTUP ####

@hook.subscribe.startup
def start_once():
    subprocess.Popen(['picom'])
    subprocess.Popen(['nitrogen', '--restore'])
    #home = os.path.expanduser('~')
    #subprocess.call([home + '.config/qtile/autostart.sh'])

#### WM NAME FOR JAVA APPS ####

#wmname = "LG3D" #default
wmname = "qtile"
