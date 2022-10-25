fact_rec(int):
        add     a5,zero,a0      # a5 = n
        addi    a4,zero,1       # will be used for "<= 1" instead of "< 2"
        addi    a0,zero,1       # a0 = <return value>
condition:
        ble     a5,a4,return    # if(n < 2) [aka if(n <= 1)] goto return
        mul     a0,a0,a5        # else <return value>  = <return value> * n
        addi    a5,a5,-1        # n = n - 1
        j       condition       # goto condition
return:
        ret                     # return