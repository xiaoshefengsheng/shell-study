#!/bin/bash
#加密工具及散列,crypt,gpg,base64,md5sum,shasum以及openssl的用法
#crypt是一个简单的加密工具，从标准输入接受一个文件及口令作为输入，然后数据输出到标注输出，对输入输出使用重定向。
#crypt PASSPHRASE < input_file > encrypted_file  #对输入文件加密后重定向为一个文件
#crypt PASSPHRASE -d < encrypted_file> output_file  #对需要解密的文件重定向为一个新文件

#gpg是一种广泛的工具，它使用加密技术保护文件，确保数据在到达目的地之前无法被读取
#gpg -c filename  #加密一个文件,交互的方式输入口令，生成filename.gpg,-c 可理解为创建
#gpg filename.gpg #解密该加密文件，以交互的方式输入口令

#base64是一组相似的编码方案，他将ascii转换为64位基数的形式，以可读的ascii字符串来描述二进制数据，base64用来编码/解码base64字符串
#base64 filename >outputfile   #编码为base64格式
#cat file | base64 >outputfile

#解码base64数据
base64 -d file > outputfile
cat base64_file |base64 -d >outputfile

#md5sum 和 sha1sum都是单向散列算法，均无法逆推出原数据，通常用于验证数据完整性或为特定数据生成唯一的秘钥。
#如openldap创建了用户密码后，就计算为sha1值存储，当用户进行密码验证时，再次计算，就可以对比是否一致了，不一致则拒绝，但是现在计算机计算力提升，该方式已不太安全。

#shadow-like散列（salt散列），linux中，密码文件就是以散列形式存储在/etc/shadow中的。下面为openssl生成散列命令
#opensslpasswd -l -salt SALT_STRING PASSWORD  #SALT_STRING是一个随机字符串，自定义即可。 PASSWORD是自己要使用的密码。


