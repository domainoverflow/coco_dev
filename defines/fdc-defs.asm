; fdc-defs.asm

                        *pragmapush list    ; Save state of list pragma
                        pragma nolist       ; Turn off assembly listing and exclude from symbol list
                        ifndef FDC_DEFS     ; Load defines only once


; Floppy Disk Controller (Western Digital 1793)
FDC_CTRL                equ $ff40            ; Floppy disk controller control register (Write Only)
                                             ; Bit 7 - Halt flag: 0=disabled, 1=enabled
                                             ; Bit 6 - Drive select 3
                                             ; Bit 5 - Density flag: 0=single, 1=double
                                             ; Bit 4 - Write precompensation: 0=no precomp, 1=precomp
                                             ; Bit 3 - Drive motor enable: 0=motors off, 1=motors on
                                             ; Bit 2 - Drive select 2
                                             ; Bit 1 - Drive select 1
                                             ; Bit 0 - Drive select 0
FDC_COMMAND             equ $ff48            ; Floppy command/status register
FDC_TRACK               equ $ff49            ; Floppy disk controller track register
FDC_SECTOR              equ $ff4a            ; Floppy disk controller sector register
FDC_DATA                equ $ff4b            ; Floppy disk controller data register


; FDC control register bits at $ff40 (FDC_CTRL)
FDC_CR_HALT            equ %10000000
FDC_CR_DRIVE3          equ %01000000
FDC_CR_DENSITY         equ %00100000
FDC_CR_WRITE           equ %00010000
FDC_CR_MOTOR           equ %00001000
FDC_CR_DRIVE2          equ %00000100
FDC_CR_DRIVE1          equ %00000010
FDC_CR_DRIVE0          equ %00000001


FDC_DEFS                equ 1               ; Set flag for defines being loaded
                        endc
                        *pragmapop list     ; restore assembly listing to previous state