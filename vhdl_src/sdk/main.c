/***************************************************************************//**
 *   @file   main.c
 *   @brief  Implementation of Main Function.
 *   @author DBogdan (dragos.bogdan@analog.com)
********************************************************************************
 * Copyright 2013(c) Analog Devices, Inc.
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *  - Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  - Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *  - Neither the name of Analog Devices, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *  - The use of this software may or may not infringe the patent rights
 *    of one or more patent holders.  This license does not release you
 *    from the requirement that you obtain separate licenses from these
 *    patent holders to use this software.
 *  - Use of the software either in source or binary form, must be run
 *    on or directly connected to an Analog Devices Inc. component.
 *
 * THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT,
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, INTELLECTUAL PROPERTY RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*******************************************************************************/

/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/
#include "config.h"
#include "ad9361_api.h"
#include "parameters.h"
#include "platform.h"
#ifdef CONSOLE_COMMANDS
#include "command.h"
#include "console.h"
#endif
#ifdef XILINX_PLATFORM
#include <xil_cache.h>
#include "mw.h"
#endif
#if defined XILINX_PLATFORM || defined LINUX_PLATFORM || defined ALTERA_PLATFORM
#include "adc_core.h"
#include "dac_core.h"
#endif

#include "xil_io.h"
#include <math.h>
#include "convnet.h"
#include "xparameters.h"
#include "xtime_l.h"

#define FIFO_CLR 		0x00000001
#define FIFO_DATA_COUNT 0x000000FF
#define FIFO_DATA_COUNT_RD 0x0003FC00
#define MAC_READY 		0x00000100
#define INPUT_FIFO_RDEN 		0x00000200
#define DEBUG_OUT		0xC0000000
#define MAC_CLR			0x20000000
#define ADC_PK 0.625
// #define NN_SOFTWARE
// #define CALIBRATE
/******************************************************************************/
/************************ Variables Definitions *******************************/
/******************************************************************************/
#ifdef CONSOLE_COMMANDS
extern command	  	cmd_list[];
extern char			cmd_no;
extern cmd_function	cmd_functions[11];
unsigned char		cmd				 =  0;
double				param[5]		 = {0, 0, 0, 0, 0};
char				param_no		 =  0;
int					cmd_type		 = -1;
char				invalid_cmd		 =  0;
char				received_cmd[30] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
										0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
										0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
#endif

