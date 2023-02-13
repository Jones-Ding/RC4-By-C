#include "RC4.h"
#include <malloc.h>

static char IS_INIT = 0;
static unsigned char
	*temp = NULL,
	*output = NULL,
	*key = NULL,
	*sbox = NULL;

void initializationRC4(int srcSize, int pwdSize)
{
	if (srcSize == 0 || pwdSize == 0)
		return;

	temp = (char *)malloc(128 * sizeof(char));
	key = (char *)malloc(256 * sizeof(char));
	sbox = (char *)malloc(256 * sizeof(char));
	output = (char *)malloc(srcSize * sizeof(char));
	IS_INIT = 1;
}

void freeRC4Source()
{
	if (IS_INIT == 0)
		return;

	free(key);key = NULL;
	free(sbox);sbox = NULL;
	free(temp);temp = NULL;
	free(output);output = NULL;

	IS_INIT = 0;
}

char *getOutputStreamPointer()
{
	return output;
}

char *RC4_Encrypt(char *src, short srcSize, char *passwd, short pwdSize)
{
	if (IS_INIT == 0)
		initializationRC4(srcSize, pwdSize);

	// generate key box
	for (int i = 0; i < 256; i++)
	{
		key[i] = (int)passwd[i % pwdSize];
		sbox[i] = i;
	}

	int j = 0;
	for (int i = 0; i < 256; i++)
	{
		j = (j + sbox[i] + key[i]) % 256;
		_itoa(sbox[i], temp, 10);
		sbox[i] = sbox[j];
		sbox[j] = atoi(temp);
	}

	int a = 0, b = 0, c = 0;
	for (int i = 0; i < srcSize; i++)
	{
		a = (a + 1) % 256;
		b = (b + sbox[a]) % 256;
		_itoa(sbox[a], temp, 10);
		sbox[a] = sbox[b];
		sbox[b] = atoi(temp);
		c = (sbox[a] + sbox[b]) % 256;
		output[i] = src[i] ^ sbox[c];
	}

	return output;
}