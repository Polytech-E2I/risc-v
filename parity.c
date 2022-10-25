typedef int uint32_t;

uint32_t Pair(uint32_t);
uint32_t Impair(uint32_t);

int main()
{
    uint32_t n = 5, res;

    res = Pair(n);
}

uint32_t Pair(uint32_t n)
{
    if(n == 0)
        return 1;
    else
        return Impair(n - 1);
}

uint32_t Impair(uint32_t n)
{
    if(n == 0)
        return 0;
    else
        return Pair(n - 1);
}