unsigned int c_test[5][128]=
{{0xfe98ff9c, 0x017c003c, 0x017c000a, 0x00faffe2, 0xfe84001e, 0xfe8e0050, 0xfe980078, 0xfeac00aa,
  0xfec000c8, 0xfede00f0, 0xfef20104, 0xff100122, 0xff2e0136, 0xff4c0136, 0x0096feac, 0x006efe98,
  0x0046fe98, 0xffba015e, 0xffe20172, 0x00280172, 0x00500168, 0x00640140, 0xff74fea2, 0xff42feac,
  0xff4cff10, 0x00dc012c, 0x0104010e, 0xffb0ffba, 0xfecaff24, 0xfea2ff56, 0x01540096, 0x0168006e,
  0x01040028, 0xfe84ffe2, 0xfe840014, 0xff9c0014, 0x0172ffba, 0x0168ff7e, 0x0154ff56, 0x0140ff2e,
  0x0046ffce, 0xfede00f0, 0xfefc010e, 0xff240136, 0xff4c0140, 0xff74015e, 0xff9c0168, 0xffba0168,
  0xffe20172, 0x00000172, 0x00280172, 0x00460168, 0x0064015e, 0x004600be, 0xff6afe98, 0xff38feb6,
  0xffecffe2, 0x00fa010e, 0x011800e6, 0xfedeff38, 0xfeacff4c, 0xfea2ff74, 0x015e006e, 0x01720046,
  0x00fa0014, 0xfe7affec, 0xfe7a0028, 0xfe84005a, 0xfe980082, 0xff4c0050, 0x012cff60, 0x0136ff2e,
  0x010eff06, 0x00fafee8, 0x0096ff24, 0xff240136, 0xff4c014a, 0xff880140, 0x0064fec0, 0x0046fe8e,
  0x000afe8e, 0xffd8fe8e, 0xffd8ff24, 0x005a0168, 0x0078015e, 0x0096012c, 0xff4cfec0, 0xff24feca,
  0xfefcfee8, 0x0000fff6, 0xff1aff4c, 0x00dc008c, 0x014a00a0, 0x0168006e, 0x0172003c, 0x0168000a,
  0xfeacffec, 0xfe84000a, 0xfe8e0046, 0x00f0ffba, 0x0154ff6a, 0x014aff42, 0x012cff1a, 0x0104ff06,
  0xfefc00e6, 0xff060118, 0xff2e012c, 0x00a0fed4, 0x008cfe98, 0x0050fe8e, 0x001efe84, 0x0000fe7a,
  0xffe2fe7a, 0xffbafe84, 0xff92fe98, 0xff6afe98, 0xff4cfeac, 0x00500096, 0x00c80140, 0x00f00122,
  0xfef2fefc, 0xfecaff10, 0xfedeff60, 0x014a00aa, 0x015e0082, 0xffd8fff6, 0xfe84ffc4, 0xfe84fff6},
 {0x00f00082, 0x017cffce, 0x015eff88, 0x01040032, 0x00b4012c, 0x00c80118, 0xffb00104, 0xff38010e,
  0x008c00f0, 0x014a00aa, 0x0118ffe2, 0x0078fec0, 0x001efe84, 0xff38ff42, 0xfe8e001e, 0xfe8e0064,
  0xfed4000a, 0xff2efefc, 0xff10fed4, 0xffecfee8, 0x00e6fed4, 0x00d2fef2, 0x01180000, 0x01540082,
  0x00dc00aa, 0xfff60154, 0x007800f0, 0x01540000, 0x015eff9c, 0x0046fefc, 0xff4cfeac, 0xff10ff24,
  0xfee80082, 0xfefc0118, 0xfff60118, 0x012200be, 0x015e0078, 0x012c0078, 0x003c0122, 0xfff6017c,
  0xff9200fa, 0xfeac005a, 0xff6000d2, 0x0082014a, 0x00d20122, 0x010effce, 0x0104fee8, 0x0046fede,
  0xff24ffe2, 0xfea2ff60, 0xfeacff92, 0xff88fefc, 0x000afe7a, 0x0032feca, 0x0118ff74, 0x015eff74,
  0x01040028, 0x00c80122, 0x01040014, 0x0104fef2, 0x00d2feca, 0x00c8ff24, 0x01360028, 0x015e0050,
  0x00b400be, 0x00000168, 0x00c800a0, 0x015effb0, 0x0118ff60, 0xffe2fede, 0xff2efec0, 0xfef2ff92,
  0xfef200dc, 0xff24012c, 0x005a00fa, 0x01540096, 0x0168005a, 0x00f0008c, 0x00140154, 0x00140172,
  0xff6000d2, 0xfe98006e, 0xfeca0064, 0xff1aff4c, 0xff10ff2e, 0xfef20082, 0xff1a0122, 0x0014010e,
  0x01400096, 0x0172005a, 0x0136005a, 0x00500118, 0x00640118, 0x0136000a, 0x0168ff88, 0x0136ff60,
  0x00fa005a, 0x00e60122, 0x00a000fa, 0xff7e010e, 0xff380140, 0xff1a008c, 0xfe98ff9c, 0xfea2ffb0,
  0xff74ff10, 0xffc4fea2, 0xfee8ffb0, 0xfe8e0078, 0xfeac00aa, 0xfee8ffec, 0xff10fede, 0xfef20000,
  0xff060118, 0xff42014a, 0xff3800dc, 0xfeb6ffce, 0xfee8003c, 0xffb0014a, 0x00140172, 0x00e6008c,
  0x0168ff92, 0x0118ff42, 0xffcefede, 0xff24fed4, 0xfef2fefc, 0xffe2fef2, 0x00befec0, 0xff92ff06},
 {0x001efe84, 0xffecfe84, 0xffbafe84, 0xff92fe84, 0xff6afe98, 0xff42feac, 0xff38feca, 0x0078fefc,
  0x010efef2, 0x00dcfec0, 0x00aafe98, 0x0078fe98, 0xfef2ff4c, 0xfe84ffba, 0xfe84ffec, 0xffb0fec0,
  0xffb0fe7a, 0x0050ff06, 0x00aa0122, 0x00d2014a, 0xffb000fa, 0xff4200a0, 0xff0600d2, 0x0028ff4c,
  0x00a0fe98, 0x005afe84, 0x0014fe7a, 0xffd8fe84, 0xfeb6ffd8, 0xfe7a0046, 0xfe8e0064, 0xff56feb6,
  0xff38feac, 0xfef2ff60, 0xfee80104, 0xff100136, 0xfefc0046, 0xfe98ff60, 0xfed4ff6a, 0xffecfec0,
  0x0014fe84, 0xffcefe7a, 0xff9cfe84, 0xff56feca, 0xfeb60064, 0xfeac00c8, 0xff2e00dc, 0x00e6ff42,
  0x00e6fed4, 0x00befeac, 0x0082fe8e, 0x005afe8e, 0x0028fe7a, 0x0000fe7a, 0xff6aff10, 0xfe8e0050,
  0xfe8e0078, 0x003c0000, 0x0154ff38, 0x012cff10, 0xffa60096, 0xff060118, 0xff2e0140, 0xfea2ff6a,
  0xfe84ff7e, 0xfe84ffc4, 0xfe700000, 0xfe8e000a, 0xff74fed4, 0xff92fe84, 0x0046fef2, 0x014aff42,
  0x012cff10, 0x000afee8, 0xfecaff06, 0xfeacff42, 0xfe98ff7e, 0xfe84ffa6, 0xfe7affd8, 0xfe70fff6,
  0xfe7a001e, 0xfe840046, 0xfe840082, 0xfeb6006e, 0xff24ff06, 0xff24fec0, 0xfef2fef2, 0xfec0ff2e,
  0xfeb6ff4c, 0x005afec0, 0x0078fe98, 0x0078ff06, 0xffec0168, 0x000a0186, 0xffc400a0, 0xff9cfe84,
  0xff60fe8e, 0x003cfef2, 0x012cff06, 0x010efee8, 0x00dcfec0, 0x00aafeac, 0x0000ffd8, 0xff6a015e,
  0xffa60172, 0xffd80186, 0x001e017c, 0x00320082, 0xffc4feb6, 0xff74fe8e, 0xff38feac, 0xfefcfed4,
  0xff2efef2, 0x0078fede, 0x00dcfec0, 0x00a0fea2, 0x0064fe84, 0x003cfe84, 0x010eff9c, 0x017c0000,
  0x0172ffc4, 0x0050fef2, 0xff74fe98, 0xff2efeb6, 0xff06feca, 0xff06fef2, 0x00a00078, 0x013600dc},
 {0x006eff60, 0x0014fe48, 0xffd8fe3e, 0xff92fe48, 0xff4cfe66, 0xff06fef2, 0xfe8400dc, 0xfef20122,
  0x00f0012c, 0x00b400be, 0x017c00f0, 0x01a40096, 0x0172fff6, 0x003cfe48, 0xfff6fe3e, 0xffbafe48,
  0x0172ff60, 0x0190ff60, 0x00dc015e, 0x00140140, 0xffce012c, 0x00be006e, 0x00aafe8e, 0xff1afefc,
  0xfe8effd8, 0xfee80096, 0xffb0fff6, 0x0082fec0, 0x003cfeac, 0x003cfeb6, 0x006eff9c, 0x00fa010e,
  0x01180154, 0x014a00fa, 0x010efede, 0x0064fe8e, 0xfee8ff1a, 0xfe48ff9c, 0xff1000d2, 0xfeac006e,
  0xfe3e0032, 0xfedeff74, 0xffc4fe84, 0x00f0fefc, 0x00d2fef2, 0x00140136, 0x006e012c, 0x015e00d2,
  0x00befe70, 0x0078fe52, 0x0032fe48, 0x0082fec0, 0x015effc4, 0x004601b8, 0x008c01a4, 0x00d20186,
  0x010e015e, 0x011800e6, 0x01540118, 0x017c00e6, 0x019a00aa, 0x01a40082, 0x0122ff74, 0xff7efede,
  0xfe48ffe2, 0xfe3e0032, 0xfe520082, 0xffd80140, 0x01360032, 0x0168fef2, 0x012cfec0, 0x0104fed4,
  0x015e005a, 0x00960046, 0xfe70ff60, 0xfe3effa6, 0xfe8e005a, 0x001e01c2, 0x00780190, 0x008c019a,
  0xfe7a00be, 0xfe8400fa, 0xffc40136, 0x00fa012c, 0x006e012c, 0xff560118, 0xffb00064, 0x00dcff24,
  0x0096fec0, 0x00a0fee8, 0x010eff4c, 0x005a00a0, 0xff380104, 0xfe7a00d2, 0xfeac0118, 0x008c0032,
  0x010efea2, 0x00fafede, 0x011800dc, 0x00a0010e, 0x0186005a, 0x0028fe52, 0xffd8fe3e, 0xff88fe52,
  0xff4cfe66, 0x0064feca, 0x0172fefc, 0x0140feca, 0x010efe98, 0x00e6fe84, 0x00aafe5c, 0x00dcfef2,
  0x0154ffce, 0x0140ff92, 0xffd8ffe2, 0xfeb60096, 0xff0600dc, 0xff6a0118, 0xff420122, 0xfecaff2e,
  0xfeb6feca, 0xfe8eff06, 0xfeac000a, 0xfede0096, 0xfe48ff7e, 0xfe3effce, 0xfe3e0014, 0x00aa00aa}
};

