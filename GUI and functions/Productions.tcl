#############################################################################
# Generated by PAGE version 4.19
#  in conjunction with Tcl version 8.6
#  Dec 07, 2018 10:09:39 AM CET  platform: Windows NT
set vTcl(timestamp) ""


if {!$vTcl(borrow)} {

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
set vTcl(active_menu_fg) #000000
}

#############################################################################
#################################
#LIBRARY PROCEDURES
#


if {[info exists vTcl(sourcing)]} {

proc vTcl:project:info {} {
    set base .top42
    global vTcl
    set base $vTcl(btop)
    if {$base == ""} {
        set base .top42
    }
    namespace eval ::widgets::$base {
        set dflt,origin 0
        set runvisible 1
    }
    namespace eval ::widgets_bindings {
        set tagslist _TopLevel
    }
    namespace eval ::vTcl::modules::main {
        set procs {
        }
        set compounds {
        }
        set projectType single
    }
}
}

#################################
# GENERATED GUI PROCEDURES
#

proc vTclWindow.top42 {base} {
    if {$base == ""} {
        set base .top42
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background {#d9d9d9} -highlightbackground {#d9d9d9} \
        -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 883x910+273+222
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 4644 1243
    wm minsize $top 148 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "Material production"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    label $top.lab43 \
        -activebackground {#f9f9f9} -activeforeground {#000000} \
        -background {#b1d8cf} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Input order ID} 
    vTcl:DefineAlias "$top.lab43" "Label1" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent44 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent44" "Entry1" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab46 \
        -activebackground {#f9f9f9} -activeforeground {#000000} \
        -background {#b1d8cf} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Input manufacturing lead time} 
    vTcl:DefineAlias "$top.lab46" "Label1_1" vTcl:WidgetProc "Toplevel1" 1
    labelframe $top.lab50 \
        -font TkDefaultFont -foreground black \
        -text {Track the production runs} -background {#d9d9d9} -height 465 \
        -highlightbackground {#d9d9d9} -highlightcolor black -width 860 
    vTcl:DefineAlias "$top.lab50" "Labelframe1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.lab50
    vTcl::widgets::ttk::scrolledlistbox::CreateCmd $site_3_0.scr55 \
        -background {#d9d9d9} -height 75 -highlightbackground {#d9d9d9} \
        -highlightcolor black -width 125 
    vTcl:DefineAlias "$site_3_0.scr55" "Scrolledlistbox1" vTcl:WidgetProc "Toplevel1" 1

    $site_3_0.scr55.01 configure -background white \
        -disabledforeground #a3a3a3 \
        -font font10 \
        -foreground black \
        -height 3 \
        -highlightbackground #d9d9d9 \
        -highlightcolor #d9d9d9 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10
    label $site_3_0.lab56 \
        -activebackground {#f9f9f9} -activeforeground {#000000} \
        -background {#b1d8cf} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {track by order ID} 
    vTcl:DefineAlias "$site_3_0.lab56" "Label1_3" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent57 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent57" "Entry3" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab58 \
        -activebackground {#f9f9f9} -activeforeground {#000000} \
        -background {#b1d8cf} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {track by task ID} 
    vTcl:DefineAlias "$site_3_0.lab58" "Label1_4" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent59 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent59" "Entry3_5" vTcl:WidgetProc "Toplevel1" 1
    vTcl::widgets::ttk::scrolledlistbox::CreateCmd $site_3_0.scr60 \
        -background {#d9d9d9} -height 75 -highlightbackground {#d9d9d9} \
        -highlightcolor black -width 125 
    vTcl:DefineAlias "$site_3_0.scr60" "Scrolledlistbox1_7" vTcl:WidgetProc "Toplevel1" 1

    $site_3_0.scr60.01 configure -background white \
        -disabledforeground #a3a3a3 \
        -font font10 \
        -foreground black \
        -height 3 \
        -highlightbackground #d9d9d9 \
        -highlightcolor #d9d9d9 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10
    place $site_3_0.scr55 \
        -in $site_3_0 -x 10 -y 60 -width 841 -relwidth 0 -height 175 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab56 \
        -in $site_3_0 -x 10 -y 30 -width 154 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.ent57 \
        -in $site_3_0 -x 170 -y 30 -anchor nw -bordermode ignore 
    place $site_3_0.lab58 \
        -in $site_3_0 -x 10 -y 250 -width 154 -height 21 -anchor nw \
        -bordermode ignore 
    place $site_3_0.ent59 \
        -in $site_3_0 -x 170 -y 250 -width 204 -relwidth 0 -height 20 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.scr60 \
        -in $site_3_0 -x 10 -y 280 -width 841 -relwidth 0 -height 175 \
        -relheight 0 -anchor nw -bordermode ignore 
    entry $top.ent52 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent52" "Entry1_3" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab53 \
        -activebackground {#f9f9f9} -activeforeground {#000000} \
        -background {#b1d8cf} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Actual manufacturing lead time} 
    vTcl:DefineAlias "$top.lab53" "Label1_2" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent54 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent54" "Entry1_4" vTcl:WidgetProc "Toplevel1" 1
    labelframe $top.lab67 \
        -font TkDefaultFont -foreground black \
        -text {Forecasted Manufacturing lead time} -background {#d9d9d9} \
        -height 115 -highlightbackground {#d9d9d9} -highlightcolor black \
        -width 280 
    vTcl:DefineAlias "$top.lab67" "Labelframe2" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.lab67
    text $site_3_0.tex68 \
        -background white -font font9 -foreground black -height 34 \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -insertbackground black -selectbackground {#c4c4c4} \
        -selectforeground black -width 264 -wrap word 
    .top42.lab67.tex68 configure -font font9
    .top42.lab67.tex68 insert end text
    vTcl:DefineAlias "$site_3_0.tex68" "Text2" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but44 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text Query 
    vTcl:DefineAlias "$site_3_0.but44" "Button3" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.tex68 \
        -in $site_3_0 -x 10 -y 60 -width 264 -relwidth 0 -height 34 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but44 \
        -in $site_3_0 -x 10 -y 30 -width 76 -relwidth 0 -height 23 \
        -relheight 0 -anchor nw -bordermode ignore 
    button $top.but43 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text {view pending design changes} 
    vTcl:DefineAlias "$top.but43" "Button2" vTcl:WidgetProc "Toplevel1" 1
    button $top.but47 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text {view order information} 
    vTcl:DefineAlias "$top.but47" "Button2_4" vTcl:WidgetProc "Toplevel1" 1
    button $top.but49 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text Update 
    vTcl:DefineAlias "$top.but49" "Button3_5" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab51 \
        -activebackground {#f9f9f9} -activeforeground {#000000} \
        -background {#b1d8cf} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Latest date: release-for-manufacturing} 
    vTcl:DefineAlias "$top.lab51" "Label1_3" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent53 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent53" "Entry1_6" vTcl:WidgetProc "Toplevel1" 1
    button $top.but54 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text Query 
    vTcl:DefineAlias "$top.but54" "Button3_6" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent56 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent56" "Entry1_5" vTcl:WidgetProc "Toplevel1" 1
    button $top.but57 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text Update 
    vTcl:DefineAlias "$top.but57" "Button3_7" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator $top.tSe44
    vTcl:DefineAlias "$top.tSe44" "TSeparator1" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab45 \
        -activebackground {#f9f9f9} -activeforeground {#000000} \
        -background {#b1d8cf} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Input date: release-for-manufacturing} 
    vTcl:DefineAlias "$top.lab45" "Label1_4" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.lab43 \
        -in $top -x 10 -y 10 -width 264 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.ent44 \
        -in $top -x 280 -y 210 -width 274 -relwidth 0 -height 20 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab46 \
        -in $top -x 10 -y 110 -width 264 -height 21 -anchor nw \
        -bordermode ignore 
    place $top.lab50 \
        -in $top -x 10 -y 430 -width 860 -relwidth 0 -height 465 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.ent52 \
        -in $top -x 280 -y 10 -width 274 -height 20 -anchor nw \
        -bordermode ignore 
    place $top.lab53 \
        -in $top -x 10 -y 210 -width 264 -height 21 -anchor nw \
        -bordermode ignore 
    place $top.ent54 \
        -in $top -x 280 -y 110 -width 274 -height 20 -anchor nw \
        -bordermode ignore 
    place $top.lab67 \
        -in $top -x 580 -y 100 -width 280 -relwidth 0 -height 115 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $top.but43 \
        -in $top -x 580 -y 10 -width 286 -relwidth 0 -height 23 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but47 \
        -in $top -x 580 -y 40 -width 286 -height 23 -anchor nw \
        -bordermode ignore 
    place $top.but49 \
        -in $top -x 280 -y 240 -width 76 -height 23 -anchor nw \
        -bordermode ignore 
    place $top.lab51 \
        -in $top -x 10 -y 290 -width 264 -height 21 -anchor nw \
        -bordermode ignore 
    place $top.ent53 \
        -in $top -x 280 -y 320 -width 274 -height 20 -anchor nw \
        -bordermode ignore 
    place $top.but54 \
        -in $top -x 280 -y 290 -width 76 -height 23 -anchor nw \
        -bordermode ignore 
    place $top.ent56 \
        -in $top -x 280 -y 370 -width 274 -height 20 -anchor nw \
        -bordermode ignore 
    place $top.but57 \
        -in $top -x 280 -y 400 -width 76 -height 23 -anchor nw \
        -bordermode ignore 
    place $top.tSe44 \
        -in $top -x 10 -y 280 -width 850 -anchor nw -bordermode inside 
    place $top.lab45 \
        -in $top -x 10 -y 370 -width 264 -height 21 -anchor nw \
        -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

#############################################################################
## Binding tag:  _TopLevel

bind "_TopLevel" <<Create>> {
    if {![info exists _topcount]} {set _topcount 0}; incr _topcount
}
bind "_TopLevel" <<DeleteWindow>> {
    if {[set ::%W::_modal]} {
                vTcl:Toplevel:WidgetProc %W endmodal
            } else {
                destroy %W; if {$_topcount == 0} {exit}
            }
}
bind "_TopLevel" <Destroy> {
    if {[winfo toplevel %W] == "%W"} {incr _topcount -1}
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
Window show .top42 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}
