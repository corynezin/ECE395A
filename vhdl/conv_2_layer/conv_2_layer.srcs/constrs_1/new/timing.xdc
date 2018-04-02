create_clock -period 20.000 -name sysClk -waveform {0.000 10.000} -add [get_ports -filter { NAME =~  "clk" && DIRECTION == "IN" }]

