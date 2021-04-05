set_property PACKAGE_PIN AK34 [get_ports USER_CLOCK_P]

set_property PACKAGE_PIN AN31 [get_ports USER_SMA_GPIO_P]

set_property IOSTANDARD LVCMOS18 [get_ports CPU_RESET]
set_property PACKAGE_PIN AV40 [get_ports CPU_RESET]
set_property PACKAGE_PIN AP33 [get_ports SFP_TX_DISABLE]
set_property IOSTANDARD LVCMOS18 [get_ports SFP_TX_DISABLE]
set_property PACKAGE_PIN AL6 [get_ports SFP_RX_P]
set_property PACKAGE_PIN AM4 [get_ports SFP_TX_P]
set_property PACKAGE_PIN AK8 [get_ports SMA_MGT_REF_CLK_P]

set_property IOSTANDARD LVCMOS18 [get_ports I2C_SDA]
set_property PACKAGE_PIN AU32 [get_ports I2C_SDA]
set_property IOSTANDARD LVCMOS18 [get_ports I2C_SCL]
set_property PACKAGE_PIN AT35 [get_ports I2C_SCL]

set_property IOSTANDARD LVCMOS18 [get_ports GPIO_SW_S]
set_property PACKAGE_PIN AP40 [get_ports GPIO_SW_S]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_DIP_SW[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_DIP_SW[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_DIP_SW[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_DIP_SW[0]}]
set_property PACKAGE_PIN BA32 [get_ports {GPIO_DIP_SW[3]}]
set_property PACKAGE_PIN BA31 [get_ports {GPIO_DIP_SW[2]}]
set_property PACKAGE_PIN AY33 [get_ports {GPIO_DIP_SW[1]}]
set_property PACKAGE_PIN AV30 [get_ports {GPIO_DIP_SW[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_LED[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_LED[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_LED[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_LED[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_LED[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_LED[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_LED[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_LED[0]}]
set_property PACKAGE_PIN AU39 [get_ports {GPIO_LED[7]}]
set_property PACKAGE_PIN AP42 [get_ports {GPIO_LED[6]}]
set_property PACKAGE_PIN AP41 [get_ports {GPIO_LED[5]}]
set_property PACKAGE_PIN AR35 [get_ports {GPIO_LED[4]}]
set_property PACKAGE_PIN AT37 [get_ports {GPIO_LED[3]}]
set_property PACKAGE_PIN AR37 [get_ports {GPIO_LED[2]}]
set_property PACKAGE_PIN AN39 [get_ports {GPIO_LED[1]}]
set_property PACKAGE_PIN AM39 [get_ports {GPIO_LED[0]}]


create_clock -period 6.400 [get_ports {USER_CLOCK_P}]

set_false_path -from [get_port CPU_RESET]
set_false_path -from [get_port GPIO_SW_S]
set_false_path -from [get_port {GPIO_DIP_SW*}]
set_false_path -to [get_port {GPIO_LED*}]
set_false_path -to [get_port SFP_TX_DISABLE]

set_min_delay -from [get_pins {AT93C46_IIC/PCA9548_SW/IIC_CTL/IIC_CORE/IIC_SCL_FD/C}] -to [get_port I2C_SCL]  0
set_max_delay -from [get_pins {AT93C46_IIC/PCA9548_SW/IIC_CTL/IIC_CORE/IIC_SCL_FD/C}] -to [get_port I2C_SCL]  -datapath_only 10
set_min_delay -from [get_pins {AT93C46_IIC/PCA9548_SW/IIC_CTL/IIC_CORE/IIC_SDA_OF/C}] -to [get_port I2C_SDA]  0
set_max_delay -from [get_pins {AT93C46_IIC/PCA9548_SW/IIC_CTL/IIC_CORE/IIC_SDA_OF/C}] -to [get_port I2C_SDA]  -datapath_only 10
set_min_delay -from [get_port I2C_SDA]  -to [get_pins {AT93C46_IIC/PCA9548_SW/IIC_CTL/IIC_CORE/IIC_SDA_IF/D}] 0
set_max_delay -from [get_port I2C_SDA]  -to [get_pins {AT93C46_IIC/PCA9548_SW/IIC_CTL/IIC_CORE/IIC_SDA_IF/D}]  -datapath_only 5


set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

