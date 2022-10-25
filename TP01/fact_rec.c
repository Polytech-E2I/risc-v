int fact_rec(int n)
{
    if (n < 2)
        return 1;
    else
        return (n * fact_rec(n - 1));
}