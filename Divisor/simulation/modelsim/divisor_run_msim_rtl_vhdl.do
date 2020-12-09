transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Avell/Documents/Sistemas Digitais/Divisor/Divisor/subtrator.vhd}
vcom -93 -work work {C:/Users/Avell/Documents/Sistemas Digitais/Divisor/Divisor/divisor.vhd}
vcom -93 -work work {C:/Users/Avell/Documents/Sistemas Digitais/Divisor/Divisor/bc.vhd}
vcom -93 -work work {C:/Users/Avell/Documents/Sistemas Digitais/Divisor/Divisor/bo.vhd}
vcom -93 -work work {C:/Users/Avell/Documents/Sistemas Digitais/Divisor/Divisor/igualazero.vhd}
vcom -93 -work work {C:/Users/Avell/Documents/Sistemas Digitais/Divisor/Divisor/mux2para1.vhd}
vcom -93 -work work {C:/Users/Avell/Documents/Sistemas Digitais/Divisor/Divisor/registrador.vhd}
vcom -93 -work work {C:/Users/Avell/Documents/Sistemas Digitais/Divisor/Divisor/somador.vhd}
vcom -93 -work work {C:/Users/Avell/Documents/Sistemas Digitais/Divisor/Divisor/maiorigual.vhd}

