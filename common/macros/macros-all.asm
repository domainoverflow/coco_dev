; macros-all.asm
                    *pragmapush list        ; Save state of list pragma
                    pragma nolist           ; Turn off assembly listing and exclude from symbol list
                    ifndef MACROS_ALL_LOADED    ; Load macros only once


                    include boomerang.asm
                    include clear-instructions.asm
                    include fdc.asm
                    include hardware.asm
                    include register-cc.asm
                    include shifts.asm
                    include optimizations.asm
                    include test-instructions.asm
                    include comments.asm


MACROS_ALL_LOADED   equ 1                   ; Set flag for macros being loaded
                    endc

                    *pragmapop list         ; restore assembly listing to previous state
