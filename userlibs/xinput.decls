.lib "xinput9_1_0.dll"

;----------------------------------
;Title: XINPUT Blitz3D Userlib
;Version: 1.0 @ November 21, 2008
;Author: José Lucio M. Gama "SLotman"
;Website: http://www.icongames.com.br
;----------------------------------
;
;COPYRIGHT NOTICE
;Copyright 2008-2012 José Lucio M.Gama. All Rights Reserved.
;
;This script may be used and modified free of charge by anyone
;AS LONG AS COPYRIGHT NOTICES AND ALL THE COMMENTS REMAIN INTACT.
;By using this code you agree to indemnify José Lucio M. Gama from any
;liability that might arise from it's use.
;
;Selling the code for this program, in part or full, without prior
;written consent is expressly forbidden.
;
;Obtain permission before redistributing this software over the Internet
;or in any other medium. In all cases copyright and header must remain
;intact. This Copyright is in full effect in any country that has
;International Trade Agreements with the United States of America or
;with the European Union.
;-----------------------------------------------------------------------

; DWORD WINAPI XInputGetState
;-------------------------------------------
; DWORD         dwUserIndex,  // [in] Index of the gamer associated with the device
; XINPUT_STATE* pState        // [out] Receives the current state
;
XInputGetState%(dwUserIndex, pState*)

; DWORD WINAPI XInputSetState
;-------------------------------------------
; DWORD             dwUserIndex,  // [in] Index of the gamer associated with the device
; XINPUT_VIBRATION* pVibration    // [in, out] The vibration information To send To the controller
;
XInputSetState%(dwUserIndex, pVibration*)

; DWORD WINAPI XInputGetCapabilities
;--------------------------------------------
; DWORD                dwUserIndex,   // [in] Index of the gamer associated with the device
; DWORD                dwFlags,       // [in] Input flags that identify the device Type
; XINPUT_CAPABILITIES* pCapabilities  // [out] Receives the capabilities
;
XInputGetCapabilities%(dwUserIndex, dwFlags, pCapabilities* )

; void WINAPI XInputEnable
;---------------------------------------------
; BOOL enable     // [in] Indicates whether xinput is enabled Or disabled. 
;
XInputEnable(enable%)

; DWORD WINAPI XInputGetBatteryInformation
;-------------------------------------------
; DWORD                       dwUserIndex,        // [in]  Index of the gamer associated with the device
; BYTE                        devType,            // [in]  Which device on this user index
; XINPUT_BATTERY_INFORMATION* pBatteryInformation // [out] Contains the level And types of batteries
;
XInputGetBatteryInformation%(dwUserIndex, devType, pBatteryInformation*)

; XInputGetKeystroke
;-------------------------------------------
; DWORD dwUserIndex,              // [in]  Index of the gamer associated with the device
; DWORD dwReserved,               // [in]  Reserved For future use
; PXINPUT_KEYSTROKE pKeystroke    // [out] Pointer To an XINPUT_KEYSTROKE structure that receives an Input event.
;
XInputGetKeystroke%( dwUserIndex, dwReserved, pKeystroke*)


; DWORD WINAPI XInputGetDSoundAudioDeviceGuids
;--------------------------------------------
; DWORD dwUserIndex,          // [in] Index of the gamer associated with the device
; GUID* pDSoundRenderGuid,    // [out] DSound device ID For Render
; GUID* pDSoundCaptureGuid    // [out] DSound device ID For capture
;
XInputGetDSoundAudioDeviceGuids%(dwUserIndex, pDSoundRenderGuid*, pDSoundCaptureGuid*) 