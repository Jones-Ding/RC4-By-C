#pragma once
#if __GNUC__
#define RC4API __attribute__((visibility("default")))
#else
#define RC4API __declspec(dllexport)
#endif

#if __linux__
char* _itoa(int value, char* str, int radix);
int atoi(const char* str);
#endif


/// <summary>
/// init RC4 source
/// </summary>
/// <param name="srcSize"></param>
/// <param name="pwdSize"></param>
RC4API void initializationRC4(int srcSize, int pwdSize);

/// <summary>
/// dispose RC4 source
/// </summary>
/// <returns></returns>
RC4API void freeRC4Source();

/// <summary>
/// Get output stream
/// </summary>
/// <returns>Pointerַ</returns>
RC4API char* getOutputStreamPointer();

/// <summary>
/// Encrypt RC4
/// </summary>
/// <param name="src">source(Hex)</param>
/// <param name="srcSize">Source size</param>
/// <param name="passwd">Key</param>
/// <param name="pwdSize">Key Size</param>
/// <returns>Output stream</returns>
RC4API char* RC4_Encrypt(char* src, short srcSize, char* passwd, short pwdSize);
