#pragma once
#if __GNUC__
#define RC4API 
#else
#define RC4API __declspec(dllexport)
#endif

/// <summary>
/// ��ʼ��RC4�ӽ�����Դ�ռ�
/// </summary>
/// <param name="srcSize"></param>
/// <param name="pwdSize"></param>
RC4API void initializationRC4(int srcSize, int pwdSize);

/// <summary>
/// �ͷ�RC4ռ�õĿռ���Դ
/// </summary>
/// <returns></returns>
RC4API void freeRC4Source();

/// <summary>
/// ��ȡ�������ַ
/// </summary>
/// <returns>�������ַ</returns>
RC4API char* getOutputStreamPointer();

/// <summary>
/// ִ��RC4�ӽ�������
/// </summary>
/// <param name="src">��������ʼֵ(Hex)</param>
/// <param name="srcSize">��������ռ�ֽڴ�С</param>
/// <param name="passwd">��Կֵ</param>
/// <param name="pwdSize">��Կֵ��ռ�ֽڴ�С</param>
/// <returns>�������ַ</returns>
RC4API char* RC4_Encrypt(char* src, short srcSize, char* passwd, short pwdSize);