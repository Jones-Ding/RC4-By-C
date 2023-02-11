#if __linux__
#include <assert.h>



char* _itoa(int value, char* str, int radix) {
	static char dig[] =
		"0123456789"
		"abcdefghijklmnopqrstuvwxyz";
	int n = 0, neg = 0;
	unsigned int v;
	char* p, * q;
	char c;
	if (radix == 10 && value < 0) {
		value = -value;
		neg = 1;
	}
	v = value;
	do {
		str[n++] = dig[v % radix];
		v /= radix;
	} while (v);
	if (neg)
		str[n++] = '-';
	str[n] = '\0';
	for (p = str, q = p + (n - 1); p < q; ++p, --q)
		c = *p, * p = *q, * q = c;
	return str;
}

int atoi(const char* str)
{
	int result = 0;
	int sign = 0;
	assert(str != NULL);
	// proc whitespace characters
	while (*str == ' ' || *str == '\t' || *str == '\n')
		++str;

	// proc sign character
	if (*str == '-')
	{
		sign = 1;
		++str;
	}
	else if (*str == '+')
	{
		++str;
	}

	// proc numbers
	while (*str >= '0' && *str <= '9')
	{
		result = result * 10 + *str - '0';
		++str;
	}

	// return result
	if (sign == 1)
		return -result;
	else
		return result;
}

#endif