;+
;PROCEDURE: IUG_CRIB_HF_TOHOKUU
;    A crib sheet to demonstrate how to deal with data from
;    Low Frequency Radio Transmitter Observation (LFRTO) using udas.
;    You can run this crib sheet by copying&pasting each command
;    below into the IDL command line. 
;    Or alternatively compile and run using the command:
;        .run iug_crib_lfrto
;
; Written by: M. Yagi, Jan 20, 2013 
; Last Update: M. Yagi, Feb 20, 2013
;-

;Initialize
thm_init 

;Specify the time span.
timespan, '2004-01-09'

;Load LFRTO data
iug_load_hf_tohokuu

; View the loaded data names
tplot_names

; Plot the loaded data
tplot,['iug_iit_hf_rh','iug_itt_hf_lh']

; Stop
print,'Enter ".c" to continue.'

makepng, 'iug_crib_hf_tohokuu_001'

;stop

; Plot the loaded data with 'trange' option
tplot,['iug_iit_hf_rh','iug_itt_hf_lh'],trange=['2004-01-09/22:00:00','2004-01-09/23:00:00']

makepng, 'iug_crib_hf_tohokuu_002'

end
