            ### TEST VALUES ###
            addi a0, zero, 5
            addi a1, zero, 3
            ### FUNCTION TO TEST ###
            jal  ra, puis_ite
            ### PAUSE FOR SIMULATION ###
            addi zero, zero, 0

            # a0 <> x, a1 <> n
puis_ite:   addi t0, zero, 1        # t0 <> res = 1
            addi t1, zero, 0        # t1 <> i = 0
            #bge  t1, a1, loopend   # i < n
            beq  zero, a1, loopend  # i < n

loop:       mul  t0, t0, a0         # res = res * x
            addi t1, t1, 1          # ++i
            blt  t1, a1, loop

loopend:    addi a0, t0, 0
            jalr zero, ra, 0