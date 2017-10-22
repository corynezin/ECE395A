#!/usr/bin/env python2
# -*- coding: utf-8 -*-
##################################################
# GNU Radio Python Flow Graph
# Title: Top Block
# Generated: Sat Oct 21 17:40:06 2017
##################################################

if __name__ == '__main__':
    import ctypes
    import sys
    if sys.platform.startswith('linux'):
        try:
            x11 = ctypes.cdll.LoadLibrary('libX11.so')
            x11.XInitThreads()
        except:
            print "Warning: failed to XInitThreads()"

from PyQt4 import Qt
from PyQt4.QtCore import QObject, pyqtSlot
from gnuradio import analog
from gnuradio import blocks
from gnuradio import digital
from gnuradio import eng_notation
from gnuradio import filter
from gnuradio import gr
from gnuradio import qtgui
from gnuradio.eng_option import eng_option
from gnuradio.filter import firdes
from gnuradio.qtgui import Range, RangeWidget
from grc_gnuradio import blks2 as grc_blks2
from optparse import OptionParser
import numpy
import sip
import sys


class top_block(gr.top_block, Qt.QWidget):

    def __init__(self):
        gr.top_block.__init__(self, "Top Block")
        Qt.QWidget.__init__(self)
        self.setWindowTitle("Top Block")
        try:
            self.setWindowIcon(Qt.QIcon.fromTheme('gnuradio-grc'))
        except:
            pass
        self.top_scroll_layout = Qt.QVBoxLayout()
        self.setLayout(self.top_scroll_layout)
        self.top_scroll = Qt.QScrollArea()
        self.top_scroll.setFrameStyle(Qt.QFrame.NoFrame)
        self.top_scroll_layout.addWidget(self.top_scroll)
        self.top_scroll.setWidgetResizable(True)
        self.top_widget = Qt.QWidget()
        self.top_scroll.setWidget(self.top_widget)
        self.top_layout = Qt.QVBoxLayout(self.top_widget)
        self.top_grid_layout = Qt.QGridLayout()
        self.top_layout.addLayout(self.top_grid_layout)

        self.settings = Qt.QSettings("GNU Radio", "top_block")
        self.restoreGeometry(self.settings.value("geometry").toByteArray())

        ##################################################
        # Variables
        ##################################################
        self.samp_rate = samp_rate = 32000
        self.pam4_constellation = pam4_constellation = digital.constellation_calcdist(([0, 1, 3, 2]), ([0, 1, 3, 2]), 4, 1).base()
        self.noiseamp = noiseamp = (10**(-0.9) + 10 ) / 2
        self.noise_enable = noise_enable = 0
        self.mod_select = mod_select = 1
        self.ebw_range = ebw_range = 0.35
        self.a_src_freq = a_src_freq = 200e3

        ##################################################
        # Blocks
        ##################################################
        self._noiseamp_range = Range(10**(-0.9), 10, 0.001, (10**(-0.9) + 10 ) / 2, 200)
        self._noiseamp_win = RangeWidget(self._noiseamp_range, self.set_noiseamp, "Noise Amplitude", "counter_slider", float)
        self.top_grid_layout.addWidget(self._noiseamp_win, 0,2)
        _noise_enable_check_box = Qt.QCheckBox("Noise Enable")
        self._noise_enable_choices = {True: 1, False: 0}
        self._noise_enable_choices_inv = dict((v,k) for k,v in self._noise_enable_choices.iteritems())
        self._noise_enable_callback = lambda i: Qt.QMetaObject.invokeMethod(_noise_enable_check_box, "setChecked", Qt.Q_ARG("bool", self._noise_enable_choices_inv[i]))
        self._noise_enable_callback(self.noise_enable)
        _noise_enable_check_box.stateChanged.connect(lambda i: self.set_noise_enable(self._noise_enable_choices[bool(i)]))
        self.top_grid_layout.addWidget(_noise_enable_check_box, 0,1)
        self._mod_select_options = [0, 1, 2, 3, 4, 5, 6, 7,8,9, 10]
        self._mod_select_labels = ["BPSK", "QPSK", "8PSK", "QAM16", "QAM64", "PAM4", "GFSK" , "CPFSK", "WBFM", "AM-DSB", "AM-SSB"]
        self._mod_select_tool_bar = Qt.QToolBar(self)
        self._mod_select_tool_bar.addWidget(Qt.QLabel("mod_select"+": "))
        self._mod_select_combo_box = Qt.QComboBox()
        self._mod_select_tool_bar.addWidget(self._mod_select_combo_box)
        for label in self._mod_select_labels: self._mod_select_combo_box.addItem(label)
        self._mod_select_callback = lambda i: Qt.QMetaObject.invokeMethod(self._mod_select_combo_box, "setCurrentIndex", Qt.Q_ARG("int", self._mod_select_options.index(i)))
        self._mod_select_callback(self.mod_select)
        self._mod_select_combo_box.currentIndexChanged.connect(
        	lambda i: self.set_mod_select(self._mod_select_options[i]))
        self.top_grid_layout.addWidget(self._mod_select_tool_bar, 0,0)
        self._a_src_freq_range = Range(44100, 200e3, 10, 200e3, 200)
        self._a_src_freq_win = RangeWidget(self._a_src_freq_range, self.set_a_src_freq, "Analog Source Frequency", "counter_slider", float)
        self.top_layout.addWidget(self._a_src_freq_win)
        self.sig_source_0 = analog.sig_source_f(samp_rate, analog.GR_TRI_WAVE, 44100, 1, 0)
        self.qtgui_time_sink_x_0 = qtgui.time_sink_c(
        	2048, #size
        	samp_rate, #samp_rate
        	"Times Series", #name
        	1 #number of inputs
        )
        self.qtgui_time_sink_x_0.set_update_time(0.10)
        self.qtgui_time_sink_x_0.set_y_axis(-1, 1)
        
        self.qtgui_time_sink_x_0.set_y_label("Amplitude", "")
        
        self.qtgui_time_sink_x_0.enable_tags(-1, True)
        self.qtgui_time_sink_x_0.set_trigger_mode(qtgui.TRIG_MODE_FREE, qtgui.TRIG_SLOPE_POS, 0.0, 0, 0, "")
        self.qtgui_time_sink_x_0.enable_autoscale(True)
        self.qtgui_time_sink_x_0.enable_grid(True)
        self.qtgui_time_sink_x_0.enable_control_panel(False)
        
        if not True:
          self.qtgui_time_sink_x_0.disable_legend()
        
        labels = ["", "", "", "", "",
                  "", "", "", "", ""]
        widths = [1, 1, 1, 1, 1,
                  1, 1, 1, 1, 1]
        colors = ["blue", "red", "green", "black", "cyan",
                  "magenta", "yellow", "dark red", "dark green", "blue"]
        styles = [1, 1, 1, 1, 1,
                  1, 1, 1, 1, 1]
        markers = [-1, -1, -1, -1, -1,
                   -1, -1, -1, -1, -1]
        alphas = [1.0, 1.0, 1.0, 1.0, 1.0,
                  1.0, 1.0, 1.0, 1.0, 1.0]
        
        for i in xrange(2*1):
            if len(labels[i]) == 0:
                if(i % 2 == 0):
                    self.qtgui_time_sink_x_0.set_line_label(i, "Re{{Data {0}}}".format(i/2))
                else:
                    self.qtgui_time_sink_x_0.set_line_label(i, "Im{{Data {0}}}".format(i/2))
            else:
                self.qtgui_time_sink_x_0.set_line_label(i, labels[i])
            self.qtgui_time_sink_x_0.set_line_width(i, widths[i])
            self.qtgui_time_sink_x_0.set_line_color(i, colors[i])
            self.qtgui_time_sink_x_0.set_line_style(i, styles[i])
            self.qtgui_time_sink_x_0.set_line_marker(i, markers[i])
            self.qtgui_time_sink_x_0.set_line_alpha(i, alphas[i])
        
        self._qtgui_time_sink_x_0_win = sip.wrapinstance(self.qtgui_time_sink_x_0.pyqwidget(), Qt.QWidget)
        self.top_grid_layout.addWidget(self._qtgui_time_sink_x_0_win, 1,2)
        self.qtgui_freq_sink_x_0 = qtgui.freq_sink_c(
        	1024, #size
        	firdes.WIN_BLACKMAN_hARRIS, #wintype
        	0, #fc
        	samp_rate, #bw
        	"Frequency Spectrum", #name
        	1 #number of inputs
        )
        self.qtgui_freq_sink_x_0.set_update_time(0.10)
        self.qtgui_freq_sink_x_0.set_y_axis(-140, 10)
        self.qtgui_freq_sink_x_0.set_trigger_mode(qtgui.TRIG_MODE_FREE, 0.0, 0, "")
        self.qtgui_freq_sink_x_0.enable_autoscale(True)
        self.qtgui_freq_sink_x_0.enable_grid(True)
        self.qtgui_freq_sink_x_0.set_fft_average(1.0)
        self.qtgui_freq_sink_x_0.enable_control_panel(False)
        
        if not True:
          self.qtgui_freq_sink_x_0.disable_legend()
        
        if "complex" == "float" or "complex" == "msg_float":
          self.qtgui_freq_sink_x_0.set_plot_pos_half(not True)
        
        labels = ["", "", "", "", "",
                  "", "", "", "", ""]
        widths = [1, 1, 1, 1, 1,
                  1, 1, 1, 1, 1]
        colors = ["blue", "red", "green", "black", "cyan",
                  "magenta", "yellow", "dark red", "dark green", "dark blue"]
        alphas = [1.0, 1.0, 1.0, 1.0, 1.0,
                  1.0, 1.0, 1.0, 1.0, 1.0]
        for i in xrange(1):
            if len(labels[i]) == 0:
                self.qtgui_freq_sink_x_0.set_line_label(i, "Data {0}".format(i))
            else:
                self.qtgui_freq_sink_x_0.set_line_label(i, labels[i])
            self.qtgui_freq_sink_x_0.set_line_width(i, widths[i])
            self.qtgui_freq_sink_x_0.set_line_color(i, colors[i])
            self.qtgui_freq_sink_x_0.set_line_alpha(i, alphas[i])
        
        self._qtgui_freq_sink_x_0_win = sip.wrapinstance(self.qtgui_freq_sink_x_0.pyqwidget(), Qt.QWidget)
        self.top_grid_layout.addWidget(self._qtgui_freq_sink_x_0_win, 2,0,1,3)
        self.qtgui_const_sink_x_0 = qtgui.const_sink_c(
        	2048, #size
        	"Constellation", #name
        	1 #number of inputs
        )
        self.qtgui_const_sink_x_0.set_update_time(0.10)
        self.qtgui_const_sink_x_0.set_y_axis(-2, 2)
        self.qtgui_const_sink_x_0.set_x_axis(-2, 2)
        self.qtgui_const_sink_x_0.set_trigger_mode(qtgui.TRIG_MODE_FREE, qtgui.TRIG_SLOPE_POS, 0.0, 0, "")
        self.qtgui_const_sink_x_0.enable_autoscale(True)
        self.qtgui_const_sink_x_0.enable_grid(True)
        
        if not True:
          self.qtgui_const_sink_x_0.disable_legend()
        
        labels = ["", "", "", "", "",
                  "", "", "", "", ""]
        widths = [1, 1, 1, 1, 1,
                  1, 1, 1, 1, 1]
        colors = ["blue", "red", "red", "red", "red",
                  "red", "red", "red", "red", "red"]
        styles = [0, 0, 0, 0, 0,
                  0, 0, 0, 0, 0]
        markers = [0, 0, 0, 0, 0,
                   0, 0, 0, 0, 0]
        alphas = [1.0, 1.0, 1.0, 1.0, 1.0,
                  1.0, 1.0, 1.0, 1.0, 1.0]
        for i in xrange(1):
            if len(labels[i]) == 0:
                self.qtgui_const_sink_x_0.set_line_label(i, "Data {0}".format(i))
            else:
                self.qtgui_const_sink_x_0.set_line_label(i, labels[i])
            self.qtgui_const_sink_x_0.set_line_width(i, widths[i])
            self.qtgui_const_sink_x_0.set_line_color(i, colors[i])
            self.qtgui_const_sink_x_0.set_line_style(i, styles[i])
            self.qtgui_const_sink_x_0.set_line_marker(i, markers[i])
            self.qtgui_const_sink_x_0.set_line_alpha(i, alphas[i])
        
        self._qtgui_const_sink_x_0_win = sip.wrapinstance(self.qtgui_const_sink_x_0.pyqwidget(), Qt.QWidget)
        self.top_grid_layout.addWidget(self._qtgui_const_sink_x_0_win, 1,0,1,2)
        self.hilbert_fc_0 = filter.hilbert_fc(401, firdes.WIN_HAMMING, 6.76)
        self.fractional_interpolator_xx_0 = filter.fractional_interpolator_ff(0, 44100/a_src_freq)
        self.digital_qam_mod_0_1 = digital.qam.qam_mod(
          constellation_points=64,
          mod_code="gray",
          differential=True,
          samples_per_symbol=8,
          excess_bw=ebw_range,
          verbose=False,
          log=False,
          )
        self.digital_qam_mod_0_0 = digital.qam.qam_mod(
          constellation_points=16,
          mod_code="gray",
          differential=True,
          samples_per_symbol=8,
          excess_bw=ebw_range,
          verbose=False,
          log=False,
          )
        self.digital_psk_mod_1 = digital.psk.psk_mod(
          constellation_points=8,
          mod_code="gray",
          differential=True,
          samples_per_symbol=8,
          excess_bw=ebw_range,
          verbose=False,
          log=False,
          )
        self.digital_psk_mod_0_0 = digital.psk.psk_mod(
          constellation_points=2,
          mod_code="gray",
          differential=True,
          samples_per_symbol=8,
          excess_bw=ebw_range,
          verbose=False,
          log=False,
          )
        self.digital_psk_mod_0 = digital.psk.psk_mod(
          constellation_points=4,
          mod_code="gray",
          differential=True,
          samples_per_symbol=8,
          excess_bw=ebw_range,
          verbose=False,
          log=False,
          )
        self.digital_gfsk_mod_0 = digital.gfsk_mod(
        	samples_per_symbol=8,
        	sensitivity=0.1,
        	bt=ebw_range,
        	verbose=False,
        	log=False,
        )
        self.digital_constellation_modulator_0 = digital.generic_mod(
          constellation=pam4_constellation,
          differential=True,
          samples_per_symbol=8,
          pre_diff_code=True,
          excess_bw=ebw_range,
          verbose=False,
          log=False,
          )
        self.blocks_throttle_0 = blocks.throttle(gr.sizeof_gr_complex*1, samp_rate,True)
        self.blocks_packed_to_unpacked_xx_1 = blocks.packed_to_unpacked_bb(1, gr.GR_MSB_FIRST)
        self.blocks_packed_to_unpacked_xx_0 = blocks.packed_to_unpacked_bb(1, gr.GR_LSB_FIRST)
        self.blocks_multiply_xx_0_0 = blocks.multiply_vff(1)
        self.blocks_multiply_xx_0 = blocks.multiply_vcc(1)
        self.blocks_multiply_const_vxx_1_0 = blocks.multiply_const_vff((0.1, ))
        self.blocks_multiply_const_vxx_1 = blocks.multiply_const_vcc((0.1, ))
        self.blocks_multiply_const_vxx_0 = blocks.multiply_const_vcc((1+1j, ))
        self.blocks_float_to_complex_0 = blocks.float_to_complex(1)
        self.blocks_add_xx_0 = blocks.add_vcc(1)
        self.blocks_add_const_vxx_0_0 = blocks.add_const_vff((1, ))
        self.blocks_add_const_vxx_0 = blocks.add_const_vcc((1, ))
        self.blks2_selector_1 = grc_blks2.selector(
        	item_size=gr.sizeof_gr_complex*1,
        	num_inputs=2,
        	num_outputs=1,
        	input_index=noise_enable,
        	output_index=0,
        )
        self.blks2_selector_0 = grc_blks2.selector(
        	item_size=gr.sizeof_gr_complex*1,
        	num_inputs=11,
        	num_outputs=1,
        	input_index=mod_select,
        	output_index=0,
        )
        self.analog_wfm_tx_0 = analog.wfm_tx(
        	audio_rate=44100,
        	quad_rate=220500,
        	tau=75e-6,
        	max_dev=75e3,
        )
        self.analog_sig_source_x_0_0 = analog.sig_source_f(samp_rate, analog.GR_COS_WAVE, a_src_freq, 1, 0)
        self.analog_sig_source_x_0 = analog.sig_source_c(samp_rate, analog.GR_COS_WAVE, a_src_freq, 1, 0)
        self.analog_random_source_x_0 = blocks.vector_source_b(map(int, numpy.random.randint(0, 64, 8192)), True)
        self.analog_noise_source_x_0 = analog.noise_source_c(analog.GR_GAUSSIAN, noiseamp, 31415)
        self.analog_cpfsk_bc_0 = analog.cpfsk_bc(0.5, 1.0, 8)
        self.analog_const_source_x_1 = analog.sig_source_f(0, analog.GR_CONST_WAVE, 0, 0, 0)
        self.analog_const_source_x_0 = analog.sig_source_c(0, analog.GR_CONST_WAVE, 0, 0, 0)

        ##################################################
        # Connections
        ##################################################
        self.connect((self.analog_const_source_x_0, 0), (self.blks2_selector_1, 0))    
        self.connect((self.analog_const_source_x_1, 0), (self.blocks_float_to_complex_0, 1))    
        self.connect((self.analog_cpfsk_bc_0, 0), (self.blks2_selector_0, 7))    
        self.connect((self.analog_noise_source_x_0, 0), (self.blks2_selector_1, 1))    
        self.connect((self.analog_random_source_x_0, 0), (self.blocks_packed_to_unpacked_xx_0, 0))    
        self.connect((self.analog_random_source_x_0, 0), (self.blocks_packed_to_unpacked_xx_1, 0))    
        self.connect((self.analog_sig_source_x_0, 0), (self.blocks_multiply_xx_0, 1))    
        self.connect((self.analog_sig_source_x_0_0, 0), (self.blocks_multiply_xx_0_0, 1))    
        self.connect((self.analog_wfm_tx_0, 0), (self.blks2_selector_0, 8))    
        self.connect((self.blks2_selector_0, 0), (self.blocks_add_xx_0, 1))    
        self.connect((self.blks2_selector_1, 0), (self.blocks_add_xx_0, 0))    
        self.connect((self.blocks_add_const_vxx_0, 0), (self.blocks_multiply_xx_0, 0))    
        self.connect((self.blocks_add_const_vxx_0_0, 0), (self.blocks_multiply_xx_0_0, 0))    
        self.connect((self.blocks_add_xx_0, 0), (self.blocks_throttle_0, 0))    
        self.connect((self.blocks_float_to_complex_0, 0), (self.blocks_multiply_const_vxx_1, 0))    
        self.connect((self.blocks_multiply_const_vxx_0, 0), (self.blks2_selector_0, 1))    
        self.connect((self.blocks_multiply_const_vxx_1, 0), (self.blocks_add_const_vxx_0, 0))    
        self.connect((self.blocks_multiply_const_vxx_1_0, 0), (self.blocks_add_const_vxx_0_0, 0))    
        self.connect((self.blocks_multiply_xx_0, 0), (self.blks2_selector_0, 9))    
        self.connect((self.blocks_multiply_xx_0_0, 0), (self.hilbert_fc_0, 0))    
        self.connect((self.blocks_packed_to_unpacked_xx_0, 0), (self.analog_cpfsk_bc_0, 0))    
        self.connect((self.blocks_packed_to_unpacked_xx_0, 0), (self.digital_constellation_modulator_0, 0))    
        self.connect((self.blocks_packed_to_unpacked_xx_0, 0), (self.digital_psk_mod_0, 0))    
        self.connect((self.blocks_packed_to_unpacked_xx_0, 0), (self.digital_psk_mod_0_0, 0))    
        self.connect((self.blocks_packed_to_unpacked_xx_0, 0), (self.digital_psk_mod_1, 0))    
        self.connect((self.blocks_packed_to_unpacked_xx_0, 0), (self.digital_qam_mod_0_0, 0))    
        self.connect((self.blocks_packed_to_unpacked_xx_0, 0), (self.digital_qam_mod_0_1, 0))    
        self.connect((self.blocks_packed_to_unpacked_xx_1, 0), (self.digital_gfsk_mod_0, 0))    
        self.connect((self.blocks_throttle_0, 0), (self.qtgui_const_sink_x_0, 0))    
        self.connect((self.blocks_throttle_0, 0), (self.qtgui_freq_sink_x_0, 0))    
        self.connect((self.blocks_throttle_0, 0), (self.qtgui_time_sink_x_0, 0))    
        self.connect((self.digital_constellation_modulator_0, 0), (self.blks2_selector_0, 5))    
        self.connect((self.digital_gfsk_mod_0, 0), (self.blks2_selector_0, 6))    
        self.connect((self.digital_psk_mod_0, 0), (self.blocks_multiply_const_vxx_0, 0))    
        self.connect((self.digital_psk_mod_0_0, 0), (self.blks2_selector_0, 0))    
        self.connect((self.digital_psk_mod_1, 0), (self.blks2_selector_0, 2))    
        self.connect((self.digital_qam_mod_0_0, 0), (self.blks2_selector_0, 3))    
        self.connect((self.digital_qam_mod_0_1, 0), (self.blks2_selector_0, 4))    
        self.connect((self.fractional_interpolator_xx_0, 0), (self.blocks_float_to_complex_0, 0))    
        self.connect((self.fractional_interpolator_xx_0, 0), (self.blocks_multiply_const_vxx_1_0, 0))    
        self.connect((self.hilbert_fc_0, 0), (self.blks2_selector_0, 10))    
        self.connect((self.sig_source_0, 0), (self.analog_wfm_tx_0, 0))    
        self.connect((self.sig_source_0, 0), (self.fractional_interpolator_xx_0, 0))    

    def closeEvent(self, event):
        self.settings = Qt.QSettings("GNU Radio", "top_block")
        self.settings.setValue("geometry", self.saveGeometry())
        event.accept()


    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.analog_sig_source_x_0.set_sampling_freq(self.samp_rate)
        self.analog_sig_source_x_0_0.set_sampling_freq(self.samp_rate)
        self.blocks_throttle_0.set_sample_rate(self.samp_rate)
        self.qtgui_freq_sink_x_0.set_frequency_range(0, self.samp_rate)
        self.qtgui_time_sink_x_0.set_samp_rate(self.samp_rate)
        self.sig_source_0.set_sampling_freq(self.samp_rate)

    def get_pam4_constellation(self):
        return self.pam4_constellation

    def set_pam4_constellation(self, pam4_constellation):
        self.pam4_constellation = pam4_constellation

    def get_noiseamp(self):
        return self.noiseamp

    def set_noiseamp(self, noiseamp):
        self.noiseamp = noiseamp
        self.analog_noise_source_x_0.set_amplitude(self.noiseamp)

    def get_noise_enable(self):
        return self.noise_enable

    def set_noise_enable(self, noise_enable):
        self.noise_enable = noise_enable
        self._noise_enable_callback(self.noise_enable)
        self.blks2_selector_1.set_input_index(int(self.noise_enable))

    def get_mod_select(self):
        return self.mod_select

    def set_mod_select(self, mod_select):
        self.mod_select = mod_select
        self.blks2_selector_0.set_input_index(int(self.mod_select))
        self._mod_select_callback(self.mod_select)

    def get_ebw_range(self):
        return self.ebw_range

    def set_ebw_range(self, ebw_range):
        self.ebw_range = ebw_range

    def get_a_src_freq(self):
        return self.a_src_freq

    def set_a_src_freq(self, a_src_freq):
        self.a_src_freq = a_src_freq
        self.analog_sig_source_x_0.set_frequency(self.a_src_freq)
        self.analog_sig_source_x_0_0.set_frequency(self.a_src_freq)
        self.fractional_interpolator_xx_0.set_interp_ratio(44100/self.a_src_freq)


def main(top_block_cls=top_block, options=None):

    from distutils.version import StrictVersion
    if StrictVersion(Qt.qVersion()) >= StrictVersion("4.5.0"):
        style = gr.prefs().get_string('qtgui', 'style', 'raster')
        Qt.QApplication.setGraphicsSystem(style)
    qapp = Qt.QApplication(sys.argv)

    tb = top_block_cls()
    tb.start()
    tb.show()

    def quitting():
        tb.stop()
        tb.wait()
    qapp.connect(qapp, Qt.SIGNAL("aboutToQuit()"), quitting)
    qapp.exec_()


if __name__ == '__main__':
    main()
