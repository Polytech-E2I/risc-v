            ### TEST VALUES ###
main:       addi a0, zero, 4
            addi a1, zero, 3
            ### FUNCTION TO TEST ###
            jal  ra, puis_ite
            ### PAUSE FOR SIMULATION ###
            addi zero, zero, 0

            # a0 <> n, a1 <> x
puis_ite:   addi t0, zero, 1        # t0 <> res = 1
            addi t1, zero, 0        # t1 <> i = 0
            #bge  t1, a0, loopend   # i < n
            beq  zero, a0, loopend  # i < n

loop:       mul  t0, t0, a1         # res = res * x
            addi t1, t1, 1          # ++i
            blt  t1, a0, loop

loopend:    addi a0, t0, 0
            jalr zero, ra, 0