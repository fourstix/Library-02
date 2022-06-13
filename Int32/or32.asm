#include      ../macros.inc

; ************************************************
; ***** 32-bit Or.  expr stack               *****
; ***** Numbers in memory stored LSB first   *****
; ************************************************
              proc     or32

              inc      r7                ; point to second number
              glo      r7                ; copy address to rf
              plo      rf
              ghi      r7
              phi      rf
              inc      rf                ; point rf to first number
              inc      rf
              inc      rf
              inc      rf
              sex      rf                ; point X to destination
              lda      r7                ; get byte 1
              or                         ; and with first number
              str      rf                ; store
              inc      rf                ; point to byte 2
              lda      r7                ; get byte 2
              or                         ; and with first number
              str      rf                ; store
              inc      rf                ; point to byte 3
              lda      r7                ; get byte 3
              or                         ; and with first number
              str      rf                ; store
              inc      rf                ; point to byte 4
              ldn      r7                ; get byte 7
              or                         ; and with first number
              str      rf                ; store
              sex      r2                ; Set x back to R2
              rtn                        ; return to caller

              endp

