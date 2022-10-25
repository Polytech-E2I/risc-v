int fact_ite(int n)
{
    int i, res = 1;
    for (i = 2; i <= n; i++)
        res *= i;
    return res;
}