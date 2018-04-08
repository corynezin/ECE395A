create_clock -period 20.000 -name clk -waveform {0.000 10.000} [get_ports -regexp -filter { NAME =~  ".*clk.*" && DIRECTION == "IN" }]


