fact_ite(int):
        add     a4,zero,a0  # a4 = n
        addi    a5,zero,2   # a5 = i = 2
        addi    a0,zero,1   # a0 = res = 1
condition:
        ble     a5,a4,for   # if(i <= n) goto for
        ret                 # else return
for:
        mul     a0,a0,a5    # res = res * i
        addi    a5,a5,1     # i = i + 1
        j       condition   # goto condition