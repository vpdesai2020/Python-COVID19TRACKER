#############################################################################
# Generated by PAGE version 5.3
#  in conjunction with Tcl version 8.6
#  Jul 22, 2020 03:41:10 PM IST  platform: Windows NT
set vTcl(timestamp) ""


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(pr,menufgcolor) #000000
set vTcl(pr,menubgcolor) #d9d9d9
set vTcl(pr,menuanalogcolor) #ececec
set vTcl(pr,treehighlight) firebrick
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top43 {base} {
    global vTcl
    if {$base == ""} {
        set base .top43
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background $vTcl(actual_gui_bg) 
    wm focusmodel $top passive
    wm geometry $top 494x401+449+170
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1370 749
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "New Toplevel"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    label $top.lab44 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 16 -weight bold -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -text {COVID 19 TRACKER} 
    vTcl:DefineAlias "$top.lab44" "heading" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab45 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -text COUNTRY 
    vTcl:DefineAlias "$top.lab45" "country" vTcl:WidgetProc "Toplevel1" 1
    ttk::combobox $top.tCo47 \
        -font TkTextFont -textvariable combobox -foreground {} -background {} \
        -takefocus {} 
    vTcl:DefineAlias "$top.tCo47" "TCombobox1" vTcl:WidgetProc "Toplevel1" 1
    button $top.but48 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #87ceeb -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text GO 
    vTcl:DefineAlias "$top.but48" "go" vTcl:WidgetProc "Toplevel1" 1
    button $top.but50 \
        -activebackground #c48989 -activeforeground #c48989 \
        -background #fdc2ba -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -highlightbackground #c48989 \
        -highlightcolor black -pady 0 -text Confirmed 
    vTcl:DefineAlias "$top.but50" "Confirmed" vTcl:WidgetProc "Toplevel1" 1
    button $top.but51 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #c8f1f6 -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Active 
    vTcl:DefineAlias "$top.but51" "Active" vTcl:WidgetProc "Toplevel1" 1
    button $top.but52 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #d4e3a7 -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Recoverd 
    vTcl:DefineAlias "$top.but52" "Recovery" vTcl:WidgetProc "Toplevel1" 1
    button $top.but53 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #d6d4cf -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Death 
    vTcl:DefineAlias "$top.but53" "Death" vTcl:WidgetProc "Toplevel1" 1
    button $top.but54 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #87ceeb -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text REFRESH 
    vTcl:DefineAlias "$top.but54" "refresh" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab55 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -text {STAY HOME! STAY SAFE!} 
    vTcl:DefineAlias "$top.lab55" "stay" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.lab44 \
        -in $top -x 0 -relx 0.271 -y 0 -rely 0.087 -width 0 -relwidth 0.42 \
        -height 0 -relheight 0.048 -anchor nw -bordermode ignore 
    place $top.lab45 \
        -in $top -x 0 -relx 0.167 -y 0 -rely 0.2 -width 0 -relwidth 0.153 \
        -height 0 -relheight 0.048 -anchor nw -bordermode ignore 
    place $top.tCo47 \
        -in $top -x 0 -relx 0.383 -y 0 -rely 0.2 -width 0 -relwidth 0.238 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.but48 \
        -in $top -x 0 -relx 0.713 -y 0 -rely 0.174 -width 88 -relwidth 0 \
        -height 34 -relheight 0 -anchor nw -bordermode ignore 
    place $top.but50 \
        -in $top -x 0 -relx 0.02 -y 0 -rely 0.413 -width 114 -relwidth 0 \
        -height 95 -relheight 0 -anchor nw -bordermode ignore 
    place $top.but51 \
        -in $top -x 0 -relx 0.265 -y 0 -rely 0.413 -width 114 -relwidth 0 \
        -height 95 -relheight 0 -anchor nw -bordermode ignore 
    place $top.but52 \
        -in $top -x 0 -relx 0.509 -y 0 -rely 0.413 -width 114 -relwidth 0 \
        -height 95 -relheight 0 -anchor nw -bordermode ignore 
    place $top.but53 \
        -in $top -x 0 -relx 0.754 -y 0 -rely 0.413 -width 114 -relwidth 0 \
        -height 95 -relheight 0 -anchor nw -bordermode ignore 
    place $top.but54 \
        -in $top -x 0 -relx 0.423 -y 0 -rely 0.739 -width 88 -relwidth 0 \
        -height 34 -relheight 0 -anchor nw -bordermode ignore 
    place $top.lab55 \
        -in $top -x 0 -relx 0.326 -y 0 -rely 0.304 -width 0 -relwidth 0.375 \
        -height 0 -relheight 0.048 -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top43 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

