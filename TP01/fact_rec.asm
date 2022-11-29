        ### TEST VALUES ###
        addi a0, zero, 5
        ### FUNCTION TO TEST ###
        jal  ra, fact
        ### PAUSE FOR SIMULATION ###
        addi zero, zero, 0

fact:   # arg: n in a0, returns n! in a1
        addi    sp, sp, -8      # reserve our stack area
        sw      ra, 0(sp)       # save the return address
        addi    t0,zero,2
        blt     a0, t0, ret_one # 0! and 1! == 1
        sw      a0, 4(sp)       # save our n
        addi    a0, a0, -1
        jal     ra, fact        # call fact (n-1)
                                # a1 <- fact(n-1)
        lw      t0, 4(sp)       # t0 <- n
        mul     a1, t0, a1      # a1 <- n * fact(n-1)
        jal     zero, done
ret_one:
        addi    a1,zero,1
done:
        lw      ra, 0(sp)       # restore return address from stack
        addi    sp, sp, 8       # free our stack frame
        jr      ra              # and return