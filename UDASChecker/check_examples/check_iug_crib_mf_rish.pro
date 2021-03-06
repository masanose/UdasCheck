;+
;PROCEDURE: IUG_CRIB_MF_RISH.PRO
;    A sample crib sheet that explains how to use the "iug_crib_mf_rish.pro" 
;    procedure. You can run this crib sheet by copying & pasting each 
;    command below (except for stop and end) into the IDL command line. 
;    Or alternatively compile and run using the command:
;        .run iug_crib_mf_rish
;
;Written by: A. Shinbori,  Jul 25, 2012
;Last Updated:  A. Shinbori,  Jul 25, 2012
;-

;Initializes system variables for themis:
;=========================================
thm_init
time_stamp, /off

;Specify timespan:
;=================
timespan,'2008-03-01',31,/day


;Load all the data of zonal, meridional and vertical wind velocities
;at Pameungpeuk for the selected parameter in timespan:
;Tplot parameters are 'iug_mf_pam_uwnd', 'iug_mf_pam_vwnd',
; 'iug_mf_pam_wwnd':
;  
;  uwnd = zonal wind:
;  vwnd = meridional wind
;  wwnd = vertical wind
;  
;===============================================================================
iug_load_mf_rish


;Plot time-height distribution of zonal, merdional and vertical wind:
;====================================================================
tplot,['iug_mf_pam_uwnd','iug_mf_pam_vwnd','iug_mf_pam_wwnd']

;Change in the y-range (altitude):
;=================================
ylim, 'iug_mf_pam_uwnd', 50, 100
ylim, 'iug_mf_pam_vwnd', 50, 100
ylim, 'iug_mf_pam_wwnd', 50, 100

;Change in the z-range (color bar scale):
;========================================
zlim, 'iug_mf_pam_uwnd', -100, 100
zlim, 'iug_mf_pam_vwnd', -100, 100
zlim, 'iug_mf_pam_wwnd', -10, 10

tplot

makepng, 'iug_crib_mf_rish_001'

;stop


; Set up the plot time range of zonal and meridional winds in the thermosphere:
;===============================================================================
tlimit, '2008-03-01 00:00:00', '2008-03-05 00:00:00'
tplot

makepng, 'iug_crib_mf_rish_002'

end


