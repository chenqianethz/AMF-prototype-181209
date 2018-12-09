#############################################################################
# Generated by PAGE version 4.19
#  in conjunction with Tcl version 8.6
#  Dec 07, 2018 10:06:58 AM CET  platform: Windows NT
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
    wm geometry $top 736x557+356+147
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
    wm title $top "Delivery services"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    label $top.lab43 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#91d1d8} -disabledforeground {#a3a3a3} \
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
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#91d1d8} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Input vehicle ID} 
    vTcl:DefineAlias "$top.lab46" "Label1_2" vTcl:WidgetProc "Toplevel1" 1
    labelframe $top.lab51 \
        -font TkDefaultFont -foreground black \
        -text {Forecasted transportation lead time} -background {#d9d9d9} \
        -height 115 -highlightbackground {#d9d9d9} -highlightcolor black \
        -width 330 
    vTcl:DefineAlias "$top.lab51" "Labelframe1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.lab51
    button $site_3_0.but59 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text Button 
    vTcl:DefineAlias "$site_3_0.but59" "Button1_6" vTcl:WidgetProc "Toplevel1" 1
    text $site_3_0.tex60 \
        -background white -font font9 -foreground black -height 34 \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -insertbackground black -selectbackground {#c4c4c4} \
        -selectforeground black -width 264 -wrap word 
    .top42.lab51.tex60 configure -font font9
    .top42.lab51.tex60 insert end text
    vTcl:DefineAlias "$site_3_0.tex60" "Text1" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.but59 \
        -in $site_3_0 -x 243 -y 274 -width 171 -height 21 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tex60 \
        -in $site_3_0 -x 10 -y 70 -width 264 -relwidth 0 -height 34 \
        -relheight 0 -anchor nw -bordermode ignore 
    button $top.but54 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text Update 
    vTcl:DefineAlias "$top.but54" "Button1" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab64 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#91d1d8} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Input transportation lead time} 
    vTcl:DefineAlias "$top.lab64" "Label1_3" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent43 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent43" "Entry1_7" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent45 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent45" "Entry1_8" vTcl:WidgetProc "Toplevel1" 1
    button $top.but46 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text Query 
    vTcl:DefineAlias "$top.but46" "Button1_9" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab47 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#91d1d8} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Input loading location} 
    vTcl:DefineAlias "$top.lab47" "Label1_4" vTcl:WidgetProc "Toplevel1" 1
    button $top.but48 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text {View orders} 
    vTcl:DefineAlias "$top.but48" "Button1_5" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent49 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent49" "Entry1_6" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab50 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#91d1d8} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Actual transportation lead time} 
    vTcl:DefineAlias "$top.lab50" "Label1_4" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent51 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent51" "Entry1_5" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab52 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#91d1d8} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Latest date: release for transportation} 
    vTcl:DefineAlias "$top.lab52" "Label1_5" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent53 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent53" "Entry1_6" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab54 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#91d1d8} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Input date: release for transportation} 
    vTcl:DefineAlias "$top.lab54" "Label1_6" vTcl:WidgetProc "Toplevel1" 1
    button $top.but55 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text Query 
    vTcl:DefineAlias "$top.but55" "Button1_7" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent56 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent56" "Entry1_7" vTcl:WidgetProc "Toplevel1" 1
    button $top.but58 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text Update 
    vTcl:DefineAlias "$top.but58" "Button1_9" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator $top.tSe59
    vTcl:DefineAlias "$top.tSe59" "TSeparator1" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.lab43 \
        -in $top -x 10 -y 10 -width 314 -relwidth 0 -height 31 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.ent44 \
        -in $top -x 340 -y 10 -anchor nw -bordermode ignore 
    place $top.lab46 \
        -in $top -x 10 -y 50 -width 314 -relwidth 0 -height 31 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab51 \
        -in $top -x 10 -y 170 -width 330 -relwidth 0 -height 115 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but54 \
        -in $top -x 340 -y 330 -width 81 -relwidth 0 -height 31 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab64 \
        -in $top -x 10 -y 130 -width 314 -relwidth 0 -height 31 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.ent43 \
        -in $top -x 340 -y 50 -width 204 -relwidth 0 -height 24 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.ent45 \
        -in $top -x 340 -y 90 -width 204 -height 24 -anchor nw \
        -bordermode ignore 
    place $top.but46 \
        -in $top -x 20 -y 200 -width 81 -relwidth 0 -height 31 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab47 \
        -in $top -x 10 -y 90 -width 314 -height 31 -anchor nw \
        -bordermode ignore 
    place $top.but48 \
        -in $top -x 560 -y 10 -width 151 -relwidth 0 -height 31 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.ent49 \
        -in $top -x 340 -y 130 -width 204 -height 24 -anchor nw \
        -bordermode ignore 
    place $top.lab50 \
        -in $top -x 10 -y 300 -width 314 -height 31 -anchor nw \
        -bordermode ignore 
    place $top.ent51 \
        -in $top -x 340 -y 300 -width 204 -height 24 -anchor nw \
        -bordermode ignore 
    place $top.lab52 \
        -in $top -x 10 -y 390 -width 314 -height 31 -anchor nw \
        -bordermode ignore 
    place $top.ent53 \
        -in $top -x 340 -y 430 -width 204 -height 24 -anchor nw \
        -bordermode ignore 
    place $top.lab54 \
        -in $top -x 10 -y 480 -width 314 -height 31 -anchor nw \
        -bordermode ignore 
    place $top.but55 \
        -in $top -x 340 -y 390 -width 81 -height 31 -anchor nw \
        -bordermode ignore 
    place $top.ent56 \
        -in $top -x 340 -y 480 -width 204 -height 24 -anchor nw \
        -bordermode ignore 
    place $top.but58 \
        -in $top -x 340 -y 510 -width 81 -height 31 -anchor nw \
        -bordermode ignore 
    place $top.tSe59 \
        -in $top -x 10 -y 370 -width 710 -anchor nw -bordermode inside 

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

