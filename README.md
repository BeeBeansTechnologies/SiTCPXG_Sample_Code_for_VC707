Read this in other languages: [English](README.md), [日本語](README.ja.md)

# SiTCPXG_Sample_Code_for_VC707

This is the SiTCPXG sample source code for VC707 communication confirmation.

In this code use the module that converts the interface of AT93C46, used by SiTCPXG, to EEPROM (M24C08) of VC707.

This code also use a module that to operate I2C switch, PCA9548A, loaded on the VC707.

Please check the PDF file (VC707_SiTCP_XG_EEPROM.pdf) for how to use it.


## What is SiTCPXG

Simple TCP/IP implemented with support only for 10GbE on an FPGA (Field Programmable Gate Array) for the purpose of transferring large amounts of data in physics experiments.

* For details, please refer to [SiTCP Library page](https://www.bbtech.co.jp/en/products/sitcp-library/).
* For other related projects, please refer to [here](https://github.com/BeeBeansTechnologies).

![SiTCP](sitcp.png)


## History

#### 2021-12-02 Ver.1.0.2

* Deleted SiTCPXG directory

#### 2021-05-19 Ver.1.0.1

* Added VC707_SiTCP_XG_EEPROM.pdf

#### 2021-04-02 Ver.1.0.0

* First release.
