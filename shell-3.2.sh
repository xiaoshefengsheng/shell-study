#!/bin/bash
#生成任意大小的文件，首先谨记linux中一切皆文件
#生成特定大小的大文件，可以使用dd命令,if为输入文件，of为输出文件，bs代表块大小，支持各种计量单位，如c字节,w字,块512B,千字节1024B,兆字节1024KB,吉字节1024MB
dd if=/dev/zero of=/tmp/test.data bs=1M count 
#if无，则从标准输入读取，of无，则从标准输出,/dev/zero为底层设备命令，会输出\0字符，0值字节。
