<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2(11:0)" />
        <signal name="XLXN_3(3:0)" />
        <signal name="XLXN_4(3:0)" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_24(7:0)" />
        <signal name="XLXN_25" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_30(11:0)" />
        <signal name="XLXN_31(3:0)" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_35(3:0)" />
        <signal name="XLXN_36(3:0)" />
        <signal name="XLXN_37" />
        <signal name="XLXN_39(3:0)" />
        <signal name="XLXN_40(3:0)" />
        <signal name="XLXN_41" />
        <signal name="XLXN_43(3:0)" />
        <signal name="XLXN_44(3:0)" />
        <signal name="XLXN_45" />
        <signal name="XLXN_47(3:0)" />
        <signal name="XLXN_48(3:0)" />
        <signal name="XLXN_49" />
        <signal name="XLXN_54(3:0)" />
        <signal name="XLXN_55(3:0)" />
        <signal name="XLXN_56" />
        <signal name="XLXN_58(3:0)" />
        <signal name="XLXN_59(3:0)" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63(7:0)" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SCK" />
        <signal name="DAC_CS" />
        <signal name="DAC_CLR" />
        <signal name="SPI_SS_B" />
        <signal name="AMP_CS" />
        <signal name="AD_CONV" />
        <signal name="SF_CE0" />
        <signal name="FPGA_INIT_B" />
        <signal name="XLXN_81(11:0)" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="XLXN_86" />
        <signal name="XLXN_87" />
        <signal name="XLXN_88" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="XLXN_92(11:0)" />
        <signal name="XLXN_93" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="XLXN_96" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98" />
        <signal name="XLXN_99" />
        <signal name="XLXN_100" />
        <signal name="XLXN_101" />
        <signal name="XLXN_103" />
        <signal name="XLXN_104" />
        <signal name="XLXN_105" />
        <signal name="XLXN_106" />
        <signal name="XLXN_107" />
        <signal name="XLXN_108" />
        <signal name="XLXN_109" />
        <signal name="XLXN_110" />
        <signal name="XLXN_111" />
        <signal name="XLXN_112" />
        <signal name="XLXN_113(7:0)" />
        <signal name="XLXN_114" />
        <signal name="XLXN_115(7:0)" />
        <signal name="Clk" />
        <signal name="XLXN_118" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Input" name="Clk" />
        <blockdef name="DACWrite">
            <timestamp>2020-4-8T0:16:34</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2020-4-8T0:16:34</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="SoundAndKeyboardSchema">
            <timestamp>2020-4-8T10:47:56</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-220" height="24" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <rect width="64" x="320" y="-140" height="24" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-60" height="24" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
        </blockdef>
        <block symbolname="DACWrite" name="XLXI_3">
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_28" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_4(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_2(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin name="Busy" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="Clk" name="Clk_Sys" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_7">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_21" name="E0" />
            <blockpin signalname="XLXN_22" name="F0" />
            <blockpin signalname="XLXN_25" name="DO_Rdy" />
            <blockpin signalname="XLXN_24(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk" name="Clk_Sys" />
        </block>
        <block symbolname="SoundAndKeyboardSchema" name="XLXI_8">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_21" name="E0" />
            <blockpin signalname="XLXN_22" name="F0" />
            <blockpin signalname="XLXN_25" name="Rdy" />
            <blockpin signalname="XLXN_24(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_28" name="Start" />
            <blockpin signalname="XLXN_2(11:0)" name="wout(11:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="cmm(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="add(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_2(11:0)">
            <wire x2="1856" y1="832" y2="832" x1="1712" />
            <wire x2="1856" y1="832" y2="960" x1="1856" />
            <wire x2="2032" y1="960" y2="960" x1="1856" />
        </branch>
        <branch name="XLXN_3(3:0)">
            <wire x2="1888" y1="992" y2="992" x1="1712" />
            <wire x2="1888" y1="896" y2="992" x1="1888" />
            <wire x2="2032" y1="896" y2="896" x1="1888" />
        </branch>
        <branch name="XLXN_4(3:0)">
            <wire x2="1872" y1="912" y2="912" x1="1712" />
            <wire x2="1872" y1="832" y2="912" x1="1872" />
            <wire x2="2032" y1="832" y2="832" x1="1872" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="352" y1="800" y2="800" x1="192" />
            <wire x2="368" y1="800" y2="800" x1="352" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="352" y1="864" y2="864" x1="208" />
            <wire x2="368" y1="864" y2="864" x1="352" />
        </branch>
        <branch name="XLXN_24(7:0)">
            <wire x2="1024" y1="800" y2="800" x1="752" />
            <wire x2="1024" y1="800" y2="1008" x1="1024" />
            <wire x2="1328" y1="1008" y2="1008" x1="1024" />
        </branch>
        <instance x="1328" y="1040" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_21">
            <wire x2="1312" y1="864" y2="864" x1="752" />
            <wire x2="1328" y1="816" y2="816" x1="1312" />
            <wire x2="1312" y1="816" y2="864" x1="1312" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1312" y1="928" y2="928" x1="752" />
            <wire x2="1328" y1="880" y2="880" x1="1312" />
            <wire x2="1312" y1="880" y2="928" x1="1312" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1312" y1="992" y2="992" x1="752" />
            <wire x2="1328" y1="944" y2="944" x1="1312" />
            <wire x2="1312" y1="944" y2="992" x1="1312" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="2496" y1="768" y2="768" x1="2480" />
            <wire x2="2560" y1="768" y2="768" x1="2496" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="2496" y1="832" y2="832" x1="2480" />
            <wire x2="2560" y1="832" y2="832" x1="2496" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="2496" y1="896" y2="896" x1="2480" />
            <wire x2="2560" y1="896" y2="896" x1="2496" />
        </branch>
        <branch name="DAC_CS">
            <wire x2="2496" y1="960" y2="960" x1="2480" />
            <wire x2="2560" y1="960" y2="960" x1="2496" />
        </branch>
        <branch name="DAC_CLR">
            <wire x2="2496" y1="1024" y2="1024" x1="2480" />
            <wire x2="2560" y1="1024" y2="1024" x1="2496" />
        </branch>
        <branch name="SPI_SS_B">
            <wire x2="2496" y1="1088" y2="1088" x1="2480" />
            <wire x2="2560" y1="1088" y2="1088" x1="2496" />
        </branch>
        <branch name="AMP_CS">
            <wire x2="2496" y1="1152" y2="1152" x1="2480" />
            <wire x2="2560" y1="1152" y2="1152" x1="2496" />
        </branch>
        <branch name="SF_CE0">
            <wire x2="2496" y1="1280" y2="1280" x1="2480" />
            <wire x2="2560" y1="1280" y2="1280" x1="2496" />
        </branch>
        <branch name="FPGA_INIT_B">
            <wire x2="2496" y1="1344" y2="1344" x1="2480" />
            <wire x2="2560" y1="1344" y2="1344" x1="2496" />
        </branch>
        <instance x="2032" y="1312" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_28">
            <wire x2="1728" y1="752" y2="752" x1="1712" />
            <wire x2="1728" y1="752" y2="768" x1="1728" />
            <wire x2="2032" y1="768" y2="768" x1="1728" />
        </branch>
        <instance x="368" y="1024" name="XLXI_7" orien="R0">
        </instance>
        <iomarker fontsize="28" x="192" y="800" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="208" y="864" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="2560" y="768" name="SPI_MOSI" orien="R0" />
        <iomarker fontsize="28" x="2560" y="896" name="SPI_SCK" orien="R0" />
        <iomarker fontsize="28" x="2560" y="960" name="DAC_CS" orien="R0" />
        <iomarker fontsize="28" x="2560" y="1152" name="AMP_CS" orien="R0" />
        <iomarker fontsize="28" x="2560" y="1280" name="SF_CE0" orien="R0" />
        <iomarker fontsize="28" x="2560" y="1344" name="FPGA_INIT_B" orien="R0" />
        <iomarker fontsize="28" x="2560" y="832" name="SPI_MISO" orien="R0" />
        <iomarker fontsize="28" x="256" y="1472" name="Clk" orien="R180" />
        <branch name="Clk">
            <wire x2="368" y1="928" y2="928" x1="256" />
            <wire x2="256" y1="928" y2="992" x1="256" />
            <wire x2="368" y1="992" y2="992" x1="256" />
            <wire x2="256" y1="992" y2="1184" x1="256" />
            <wire x2="784" y1="1184" y2="1184" x1="256" />
            <wire x2="256" y1="1184" y2="1344" x1="256" />
            <wire x2="256" y1="1344" y2="1472" x1="256" />
            <wire x2="1136" y1="1344" y2="1344" x1="256" />
            <wire x2="1136" y1="1344" y2="1408" x1="1136" />
            <wire x2="1888" y1="1408" y2="1408" x1="1136" />
            <wire x2="2032" y1="1408" y2="1408" x1="1888" />
            <wire x2="1888" y1="1408" y2="1472" x1="1888" />
            <wire x2="2032" y1="1472" y2="1472" x1="1888" />
            <wire x2="784" y1="752" y2="1184" x1="784" />
            <wire x2="1328" y1="752" y2="752" x1="784" />
        </branch>
        <iomarker fontsize="28" x="2560" y="1024" name="DAC_CLR" orien="R0" />
        <iomarker fontsize="28" x="2560" y="1088" name="SPI_SS_B" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="2496" y1="1216" y2="1216" x1="2480" />
            <wire x2="2560" y1="1216" y2="1216" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2560" y="1216" name="AD_CONV" orien="R0" />
    </sheet>
</drawing>