AD9361_InitParam default_init_param = {
	/* Device selection */
	ID_AD9361,	// dev_sel
	/* Identification number */
	0,		//id_no
	/* Reference Clock */
	40000000UL,	//reference_clk_rate
	/* Base Configuration */
	0,		//two_rx_two_tx_mode_enable *** adi,2rx-2tx-mode-enable
	1,		//one_rx_one_tx_mode_use_rx_num *** adi,1rx-1tx-mode-use-rx-num
	1,		//one_rx_one_tx_mode_use_tx_num *** adi,1rx-1tx-mode-use-tx-num
	0,		//frequency_division_duplex_mode_enable *** adi,frequency-division-duplex-mode-enable
	0,		//frequency_division_duplex_independent_mode_enable *** adi,frequency-division-duplex-independent-mode-enable
	0,		//tdd_use_dual_synth_mode_enable *** adi,tdd-use-dual-synth-mode-enable
	0,		//tdd_skip_vco_cal_enable *** adi,tdd-skip-vco-cal-enable
	0,		//tx_fastlock_delay_ns *** adi,tx-fastlock-delay-ns
	0,		//rx_fastlock_delay_ns *** adi,rx-fastlock-delay-ns
	0,		//rx_fastlock_pincontrol_enable *** adi,rx-fastlock-pincontrol-enable
	0,		//tx_fastlock_pincontrol_enable *** adi,tx-fastlock-pincontrol-enable
	0,		//external_rx_lo_enable *** adi,external-rx-lo-enable
	0,		//external_tx_lo_enable *** adi,external-tx-lo-enable
	5,		//dc_offset_tracking_update_event_mask *** adi,dc-offset-tracking-update-event-mask
	6,		//dc_offset_attenuation_high_range *** adi,dc-offset-attenuation-high-range
	5,		//dc_offset_attenuation_low_range *** adi,dc-offset-attenuation-low-range
	0x28,	//dc_offset_count_high_range *** adi,dc-offset-count-high-range
	0x32,	//dc_offset_count_low_range *** adi,dc-offset-count-low-range
	0,		//split_gain_table_mode_enable *** adi,split-gain-table-mode-enable
	MAX_SYNTH_FREF,	//trx_synthesizer_target_fref_overwrite_hz *** adi,trx-synthesizer-target-fref-overwrite-hz
	0,		// qec_tracking_slow_mode_enable *** adi,qec-tracking-slow-mode-enable
	/* ENSM Control */
	0,		//ensm_enable_pin_pulse_mode_enable *** adi,ensm-enable-pin-pulse-mode-enable
	0,		//ensm_enable_txnrx_control_enable *** adi,ensm-enable-txnrx-control-enable
	/* LO Control */
	2450000000UL,	//rx_synthesizer_frequency_hz *** adi,rx-synthesizer-frequency-hz
	2450000000UL,	//tx_synthesizer_frequency_hz *** adi,tx-synthesizer-frequency-hz
	/* Rate & BW Control */
	{983040000, 245760000, 122880000, 61440000, 30720000, 30720000},// rx_path_clock_frequencies[6] *** adi,rx-path-clock-frequencies
	{983040000, 122880000, 122880000, 61440000, 30720000, 30720000},// tx_path_clock_frequencies[6] *** adi,tx-path-clock-frequencies
	20000000,//rf_rx_bandwidth_hz *** adi,rf-rx-bandwidth-hz
	18000000,//rf_tx_bandwidth_hz *** adi,rf-tx-bandwidth-hz
	/* RF Port Control */
	0,		//rx_rf_port_input_select *** adi,rx-rf-port-input-select
	0,		//tx_rf_port_input_select *** adi,tx-rf-port-input-select
	/* TX Attenuation Control */
	10000,	//tx_attenuation_mdB *** adi,tx-attenuation-mdB
	0,		//update_tx_gain_in_alert_enable *** adi,update-tx-gain-in-alert-enable
	/* Reference Clock Control */
	0,		//xo_disable_use_ext_refclk_enable *** adi,xo-disable-use-ext-refclk-enable
	{8, 5980},	//dcxo_coarse_and_fine_tune[2] *** adi,dcxo-coarse-and-fine-tune
	6,	//clk_output_mode_select *** adi,clk-output-mode-select
	/* Gain Control */
	2,		//gc_rx1_mode *** adi,gc-rx1-mode
	2,		//gc_rx2_mode *** adi,gc-rx2-mode
	58,		//gc_adc_large_overload_thresh *** adi,gc-adc-large-overload-thresh
	4,		//gc_adc_ovr_sample_size *** adi,gc-adc-ovr-sample-size
	47,		//gc_adc_small_overload_thresh *** adi,gc-adc-small-overload-thresh
	8192,	//gc_dec_pow_measurement_duration *** adi,gc-dec-pow-measurement-duration
	0,		//gc_dig_gain_enable *** adi,gc-dig-gain-enable
	800,	//gc_lmt_overload_high_thresh *** adi,gc-lmt-overload-high-thresh
	704,	//gc_lmt_overload_low_thresh *** adi,gc-lmt-overload-low-thresh
	24,		//gc_low_power_thresh *** adi,gc-low-power-thresh
	15,		//gc_max_dig_gain *** adi,gc-max-dig-gain
	/* Gain MGC Control */
	2,		//mgc_dec_gain_step *** adi,mgc-dec-gain-step
	2,		//mgc_inc_gain_step *** adi,mgc-inc-gain-step
	0,		//mgc_rx1_ctrl_inp_enable *** adi,mgc-rx1-ctrl-inp-enable
	0,		//mgc_rx2_ctrl_inp_enable *** adi,mgc-rx2-ctrl-inp-enable
	0,		//mgc_split_table_ctrl_inp_gain_mode *** adi,mgc-split-table-ctrl-inp-gain-mode
	/* Gain AGC Control */
	10,		//agc_adc_large_overload_exceed_counter *** adi,agc-adc-large-overload-exceed-counter
	2,		//agc_adc_large_overload_inc_steps *** adi,agc-adc-large-overload-inc-steps
	0,		//agc_adc_lmt_small_overload_prevent_gain_inc_enable *** adi,agc-adc-lmt-small-overload-prevent-gain-inc-enable
	10,		//agc_adc_small_overload_exceed_counter *** adi,agc-adc-small-overload-exceed-counter
	4,		//agc_dig_gain_step_size *** adi,agc-dig-gain-step-size
	3,		//agc_dig_saturation_exceed_counter *** adi,agc-dig-saturation-exceed-counter
	1000,	// agc_gain_update_interval_us *** adi,agc-gain-update-interval-us
	0,		//agc_immed_gain_change_if_large_adc_overload_enable *** adi,agc-immed-gain-change-if-large-adc-overload-enable
	0,		//agc_immed_gain_change_if_large_lmt_overload_enable *** adi,agc-immed-gain-change-if-large-lmt-overload-enable
	10,		//agc_inner_thresh_high *** adi,agc-inner-thresh-high
	1,		//agc_inner_thresh_high_dec_steps *** adi,agc-inner-thresh-high-dec-steps
	12,		//agc_inner_thresh_low *** adi,agc-inner-thresh-low
	1,		//agc_inner_thresh_low_inc_steps *** adi,agc-inner-thresh-low-inc-steps
	10,		//agc_lmt_overload_large_exceed_counter *** adi,agc-lmt-overload-large-exceed-counter
	2,		//agc_lmt_overload_large_inc_steps *** adi,agc-lmt-overload-large-inc-steps
	10,		//agc_lmt_overload_small_exceed_counter *** adi,agc-lmt-overload-small-exceed-counter
	5,		//agc_outer_thresh_high *** adi,agc-outer-thresh-high
	2,		//agc_outer_thresh_high_dec_steps *** adi,agc-outer-thresh-high-dec-steps
	18,		//agc_outer_thresh_low *** adi,agc-outer-thresh-low
	2,		//agc_outer_thresh_low_inc_steps *** adi,agc-outer-thresh-low-inc-steps
	1,		//agc_attack_delay_extra_margin_us; *** adi,agc-attack-delay-extra-margin-us
	0,		//agc_sync_for_gain_counter_enable *** adi,agc-sync-for-gain-counter-enable
	/* Fast AGC */
	64,		//fagc_dec_pow_measuremnt_duration ***  adi,fagc-dec-pow-measurement-duration
	260,	//fagc_state_wait_time_ns ***  adi,fagc-state-wait-time-ns
	/* Fast AGC - Low Power */
	0,		//fagc_allow_agc_gain_increase ***  adi,fagc-allow-agc-gain-increase-enable
	5,		//fagc_lp_thresh_increment_time ***  adi,fagc-lp-thresh-increment-time
	1,		//fagc_lp_thresh_increment_steps ***  adi,fagc-lp-thresh-increment-steps
	/* Fast AGC - Lock Level (Lock Level is set via slow AGC inner high threshold) */
	1,		//fagc_lock_level_lmt_gain_increase_en ***  adi,fagc-lock-level-lmt-gain-increase-enable
	5,		//fagc_lock_level_gain_increase_upper_limit ***  adi,fagc-lock-level-gain-increase-upper-limit
	/* Fast AGC - Peak Detectors and Final Settling */
	1,		//fagc_lpf_final_settling_steps ***  adi,fagc-lpf-final-settling-steps
	1,		//fagc_lmt_final_settling_steps ***  adi,fagc-lmt-final-settling-steps
	3,		//fagc_final_overrange_count ***  adi,fagc-final-overrange-count
	/* Fast AGC - Final Power Test */
	0,		//fagc_gain_increase_after_gain_lock_en ***  adi,fagc-gain-increase-after-gain-lock-enable
	/* Fast AGC - Unlocking the Gain */
	0,		//fagc_gain_index_type_after_exit_rx_mode ***  adi,fagc-gain-index-type-after-exit-rx-mode
	1,		//fagc_use_last_lock_level_for_set_gain_en ***  adi,fagc-use-last-lock-level-for-set-gain-enable
	1,		//fagc_rst_gla_stronger_sig_thresh_exceeded_en ***  adi,fagc-rst-gla-stronger-sig-thresh-exceeded-enable
	5,		//fagc_optimized_gain_offset ***  adi,fagc-optimized-gain-offset
	10,		//fagc_rst_gla_stronger_sig_thresh_above_ll ***  adi,fagc-rst-gla-stronger-sig-thresh-above-ll
	1,		//fagc_rst_gla_engergy_lost_sig_thresh_exceeded_en ***  adi,fagc-rst-gla-engergy-lost-sig-thresh-exceeded-enable
	1,		//fagc_rst_gla_engergy_lost_goto_optim_gain_en ***  adi,fagc-rst-gla-engergy-lost-goto-optim-gain-enable
	10,		//fagc_rst_gla_engergy_lost_sig_thresh_below_ll ***  adi,fagc-rst-gla-engergy-lost-sig-thresh-below-ll
	8,		//fagc_energy_lost_stronger_sig_gain_lock_exit_cnt ***  adi,fagc-energy-lost-stronger-sig-gain-lock-exit-cnt
	1,		//fagc_rst_gla_large_adc_overload_en ***  adi,fagc-rst-gla-large-adc-overload-enable
	1,		//fagc_rst_gla_large_lmt_overload_en ***  adi,fagc-rst-gla-large-lmt-overload-enable
	0,		//fagc_rst_gla_en_agc_pulled_high_en ***  adi,fagc-rst-gla-en-agc-pulled-high-enable
	0,		//fagc_rst_gla_if_en_agc_pulled_high_mode ***  adi,fagc-rst-gla-if-en-agc-pulled-high-mode
	64,		//fagc_power_measurement_duration_in_state5 ***  adi,fagc-power-measurement-duration-in-state5
	/* RSSI Control */
	1,		//rssi_delay *** adi,rssi-delay
	1000,	//rssi_duration *** adi,rssi-duration
	3,		//rssi_restart_mode *** adi,rssi-restart-mode
	0,		//rssi_unit_is_rx_samples_enable *** adi,rssi-unit-is-rx-samples-enable
	1,		//rssi_wait *** adi,rssi-wait
	/* Aux ADC Control */
	256,	//aux_adc_decimation *** adi,aux-adc-decimation
	40000000UL,	//aux_adc_rate *** adi,aux-adc-rate
	/* AuxDAC Control */
	1,		//aux_dac_manual_mode_enable ***  adi,aux-dac-manual-mode-enable
	0,		//aux_dac1_default_value_mV ***  adi,aux-dac1-default-value-mV
	0,		//aux_dac1_active_in_rx_enable ***  adi,aux-dac1-active-in-rx-enable
	0,		//aux_dac1_active_in_tx_enable ***  adi,aux-dac1-active-in-tx-enable
	0,		//aux_dac1_active_in_alert_enable ***  adi,aux-dac1-active-in-alert-enable
	0,		//aux_dac1_rx_delay_us ***  adi,aux-dac1-rx-delay-us
	0,		//aux_dac1_tx_delay_us ***  adi,aux-dac1-tx-delay-us
	0,		//aux_dac2_default_value_mV ***  adi,aux-dac2-default-value-mV
	0,		//aux_dac2_active_in_rx_enable ***  adi,aux-dac2-active-in-rx-enable
	0,		//aux_dac2_active_in_tx_enable ***  adi,aux-dac2-active-in-tx-enable
	0,		//aux_dac2_active_in_alert_enable ***  adi,aux-dac2-active-in-alert-enable
	0,		//aux_dac2_rx_delay_us ***  adi,aux-dac2-rx-delay-us
	0,		//aux_dac2_tx_delay_us ***  adi,aux-dac2-tx-delay-us
	/* Temperature Sensor Control */
	256,	//temp_sense_decimation *** adi,temp-sense-decimation
	1000,	//temp_sense_measurement_interval_ms *** adi,temp-sense-measurement-interval-ms
	0xCE,	//temp_sense_offset_signed *** adi,temp-sense-offset-signed
	1,		//temp_sense_periodic_measurement_enable *** adi,temp-sense-periodic-measurement-enable
	/* Control Out Setup */
	0xFF,	//ctrl_outs_enable_mask *** adi,ctrl-outs-enable-mask
	0,		//ctrl_outs_index *** adi,ctrl-outs-index
	/* External LNA Control */
	0,		//elna_settling_delay_ns *** adi,elna-settling-delay-ns
	0,		//elna_gain_mdB *** adi,elna-gain-mdB
	0,		//elna_bypass_loss_mdB *** adi,elna-bypass-loss-mdB
	0,		//elna_rx1_gpo0_control_enable *** adi,elna-rx1-gpo0-control-enable
	0,		//elna_rx2_gpo1_control_enable *** adi,elna-rx2-gpo1-control-enable
	0,		//elna_gaintable_all_index_enable *** adi,elna-gaintable-all-index-enable
	/* Digital Interface Control */
	0,		//digital_interface_tune_skip_mode *** adi,digital-interface-tune-skip-mode
	0,		//digital_interface_tune_fir_disable *** adi,digital-interface-tune-fir-disable
	1,		//pp_tx_swap_enable *** adi,pp-tx-swap-enable
	1,		//pp_rx_swap_enable *** adi,pp-rx-swap-enable
	0,		//tx_channel_swap_enable *** adi,tx-channel-swap-enable
	0,		//rx_channel_swap_enable *** adi,rx-channel-swap-enable
	1,		//rx_frame_pulse_mode_enable *** adi,rx-frame-pulse-mode-enable
	0,		//two_t_two_r_timing_enable *** adi,2t2r-timing-enable
	0,		//invert_data_bus_enable *** adi,invert-data-bus-enable
	0,		//invert_data_clk_enable *** adi,invert-data-clk-enable
	0,		//fdd_alt_word_order_enable *** adi,fdd-alt-word-order-enable
	0,		//invert_rx_frame_enable *** adi,invert-rx-frame-enable
	0,		//fdd_rx_rate_2tx_enable *** adi,fdd-rx-rate-2tx-enable
	0,		//swap_ports_enable *** adi,swap-ports-enable
	0,		//single_data_rate_enable *** adi,single-data-rate-enable
	1,		//lvds_mode_enable *** adi,lvds-mode-enable
	0,		//half_duplex_mode_enable *** adi,half-duplex-mode-enable
	0,		//single_port_mode_enable *** adi,single-port-mode-enable
	0,		//full_port_enable *** adi,full-port-enable
	0,		//full_duplex_swap_bits_enable *** adi,full-duplex-swap-bits-enable
	0,		//delay_rx_data *** adi,delay-rx-data
	0,		//rx_data_clock_delay *** adi,rx-data-clock-delay
	4,		//rx_data_delay *** adi,rx-data-delay
	7,		//tx_fb_clock_delay *** adi,tx-fb-clock-delay
	0,		//tx_data_delay *** adi,tx-data-delay
#ifdef ALTERA_PLATFORM
	300,	//lvds_bias_mV *** adi,lvds-bias-mV
#else
	150,	//lvds_bias_mV *** adi,lvds-bias-mV
#endif
	1,		//lvds_rx_onchip_termination_enable *** adi,lvds-rx-onchip-termination-enable
	0,		//rx1rx2_phase_inversion_en *** adi,rx1-rx2-phase-inversion-enable
	0xFF,	//lvds_invert1_control *** adi,lvds-invert1-control
	0x0F,	//lvds_invert2_control *** adi,lvds-invert2-control
	/* GPO Control */
	0,		//gpo0_inactive_state_high_enable *** adi,gpo0-inactive-state-high-enable
	0,		//gpo1_inactive_state_high_enable *** adi,gpo1-inactive-state-high-enable
	0,		//gpo2_inactive_state_high_enable *** adi,gpo2-inactive-state-high-enable
	0,		//gpo3_inactive_state_high_enable *** adi,gpo3-inactive-state-high-enable
	0,		//gpo0_slave_rx_enable *** adi,gpo0-slave-rx-enable
	0,		//gpo0_slave_tx_enable *** adi,gpo0-slave-tx-enable
	0,		//gpo1_slave_rx_enable *** adi,gpo1-slave-rx-enable
	0,		//gpo1_slave_tx_enable *** adi,gpo1-slave-tx-enable
	0,		//gpo2_slave_rx_enable *** adi,gpo2-slave-rx-enable
	0,		//gpo2_slave_tx_enable *** adi,gpo2-slave-tx-enable
	0,		//gpo3_slave_rx_enable *** adi,gpo3-slave-rx-enable
	0,		//gpo3_slave_tx_enable *** adi,gpo3-slave-tx-enable
	0,		//gpo0_rx_delay_us *** adi,gpo0-rx-delay-us
	0,		//gpo0_tx_delay_us *** adi,gpo0-tx-delay-us
	0,		//gpo1_rx_delay_us *** adi,gpo1-rx-delay-us
	0,		//gpo1_tx_delay_us *** adi,gpo1-tx-delay-us
	0,		//gpo2_rx_delay_us *** adi,gpo2-rx-delay-us
	0,		//gpo2_tx_delay_us *** adi,gpo2-tx-delay-us
	0,		//gpo3_rx_delay_us *** adi,gpo3-rx-delay-us
	0,		//gpo3_tx_delay_us *** adi,gpo3-tx-delay-us
	/* Tx Monitor Control */
	37000,	//low_high_gain_threshold_mdB *** adi,txmon-low-high-thresh
	0,		//low_gain_dB *** adi,txmon-low-gain
	24,		//high_gain_dB *** adi,txmon-high-gain
	0,		//tx_mon_track_en *** adi,txmon-dc-tracking-enable
	0,		//one_shot_mode_en *** adi,txmon-one-shot-mode-enable
	511,	//tx_mon_delay *** adi,txmon-delay
	8192,	//tx_mon_duration *** adi,txmon-duration
	2,		//tx1_mon_front_end_gain *** adi,txmon-1-front-end-gain
	2,		//tx2_mon_front_end_gain *** adi,txmon-2-front-end-gain
	48,		//tx1_mon_lo_cm *** adi,txmon-1-lo-cm
	48,		//tx2_mon_lo_cm *** adi,txmon-2-lo-cm
	/* GPIO definitions */
	-1,		//gpio_resetb *** reset-gpios
	/* MCS Sync */
	-1,		//gpio_sync *** sync-gpios
	-1,		//gpio_cal_sw1 *** cal-sw1-gpios
	-1,		//gpio_cal_sw2 *** cal-sw2-gpios
	/* External LO clocks */
	NULL,	//(*ad9361_rfpll_ext_recalc_rate)()
	NULL,	//(*ad9361_rfpll_ext_round_rate)()
	NULL	//(*ad9361_rfpll_ext_set_rate)()
};

