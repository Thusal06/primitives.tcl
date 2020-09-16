#                    P R I M I T I V E S . T C L
# BRL-CAD
#
# Published in 2020 by Thusal Ranawaka.
# This work is in the public domain.
#
###
in arb4 arb4 0 0.5 0 0.7 0 0 0 0 0.5 0 0 0
sed arb4
tra 0 0 0
accept arb4
in arb5 arb5 0.5 -0.5  -0.5 0.5 0.5 -0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0 0
sed arb5
tra 0 -3 0
accept arb5
in arb6 arb6 0.5 -0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0 -0.5 -0.5 0 0.5
sed arb6
tra 0 -6 0
accept arb6
in arb7 arb7 0.5 -0.5 -0.25 0.5 0.5 -0.25 0.5 0.5 0.75 0.5 -0.5 0.25 -0.5 -0.5 -0.25 -0.5 0.5 -0.25 -0.5 0.5 0.25
sed arb7
tra 0 -9 0
accept arb7
in arb8 arb8 0.5 -0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.5 0.5 -0.5 -0.5 0.5
sed arb8
tra 0 3 0
accept arb8
in rpp rpp 0.5 1.2 0.5 1.2 0.5 1.2
sed rpp
tra 0 6 0
accept rpp
in arbn arbn 8 1 0 1 1 -1 0 0 1 0 1 0 1 0 -1 0 1 0 0 1 1 0 0 -1 1 0.5 0.5 0.5 1 -0.5 -0.5 -0.5 1
sed arbn
tra 0 9 0
accept arbn
in rcc rcc 8 0 0 0 0 1 0.5
in rec rec 8 -3 0 0 0 1 1 0 0 0 0.5 0
in rhc rhc 8 -6 0 0 0 1 0 1 0 0.5 0.2
in rpc rpc 8 -9 0 0 0 2 0 1 0 1
in tec tec 8 3 0 0 0 2 1 0 0 0 0.5 0 1:1
in tgc tgc 8 6 0 0 0 2 0.5 0 0 0 0.25 0 0.25 0.5
in trc trc 8 9 0 0 1.5 0.75 0.50 0.35 1
in ehy ehy 16 0 0 0 0 2 1 0 0 0.5 0.5 
in sph sph 16 -3 0 0.5
in ell ell 16 -6 0 2.3 0 0 0 1.4 0 0 0 0.7 
in ell1 ell1 16 -9 0 1.4 0 0 1
in epa epa 16 3 0 0 0 2.8 1.4 0 0 0.7
in ars ars 4 6 0 0 1.5 0.5 0.5 1.5 0.5 -0.5 1.5 -1.5 -0.5 1.5 -0.5 0.5 1.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0 -0.5 0 -0.5 -0.5 -0.5 0 -0.5 0 0.5 -0.5 0.5 0 -1.5 0 -0.5 -1.5 -0.5 0 -1.5 0 0.5 -1.5 0 0 -1.5
sed ars
tra 16 6 0
accept ars
in eto eto 16 9 0 0 0 0.1 1 0.5 0 0.5 0.25
in tor tor 24 0 0 0 0 0.5 0.5 0.3
in metaball metaball Isopotential 1 2 -1 0 0 1 1 0 0 1
sed metaball
tra 24 -5 0
accept metaball
put sketch sketch V {0 0 0} A {1 0 0} B {0 1 0} VL { {0 0} {1 0} {1 1} {0 1} } SL { {line S 0 E 1} {line S 1 E 2} {line S 2 E 3} {line S 3 E 0} }
put nmg nmg V { { 0 0 0 } { 1 0 0 } { 0 1 0 } { 1 1 0 } { 0 1 1 } { 1 1 1} } F { { 0 2 3 1 } } F { { 3 2 4 5 } } F { { 0 1 5 4 } } F { { 0 4 2 } } F { { 1 3 5 } }
facetize nmg bot
bo -i u S thusal.data thusal.dsp
in dsp dsp o thusal.data 400 400 1 ad 1 0.05
sed dsp
tra 32 -5 0
sca 0.0125
accept dsp
in extrude extrude 0 0 0 0 0 1 1 0 0 0 1 0 sketch
bo -i u C ebm.data y.bw
in ebm ebm o ebm.data 350 350 20
sed ebm
tra 32 5 0
sca 0.0125
accept ebm
in part part 0 0 0 0 0 2.5 1.25 0.625
sed part
tra 24 -10 0
accept part
in grip grip 1 0.5 0.0100 1 0 0 2.30
sed grip
tra 24 3 0
accept grip
in hyp hyp 0 0 0 0 0 3 0 1.5 0 0.75 0.4
sed hyp
tra 24 6 0
accept hyp
in pipe pipe 2 0 0 1.5 0.625 1.25 0.625 0 0 0 0.625 1.25 0.625
sed pipe
tra 24 9 0
accept pipe
in vol vol all_layers.bw 5 7 5 1 255 1 1 1
in half half 0 0 1 -1.5
