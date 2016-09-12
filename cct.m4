include(/usr/local/lib/m4/circuit_macros/pgf.m4)
include(/usr/local/lib/m4/circuit_macros/libcct.m4)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 01
% 
.PS
    cct_init
    elen = elen_
    A1: opamp
    move to A1.center then left_ elen*.1
    "A1"
    line left_ elen*0.2 from A1.In2
    resistor(left_ elen*.8, E); llabel(,R_2,)
    ground(,,E)
    line left_ elen*0.2 from A1.In1
    {
        resistor(left_ elen*.8, E); rlabel(,R_1,)
        "$V_\mathrm{i}$" rjust
        gap(down_ to (Here.x,A1.In2.y),1)
    }
    dot
    line up_ elen*0.4; corner
    resistor(right_ to (A1.Out.x,Here.y), E); llabel(,R_3,)
    corner; line down_ to A1.Out
    dot
    line right_ elen*0.2
    "$V_\mathrm{o}$" ljust
    move down_ elen*0.3
    ground(,,E)
    gap(up_ elen*0.3,1)
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 02
% 
.PS
    cct_init
    elen = elen_
    A1: opamp
    move to A1.center then left_ elen*.1
    "A1"
    line left_ elen*0.2 from A1.In2
    resistor(left_ elen*.8, E); llabel(,R_2,)
    line left_ elen*0.2 from A1.In1
    {
        resistor(left_ elen*.8, E); rlabel(,R_1,)
        ground(,,E,U)
        gap(down_ to (Here.x,A1.In2.y),1)
        "$V_\mathrm{i}$" rjust
    }
    dot
    line up_ elen*0.4; corner
    resistor(right_ to (A1.Out.x,Here.y), E); llabel(,R_3,)
    corner; line down_ to A1.Out
    dot
    line right_ elen*0.2
    "$V_\mathrm{o}$" ljust
    move down_ elen*0.3
    ground(,,E)
    gap(up_ elen*0.3,1)
.PE