AD9361_RXFIRConfig rx_fir_config = {	// BPF PASSBAND 3/20 fs to 1/4 fs (4.6 MHz to 7.68MHz)
	3, // rx
	0, // rx_gain
	1, // rx_dec
	{-4, -6, -37, 35, 186, 86, -284, -315,
	 107, 219, -4, 271, 558, -307, -1182, -356,
	 658, 157, 207, 1648, 790, -2525, -2553, 748,
	 865, -476, 3737, 6560, -3583, -14731, -5278, 14819,
	 14819, -5278, -14731, -3583, 6560, 3737, -476, 865,
	 748, -2553, -2525, 790, 1648, 207, 157, 658,
	 -356, -1182, -307, 558, 271, -4, 219, 107,
	 -315, -284, 86, 186, 35, -37, -6, -4,
	 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0}, // rx_coef[128]
	 64, // rx_coef_size
	 {0, 0, 0, 0, 0, 0}, //rx_path_clks[6]
	 0 // rx_bandwidth
};

AD9361_TXFIRConfig tx_fir_config = {	// BPF PASSBAND 3/20 fs to 1/4 fs
	3, // tx
	-6, // tx_gain
	1, // tx_int
	{-4, -6, -37, 35, 186, 86, -284, -315,
	 107, 219, -4, 271, 558, -307, -1182, -356,
	 658, 157, 207, 1648, 790, -2525, -2553, 748,
	 865, -476, 3737, 6560, -3583, -14731, -5278, 14819,
	 14819, -5278, -14731, -3583, 6560, 3737, -476, 865,
	 748, -2553, -2525, 790, 1648, 207, 157, 658,
	 -356, -1182, -307, 558, 271, -4, 219, 107,
	 -315, -284, 86, 186, 35, -37, -6, -4,
	 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0,
	 0, 0, 0, 0, 0, 0, 0, 0}, // tx_coef[128]
	 64, // tx_coef_size
	 {0, 0, 0, 0, 0, 0}, // tx_path_clks[6]
	 0 // tx_bandwidth
};
struct ad9361_rf_phy *ad9361_phy;
#ifdef FMCOMMS5
struct ad9361_rf_phy *ad9361_phy_b;
#endif


