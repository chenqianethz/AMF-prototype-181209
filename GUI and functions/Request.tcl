#############################################################################
# Generated by PAGE version 4.19
#  in conjunction with Tcl version 8.6
#  Dec 06, 2018 12:20:17 PM CET  platform: Windows NT
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
    menu .pop48 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font {{Segoe UI} 9} -foreground black \
        -tearoff 1 
    vTcl:DefineAlias ".pop48" "Popupmenu1" vTcl:WidgetProc "" 1
    menu .pop49 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font {{Segoe UI} 9} -foreground black \
        -tearoff 1 
    vTcl:DefineAlias ".pop49" "Popupmenu2" vTcl:WidgetProc "" 1

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
    wm geometry $top 1183x1131+499+30
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
    wm title $top "Change request"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    labelframe $top.lab44 \
        -font TkDefaultFont -foreground black \
        -text {Change request from field measurement} -background {#d9d9d9} \
        -height 505 -highlightbackground {#d9d9d9} -highlightcolor black \
        -width 560 
    vTcl:DefineAlias "$top.lab44" "Labelframe1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.lab44
    label $site_3_0.lab47 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d8a78a} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Field_Request ID} 
    vTcl:DefineAlias "$site_3_0.lab47" "Label1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab50 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d8a78a} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Request date} 
    vTcl:DefineAlias "$site_3_0.lab50" "Label1_5" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent51 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent51" "Entry1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab53 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d8a78a} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text Description 
    vTcl:DefineAlias "$site_3_0.lab53" "Label1_6" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent54 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent54" "Entry1_7" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab43 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d8a78a} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Request Dept&Staff} 
    vTcl:DefineAlias "$site_3_0.lab43" "Label1_4" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent44 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent44" "Entry1_5" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent45 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent45" "Entry1_6" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab46 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d8a78a} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -text Category 
    vTcl:DefineAlias "$site_3_0.lab46" "Label1_7" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but47 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text {Send request to PM} 
    vTcl:DefineAlias "$site_3_0.but47" "Button1" vTcl:WidgetProc "Toplevel1" 1
    radiobutton $site_3_0.rad50 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -justify left \
        -text {Major Changes} -variable {} 
    vTcl:DefineAlias "$site_3_0.rad50" "Radiobutton1" vTcl:WidgetProc "Toplevel1" 1
    radiobutton $site_3_0.rad51 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -justify left \
        -text {Minor changes} -variable {} 
    vTcl:DefineAlias "$site_3_0.rad51" "Radiobutton1_8" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab44 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d8a78a} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {input element_IDs of affected building components} 
    vTcl:DefineAlias "$site_3_0.lab44" "Label1_8" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent46 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent46" "Entry4" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.lab47 \
        -in $site_3_0 -x 10 -y 30 -width 154 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab50 \
        -in $site_3_0 -x 10 -y 60 -width 154 -height 21 -anchor nw \
        -bordermode ignore 
    place $site_3_0.ent51 \
        -in $site_3_0 -x 190 -y 30 -anchor nw -bordermode ignore 
    place $site_3_0.lab53 \
        -in $site_3_0 -x 10 -y 120 -width 154 -height 21 -anchor nw \
        -bordermode ignore 
    place $site_3_0.ent54 \
        -in $site_3_0 -x 190 -y 120 -width 354 -relwidth 0 -height 220 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab43 \
        -in $site_3_0 -x 10 -y 90 -width 154 -height 21 -anchor nw \
        -bordermode ignore 
    place $site_3_0.ent44 \
        -in $site_3_0 -x 190 -y 60 -width 204 -height 24 -anchor nw \
        -bordermode ignore 
    place $site_3_0.ent45 \
        -in $site_3_0 -x 190 -y 90 -width 354 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab46 \
        -in $site_3_0 -x 10 -y 360 -width 154 -relwidth 0 -height 31 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but47 \
        -in $site_3_0 -x 10 -y 460 -width 156 -relwidth 0 -height 33 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.rad50 \
        -in $site_3_0 -x 170 -y 360 -width 158 -relwidth 0 -height 31 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.rad51 \
        -in $site_3_0 -x 320 -y 360 -width 148 -relwidth 0 -height 31 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab44 \
        -in $site_3_0 -x 10 -y 400 -width 534 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.ent46 \
        -in $site_3_0 -x 10 -y 430 -width 534 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    labelframe $top.lab46 \
        -font TkDefaultFont -foreground black \
        -text {Change request on shop drawings} -background {#d9d9d9} \
        -height 605 -highlightbackground {#d9d9d9} -highlightcolor black \
        -width 560 
    vTcl:DefineAlias "$top.lab46" "Labelframe1_2" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.lab46
    label $site_3_0.lab55 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d8a78a} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Production_Request ID} 
    vTcl:DefineAlias "$site_3_0.lab55" "Label1_1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab57 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d8a78a} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Request date} 
    vTcl:DefineAlias "$site_3_0.lab57" "Label1_2" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab58 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d8a78a} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text Description 
    vTcl:DefineAlias "$site_3_0.lab58" "Label1_3" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent59 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent59" "Entry1_8" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent61 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent61" "Entry1_3" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but52 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text {Send request to PM} 
    vTcl:DefineAlias "$site_3_0.but52" "Button1_9" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab56 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d8a78a} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {Request Dept&Staff} 
    vTcl:DefineAlias "$site_3_0.lab56" "Label1_4" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent62 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent62" "Entry1_4" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent63 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent63" "Entry1_2" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab64 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d8a78a} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -text Category 
    vTcl:DefineAlias "$site_3_0.lab64" "Label1_5" vTcl:WidgetProc "Toplevel1" 1
    radiobutton $site_3_0.rad65 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -justify left \
        -text {Major Changes} -variable {} 
    vTcl:DefineAlias "$site_3_0.rad65" "Radiobutton2" vTcl:WidgetProc "Toplevel1" 1
    radiobutton $site_3_0.rad66 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -justify left \
        -text {Minor Changes} -variable {} 
    vTcl:DefineAlias "$site_3_0.rad66" "Radiobutton2_7" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab47 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d8a78a} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {input element_IDs of affected building components} 
    vTcl:DefineAlias "$site_3_0.lab47" "Label1_4" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent48 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent48" "Entry5" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.lab55 \
        -in $site_3_0 -x 10 -y 30 -width 154 -height 21 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab57 \
        -in $site_3_0 -x 10 -y 60 -width 154 -height 21 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab58 \
        -in $site_3_0 -x 10 -y 120 -width 154 -height 21 -anchor nw \
        -bordermode ignore 
    place $site_3_0.ent59 \
        -in $site_3_0 -x 190 -y 30 -width 204 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.ent61 \
        -in $site_3_0 -x 190 -y 120 -width 354 -relwidth 0 -height 310 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but52 \
        -in $site_3_0 -x 10 -y 560 -width 156 -height 33 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab56 \
        -in $site_3_0 -x 10 -y 90 -width 154 -height 21 -anchor nw \
        -bordermode ignore 
    place $site_3_0.ent62 \
        -in $site_3_0 -x 190 -y 60 -width 204 -height 24 -anchor nw \
        -bordermode ignore 
    place $site_3_0.ent63 \
        -in $site_3_0 -x 190 -y 90 -width 204 -height 24 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab64 \
        -in $site_3_0 -x 10 -y 460 -width 154 -relwidth 0 -height 31 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.rad65 \
        -in $site_3_0 -x 180 -y 460 -width 138 -relwidth 0 -height 31 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.rad66 \
        -in $site_3_0 -x 330 -y 460 -width 148 -height 31 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab47 \
        -in $site_3_0 -x 10 -y 500 -width 534 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.ent48 \
        -in $site_3_0 -x 10 -y 530 -width 534 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    frame $top.fra43 \
        -borderwidth 2 -relief groove -background {#d9d9d9} -height 495 \
        -highlightbackground {#d9d9d9} -highlightcolor black -width 565 
    vTcl:DefineAlias "$top.fra43" "Frame1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra43
    label $site_3_0.lab45 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#c5d891} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {input request ID} 
    vTcl:DefineAlias "$site_3_0.lab45" "Label2" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab46 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#c5d891} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {freeze final design?} 
    vTcl:DefineAlias "$site_3_0.lab46" "Label2_4" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab47 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#c5d891} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {input updated drawing references} 
    vTcl:DefineAlias "$site_3_0.lab47" "Label2_5" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent48 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent48" "Entry2" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but49 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text Yes 
    vTcl:DefineAlias "$site_3_0.but49" "Button2" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but50 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 -text No 
    vTcl:DefineAlias "$site_3_0.but50" "Button2_6" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent51 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent51" "Entry3" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but53 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text {Update drawings} 
    vTcl:DefineAlias "$site_3_0.but53" "Button3" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.lab45 \
        -in $site_3_0 -x 20 -y 20 -width 162 -relwidth 0 -height 26 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab46 \
        -in $site_3_0 -x 20 -y 150 -width 272 -relwidth 0 -height 26 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab47 \
        -in $site_3_0 -x 20 -y 70 -width 272 -relwidth 0 -height 26 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.ent48 \
        -in $site_3_0 -x 20 -y 110 -width 524 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but49 \
        -in $site_3_0 -x 20 -y 190 -width 156 -relwidth 0 -height 23 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but50 \
        -in $site_3_0 -x 20 -y 220 -width 156 -height 23 -anchor nw \
        -bordermode ignore 
    place $site_3_0.ent51 \
        -in $site_3_0 -x 200 -y 20 -width 184 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but53 \
        -in $site_3_0 -x 20 -y 450 -width 156 -relwidth 0 -height 33 \
        -relheight 0 -anchor nw -bordermode ignore 
    frame $top.fra54 \
        -borderwidth 2 -relief groove -background {#d9d9d9} -height 595 \
        -highlightbackground {#d9d9d9} -highlightcolor black -width 565 
    vTcl:DefineAlias "$top.fra54" "Frame1_9" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra54
    label $site_3_0.lab45 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#c5d891} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {input request ID} 
    vTcl:DefineAlias "$site_3_0.lab45" "Label2_10" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab46 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#c5d891} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {freeze final design?} 
    vTcl:DefineAlias "$site_3_0.lab46" "Label2_6" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab47 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#c5d891} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black \
        -text {input updated drawing references} 
    vTcl:DefineAlias "$site_3_0.lab47" "Label2_7" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent48 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent48" "Entry2_7" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but49 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text Yes 
    vTcl:DefineAlias "$site_3_0.but49" "Button2_8" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but50 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 -text No 
    vTcl:DefineAlias "$site_3_0.but50" "Button2_7" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent51 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent51" "Entry3_8" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but53 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text {Update drawings} 
    vTcl:DefineAlias "$site_3_0.but53" "Button3_9" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.lab45 \
        -in $site_3_0 -x 20 -y 20 -width 162 -relwidth 0 -height 26 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab46 \
        -in $site_3_0 -x 20 -y 150 -width 272 -relwidth 0 -height 26 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab47 \
        -in $site_3_0 -x 20 -y 70 -width 272 -relwidth 0 -height 26 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.ent48 \
        -in $site_3_0 -x 20 -y 110 -width 524 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but49 \
        -in $site_3_0 -x 20 -y 190 -width 156 -relwidth 0 -height 23 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but50 \
        -in $site_3_0 -x 20 -y 220 -width 156 -height 23 -anchor nw \
        -bordermode ignore 
    place $site_3_0.ent51 \
        -in $site_3_0 -x 200 -y 20 -width 184 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but53 \
        -in $site_3_0 -x 20 -y 550 -width 156 -relwidth 0 -height 33 \
        -relheight 0 -anchor nw -bordermode ignore 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.lab44 \
        -in $top -x 20 -y 10 -width 560 -relwidth 0 -height 505 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab46 \
        -in $top -x 20 -y 520 -width 560 -relwidth 0 -height 605 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.fra43 \
        -in $top -x 600 -y 20 -width 565 -relwidth 0 -height 495 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.fra54 \
        -in $top -x 600 -y 530 -width 565 -relwidth 0 -height 595 \
        -relheight 0 -anchor nw -bordermode ignore 

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

