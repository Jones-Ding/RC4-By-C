#pragma once
#if _MSC_VER
#define RC4API __declspec(dllexport)
#endif

/// <summary>
/// 初始化RC4加解密资源空间
/// </summary>
/// <param name="srcSize"></param>
/// <param name="pwdSize"></param>
RC4API void initializationRC4(int srcSize, int pwdSize);

/// <summary>
/// 释放RC4占用的空间资源
/// </summary>
/// <returns></returns>
RC4API void freeRC4Source();

/// <summary>
/// 获取输出流地址
/// </summary>
/// <returns>输出流地址</returns>
RC4API char* getOutputStreamPointer();

/// <summary>
/// 执行RC4加解密运算
/// </summary>
/// <param name="src">输入流初始值(Hex)</param>
/// <param name="srcSize">输入流所占字节大小</param>
/// <param name="passwd">密钥值</param>
/// <param name="pwdSize">密钥值所占字节大小</param>
/// <returns>输出流地址</returns>
RC4API char* RC4_Encrypt(char* src, short srcSize, char* passwd, short pwdSize);