// convert the output of ADC to analog input (1.25 pk-pk)
float adc_convert(uint32_t adc_val){
	float ret;
	int curr_val;
	// ADC value is in 2's complement, anything greater or equal to 2^11 is a negative number
	// - 2048 =
	curr_val = (adc_val >= 2048) ? (adc_val - 4096) : adc_val;
	ret = (float)curr_val *ADC_PK / (float)2048 ;
	return  ret;

}

uint16_t float2fixed(float val){
	float temp;
	int temp_res;
	uint16_t res;
	temp = val * pow(2, 15);
	if (temp < -pow(2,15)){
		temp_res = -32768;
	}else if (temp > pow(2,15)-1){
		temp_res = 32767;
	}else{
		temp_res = (int)(round(temp));
	}
	if  (temp_res < 0){
		temp_res = temp_res + 65536;
	}
	res = (uint16_t)temp_res;
	return res;
}
char* MOD_TYPES[] = {
	"8PSK",		//0
	"AM",
	"BPSK",
	"CPFSK",
	"GFSK",
	"PAM4",
	"QAM16",
	"QAM64",
	"QPSK",
	"FM"
};

/***************************************************************************//**
 * @brief main
*******************************************************************************/
int main(void)
{
#ifdef XILINX_PLATFORM
	Xil_ICacheEnable();
	Xil_DCacheEnable();
#endif

#ifdef ALTERA_PLATFORM
	if (altera_bridge_init()) {
		printf("Altera Bridge Init Error!\n");
		return -1;
	}
#endif

	// NOTE: The user has to choose the GPIO numbers according to desired
	// carrier board.
	default_init_param.gpio_resetb = GPIO_RESET_PIN;
#ifdef FMCOMMS5
	default_init_param.gpio_sync = GPIO_SYNC_PIN;
	default_init_param.gpio_cal_sw1 = GPIO_CAL_SW1_PIN;
	default_init_param.gpio_cal_sw2 = GPIO_CAL_SW2_PIN;
	default_init_param.rx1rx2_phase_inversion_en = 1;
#else
	default_init_param.gpio_sync = -1;
	default_init_param.gpio_cal_sw1 = -1;
	default_init_param.gpio_cal_sw2 = -1;
#endif

#ifdef LINUX_PLATFORM
	gpio_init(default_init_param.gpio_resetb);
#else
	gpio_init(GPIO_DEVICE_ID);
#endif
	gpio_direction(default_init_param.gpio_resetb, 1);

	spi_init(SPI_DEVICE_ID, 1, 0);

	if (AD9364_DEVICE)
		default_init_param.dev_sel = ID_AD9364;
	if (AD9363A_DEVICE)
		default_init_param.dev_sel = ID_AD9363A;

#if defined FMCOMMS5 || defined PICOZED_SDR || defined PICOZED_SDR_CMOS
	default_init_param.xo_disable_use_ext_refclk_enable = 1;
#endif

#ifdef PICOZED_SDR_CMOS
	default_init_param.swap_ports_enable = 1;
	default_init_param.lvds_mode_enable = 0;
	default_init_param.lvds_rx_onchip_termination_enable = 0;
	default_init_param.full_port_enable = 1;
	default_init_param.digital_interface_tune_fir_disable = 1;
#endif

	ad9361_init(&ad9361_phy, &default_init_param);

	ad9361_set_tx_fir_config(ad9361_phy, tx_fir_config);
	ad9361_set_rx_fir_config(ad9361_phy, rx_fir_config);

#ifdef FMCOMMS5
#ifdef LINUX_PLATFORM
	gpio_init(default_init_param.gpio_sync);
#endif
	gpio_direction(default_init_param.gpio_sync, 1);
	default_init_param.id_no = 1;
	default_init_param.gpio_resetb = GPIO_RESET_PIN_2;
#ifdef LINUX_PLATFORM
	gpio_init(default_init_param.gpio_resetb);
#endif
	default_init_param.gpio_sync = -1;
	default_init_param.gpio_cal_sw1 = -1;
	default_init_param.gpio_cal_sw2 = -1;
	default_init_param.rx_synthesizer_frequency_hz = 2300000000UL;
	default_init_param.tx_synthesizer_frequency_hz = 2300000000UL;
	gpio_direction(default_init_param.gpio_resetb, 1);
	ad9361_init(&ad9361_phy_b, &default_init_param);

	ad9361_set_tx_fir_config(ad9361_phy_b, tx_fir_config);
	ad9361_set_rx_fir_config(ad9361_phy_b, rx_fir_config);
#endif

#ifndef AXI_ADC_NOT_PRESENT
#if defined XILINX_PLATFORM || defined LINUX_PLATFORM || defined ALTERA_PLATFORM
#ifdef DAC_DMA
#ifdef FMCOMMS5
	dac_init(ad9361_phy_b, DATA_SEL_DMA, 0);
#endif
	dac_init(ad9361_phy, DATA_SEL_DMA, 1);
#else
#ifdef FMCOMMS5
	dac_init(ad9361_phy_b, DATA_SEL_DDS, 0);
#endif
	dac_init(ad9361_phy, DATA_SEL_DDS, 1);
#endif
#endif
#endif

#ifdef FMCOMMS5
	ad9361_do_mcs(ad9361_phy, ad9361_phy_b);
#endif

#ifndef AXI_ADC_NOT_PRESENT
#if (defined XILINX_PLATFORM || defined ALTERA_PLATFORM) && defined CAPTURE_SCRIPT
    // NOTE: To prevent unwanted data loss, it's recommended to invalidate
    // cache after each adc_capture() call, keeping in mind that the
    // size of the capture and the start address must be alinged to the size
    // of the cache line.
	mdelay(1000);
	adc_capture(16384, ADC_DDR_BASEADDR);
#ifdef XILINX_PLATFORM
    Xil_DCacheInvalidateRange(ADC_DDR_BASEADDR, 16384);
#endif
#endif
#endif



	int i, j, k, m;	// scratch variable
	unsigned int num_correct;
	uint32_t sample_I, sample_Q;
	float scaled_sample[NUM_SAMPLES][2];
	// uint32_t scaled_sample[16384][2];
	unsigned int counter[10];
	uint32_t data;
	uint32_t maia_fpga_res;
	int samp;
	float energy;

	// int data;
	uint8_t en_dis;
	uint32_t rx_bw;
	uint16_t data_i1, data_q1;
	unsigned int res;
	uint32_t sampling_freq;
	unsigned int * addr;
	unsigned int maia_sample[NUM_SAMPLES];
	int final_res;
	samp = 154;

	int data_count = 0;
	int mac_ready = 0;
	int prev_data_count;
	int fifo_data_count_rd = 0;
	int largest_val = 0;
	int largest_freq = 0;
	uint32_t c, ctrl;
	XTime tStart, tEnd;

	// init_platform();
	//samp = 1;
	printf("Done.\n");

	// ad9361_get_rx_sampling_freq(ad9361_phy,&sampling_freq);
	// printf("Sampling rate: %u\n", sampling_freq);
	// ad9361_get_rx_lo_freq(ad9361_phy,&sampling_freq);
	// printf("LO: %u\n", sampling_freq);
#ifdef CALIBRATE
	ad9361_set_en_state_machine_mode(ad9361_phy, ENSM_MODE_ALERT);
    ad9361_set_en_state_machine_mode(ad9361_phy, ENSM_MODE_TX);

    printf("Transmitting!\n");
    // TRANSMISSION CODE TO CALIBRATE LO
    while(1){
    	for (i = 0 ; i < 128; i++){
			data_i1 = 1 << 20;
			data_q1 = 0 << 4;
			Xil_Out32(DAC_DDR_BASEADDR + i * 4, data_i1 | data_q1);
    	}
    }
#else
	ad9361_set_en_state_machine_mode(ad9361_phy, ENSM_MODE_ALERT);
    ad9361_set_en_state_machine_mode(ad9361_phy, ENSM_MODE_RX);

	while(1){

		// STEP 1: capture data
		adc_capture(32768, ADC_DDR_BASEADDR);
		Xil_DCacheInvalidateRange(ADC_DDR_BASEADDR, 32768*4);
		// CHECK VALUES OF ADC CAPTURE!!!!!
		for (i = 0 ; i < samp*NUM_SAMPLES; i+=samp){
			data = Xil_In32(ADC_DDR_BASEADDR + (i*4));
			sample_Q = ((data)&0xFFFF) >> 4;
			sample_I = ((data >> 16)&0xFFFF) >> 4;
			scaled_sample[i/samp][0] = adc_convert(sample_I);
			scaled_sample[i/samp][1] = adc_convert(sample_Q);
			maia_sample[i/samp] = (float2fixed(scaled_sample[i/samp][0]) << 16) | (float2fixed(scaled_sample[i/samp][1]));
		}

		for (k = 0; k < NUM_SAMPLES; k++){
			printf("%d:%f:%f\n", k, scaled_sample[k][0], scaled_sample[k][1]);
		}

		prev_data_count = 0;
		for (i = 0 ; i < NUM_SAMPLES; i++){
			Xil_Out32(XPAR_MW_0_S_AXI_CTRL_OUT_BASEADDR, maia_sample[i]);
			do{
				c = Xil_In32(XPAR_MW_0_S_AXI_CTRL_OUT_BASEADDR + 8);
				prev_data_count = data_count;
				data_count = c & FIFO_DATA_COUNT;
				fifo_data_count_rd = (c & FIFO_DATA_COUNT_RD) >> 10;
			}while (data_count == prev_data_count);
		}
		mac_ready = 0;
		while (!mac_ready){
			data = Xil_In32(XPAR_MW_0_S_AXI_CTRL_OUT_BASEADDR + 4);
			c = Xil_In32(XPAR_MW_0_S_AXI_CTRL_OUT_BASEADDR + 8);
			mac_ready = (c & MAC_READY) >> 8;
			data_count = c & FIFO_DATA_COUNT;
			fifo_data_count_rd = (c & FIFO_DATA_COUNT_RD) >> 10;
		}

		data = Xil_In32(XPAR_MW_0_S_AXI_CTRL_OUT_BASEADDR + 4);
		printf("128:%s:%d\n", MOD_TYPES[data], data);
		ctrl |= FIFO_CLR;
		Xil_Out32(XPAR_MW_0_S_AXI_CTRL_OUT_BASEADDR+12, ctrl);
		ctrl &= ~FIFO_CLR;
		Xil_Out32(XPAR_MW_0_S_AXI_CTRL_OUT_BASEADDR+12, ctrl);


	}





#endif
#ifdef XILINX_PLATFORM
	Xil_DCacheDisable();
	Xil_ICacheDisable();
#endif

#ifdef ALTERA_PLATFORM
	if (altera_bridge_uninit()) {
		printf("Altera Bridge Uninit Error!\n");
		return -1;
	}
#endif
	printf("Finish running analysis\r\n");

	return 0;
}
