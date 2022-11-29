            ### TEST VALUES ###
main:       addi a0, zero, 4
            addi a1, zero, 3
            ### FUNCTION TO TEST ###
            jal  ra, puis_rec
            ### PAUSE FOR SIMULATION ###
            addi zero, zero, 0

            # a0 <> n, a1 <> x
puis_rec:   addi sp, sp, -4         # Stack frame : 4 for ra
            sw   ra, 0(sp)          # Save return address
            beq  a0, zero, ret_one  # Exit condition
            addi a0, a0, -1         # n <= n-1
            jal  ra, puis_rec

            mul  a0, a0, a1         # x * puis_rec(x, n-1)
            jal  zero, done

ret_one:    addi a0, zero, 1

done:       lw   ra, 0(sp)
            addi sp, sp, 4
            jalr zero, ra, 0