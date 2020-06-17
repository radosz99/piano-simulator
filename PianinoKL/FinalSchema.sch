<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="Clk" />
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
        <signal name="XLXN_17(7:0)" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21(7:0)" />
        <signal name="XLXN_22" />
        <signal name="XLXN_24(3:0)" />
        <signal name="XLXN_25(3:0)" />
        <signal name="XLXN_23(11:0)" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27(7:0)" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_32" />
        <signal name="VGA_R" />
        <signal name="XLXN_36" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="Clk" />
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
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <blockdef name="PS2_Kbd">
            <timestamp>2020-4-16T20:51:11</timestamp>
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
        <blockdef name="VGAtxt48x20">
            <timestamp>2008-9-4T9:59:2</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="DACWrite">
            <timestamp>2020-3-6T20:34:43</timestamp>
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
        <blockdef name="VGAAndSoundAndKeyboardSchema">
            <timestamp>2020-5-19T9:45:42</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="PS2_Kbd" name="XLXI_1">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_18" name="E0" />
            <blockpin signalname="XLXN_19" name="F0" />
            <blockpin signalname="XLXN_20" name="DO_Rdy" />
            <blockpin signalname="XLXN_21(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk" name="Clk_Sys" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_4">
            <blockpin signalname="XLXN_27(7:0)" name="Char_DI(7:0)" />
            <blockpin name="Home" />
            <blockpin name="NewLine" />
            <blockpin name="Goto00" />
            <blockpin signalname="Clk" name="Clk_Sys" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin name="CursorOn" />
            <blockpin name="ScrollEn" />
            <blockpin name="ScrollClear" />
            <blockpin name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_32" name="VGA_RGB" />
            <blockpin signalname="XLXN_26" name="Char_WE" />
        </block>
        <block symbolname="DACWrite" name="XLXI_5">
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_22" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_25(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_24(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_23(11:0)" name="DATA(11:0)" />
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
        <block symbolname="VGAAndSoundAndKeyboardSchema" name="XLXI_6">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_18" name="E0" />
            <blockpin signalname="XLXN_19" name="F0" />
            <blockpin signalname="XLXN_20" name="Rdy" />
            <blockpin signalname="XLXN_21(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_26" name="char_wy" />
            <blockpin signalname="XLXN_27(7:0)" name="char_out(7:0)" />
            <blockpin signalname="XLXN_22" name="Start" />
            <blockpin signalname="XLXN_23(11:0)" name="wout(11:0)" />
            <blockpin signalname="XLXN_25(3:0)" name="cmm(3:0)" />
            <blockpin signalname="XLXN_24(3:0)" name="add(3:0)" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="XLXN_32" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="XLXN_32" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="XLXN_32" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="576" y="1568" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2352" y="1792" name="XLXI_5" orien="R0">
        </instance>
        <branch name="PS2_Clk">
            <wire x2="576" y1="1344" y2="1344" x1="384" />
        </branch>
        <iomarker fontsize="28" x="384" y="1344" name="PS2_Clk" orien="R180" />
        <branch name="PS2_Data">
            <wire x2="576" y1="1408" y2="1408" x1="384" />
        </branch>
        <iomarker fontsize="28" x="384" y="1408" name="PS2_Data" orien="R180" />
        <branch name="Clk">
            <wire x2="448" y1="1952" y2="1952" x1="320" />
            <wire x2="576" y1="1472" y2="1472" x1="448" />
            <wire x2="448" y1="1472" y2="1536" x1="448" />
            <wire x2="576" y1="1536" y2="1536" x1="448" />
            <wire x2="448" y1="1536" y2="1760" x1="448" />
            <wire x2="448" y1="1760" y2="1952" x1="448" />
            <wire x2="1040" y1="1760" y2="1760" x1="448" />
            <wire x2="2112" y1="1760" y2="1760" x1="1040" />
            <wire x2="2112" y1="1760" y2="1888" x1="2112" />
            <wire x2="2240" y1="1888" y2="1888" x1="2112" />
            <wire x2="2352" y1="1888" y2="1888" x1="2240" />
            <wire x2="2240" y1="1888" y2="1952" x1="2240" />
            <wire x2="2352" y1="1952" y2="1952" x1="2240" />
            <wire x2="1040" y1="928" y2="1296" x1="1040" />
            <wire x2="1040" y1="1296" y2="1760" x1="1040" />
            <wire x2="1440" y1="1296" y2="1296" x1="1040" />
            <wire x2="2288" y1="928" y2="928" x1="1040" />
            <wire x2="2352" y1="928" y2="928" x1="2288" />
            <wire x2="2288" y1="928" y2="992" x1="2288" />
            <wire x2="2352" y1="992" y2="992" x1="2288" />
        </branch>
        <iomarker fontsize="28" x="320" y="1952" name="Clk" orien="R180" />
        <branch name="SPI_MOSI">
            <wire x2="2832" y1="1248" y2="1248" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1248" name="SPI_MOSI" orien="R0" />
        <branch name="SPI_MISO">
            <wire x2="2832" y1="1312" y2="1312" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1312" name="SPI_MISO" orien="R0" />
        <branch name="SPI_SCK">
            <wire x2="2832" y1="1376" y2="1376" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1376" name="SPI_SCK" orien="R0" />
        <branch name="DAC_CS">
            <wire x2="2832" y1="1440" y2="1440" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1440" name="DAC_CS" orien="R0" />
        <branch name="DAC_CLR">
            <wire x2="2832" y1="1504" y2="1504" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1504" name="DAC_CLR" orien="R0" />
        <branch name="SPI_SS_B">
            <wire x2="2832" y1="1568" y2="1568" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1568" name="SPI_SS_B" orien="R0" />
        <branch name="AMP_CS">
            <wire x2="2832" y1="1632" y2="1632" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1632" name="AMP_CS" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="2832" y1="1696" y2="1696" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1696" name="AD_CONV" orien="R0" />
        <branch name="SF_CE0">
            <wire x2="2832" y1="1760" y2="1760" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1760" name="SF_CE0" orien="R0" />
        <branch name="FPGA_INIT_B">
            <wire x2="2832" y1="1824" y2="1824" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1824" name="FPGA_INIT_B" orien="R0" />
        <instance x="2352" y="928" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1440" y="1648" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_18">
            <wire x2="1200" y1="1408" y2="1408" x1="960" />
            <wire x2="1200" y1="1376" y2="1408" x1="1200" />
            <wire x2="1440" y1="1376" y2="1376" x1="1200" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1200" y1="1472" y2="1472" x1="960" />
            <wire x2="1200" y1="1456" y2="1472" x1="1200" />
            <wire x2="1440" y1="1456" y2="1456" x1="1200" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1440" y1="1536" y2="1536" x1="960" />
        </branch>
        <branch name="XLXN_21(7:0)">
            <wire x2="1120" y1="1344" y2="1344" x1="960" />
            <wire x2="1120" y1="1344" y2="1616" x1="1120" />
            <wire x2="1440" y1="1616" y2="1616" x1="1120" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2160" y1="1424" y2="1424" x1="1824" />
            <wire x2="2352" y1="1248" y2="1248" x1="2160" />
            <wire x2="2160" y1="1248" y2="1424" x1="2160" />
        </branch>
        <branch name="XLXN_24(3:0)">
            <wire x2="2288" y1="1616" y2="1616" x1="1824" />
            <wire x2="2352" y1="1376" y2="1376" x1="2288" />
            <wire x2="2288" y1="1376" y2="1616" x1="2288" />
        </branch>
        <branch name="XLXN_25(3:0)">
            <wire x2="2256" y1="1552" y2="1552" x1="1824" />
            <wire x2="2256" y1="1312" y2="1552" x1="2256" />
            <wire x2="2352" y1="1312" y2="1312" x1="2256" />
        </branch>
        <branch name="XLXN_23(11:0)">
            <wire x2="2208" y1="1488" y2="1488" x1="1824" />
            <wire x2="2352" y1="1440" y2="1440" x1="2208" />
            <wire x2="2208" y1="1440" y2="1488" x1="2208" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="2048" y1="1296" y2="1296" x1="1824" />
            <wire x2="2048" y1="384" y2="1296" x1="2048" />
            <wire x2="2352" y1="384" y2="384" x1="2048" />
        </branch>
        <branch name="XLXN_27(7:0)">
            <wire x2="2000" y1="1360" y2="1360" x1="1824" />
            <wire x2="2000" y1="320" y2="1360" x1="2000" />
            <wire x2="2352" y1="320" y2="320" x1="2000" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2816" y1="320" y2="320" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="2816" y="320" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="2816" y1="384" y2="384" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="2816" y="384" name="VGA_VS" orien="R0" />
        <instance x="2880" y="480" name="XLXI_7" orien="R0" />
        <branch name="VGA_R">
            <wire x2="3136" y1="448" y2="448" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="448" name="VGA_R" orien="R0" />
        <instance x="2880" y="544" name="XLXI_8" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="2832" y1="448" y2="448" x1="2784" />
            <wire x2="2880" y1="448" y2="448" x1="2832" />
            <wire x2="2832" y1="448" y2="512" x1="2832" />
            <wire x2="2880" y1="512" y2="512" x1="2832" />
            <wire x2="2832" y1="512" y2="576" x1="2832" />
            <wire x2="2880" y1="576" y2="576" x1="2832" />
        </branch>
        <instance x="2880" y="608" name="XLXI_9" orien="R0" />
        <branch name="VGA_G">
            <wire x2="3136" y1="512" y2="512" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="512" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="3136" y1="576" y2="576" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="576" name="VGA_B" orien="R0" />
    </sheet>
</drawing>