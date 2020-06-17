<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3(3:0)" />
        <signal name="XLXN_4(3:0)" />
        <signal name="XLXN_5(11:0)" />
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
        <signal name="Busy" />
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
        <port polarity="Output" name="Busy" />
        <blockdef name="DACWrite">
            <timestamp>2020-3-6T19:34:43</timestamp>
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
        <blockdef name="Sawtooth">
            <timestamp>2020-3-23T19:42:48</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="320" />
        </blockdef>
        <block symbolname="DACWrite" name="XLXI_1">
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_2" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_3(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_5(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin signalname="Busy" name="Busy" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="Clk" name="Clk_Sys" />
        </block>
        <block symbolname="Sawtooth" name="XLXI_2">
            <blockpin signalname="Clk" name="clk" />
            <blockpin signalname="XLXN_2" name="Start" />
            <blockpin signalname="XLXN_5(11:0)" name="wout(11:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="cmm(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="add(3:0)" />
            <blockpin name="key_in(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="912" y="1072" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1792" y="1168" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Clk">
            <wire x2="752" y1="848" y2="848" x1="704" />
            <wire x2="912" y1="848" y2="848" x1="752" />
            <wire x2="752" y1="848" y2="1264" x1="752" />
            <wire x2="1648" y1="1264" y2="1264" x1="752" />
            <wire x2="1792" y1="1264" y2="1264" x1="1648" />
            <wire x2="1648" y1="1264" y2="1328" x1="1648" />
            <wire x2="1792" y1="1328" y2="1328" x1="1648" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1536" y1="848" y2="848" x1="1296" />
            <wire x2="1536" y1="624" y2="848" x1="1536" />
            <wire x2="1792" y1="624" y2="624" x1="1536" />
        </branch>
        <branch name="XLXN_3(3:0)">
            <wire x2="1552" y1="976" y2="976" x1="1296" />
            <wire x2="1552" y1="688" y2="976" x1="1552" />
            <wire x2="1792" y1="688" y2="688" x1="1552" />
        </branch>
        <branch name="XLXN_4(3:0)">
            <wire x2="1568" y1="1040" y2="1040" x1="1296" />
            <wire x2="1568" y1="752" y2="1040" x1="1568" />
            <wire x2="1792" y1="752" y2="752" x1="1568" />
        </branch>
        <branch name="XLXN_5(11:0)">
            <wire x2="1584" y1="912" y2="912" x1="1296" />
            <wire x2="1584" y1="816" y2="912" x1="1584" />
            <wire x2="1792" y1="816" y2="816" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="704" y="848" name="Clk" orien="R180" />
        <branch name="SPI_MOSI">
            <wire x2="2272" y1="624" y2="624" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="624" name="SPI_MOSI" orien="R0" />
        <branch name="SPI_MISO">
            <wire x2="2272" y1="688" y2="688" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="688" name="SPI_MISO" orien="R0" />
        <branch name="SPI_SCK">
            <wire x2="2272" y1="752" y2="752" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="752" name="SPI_SCK" orien="R0" />
        <branch name="DAC_CS">
            <wire x2="2272" y1="816" y2="816" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="816" name="DAC_CS" orien="R0" />
        <branch name="DAC_CLR">
            <wire x2="2272" y1="880" y2="880" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="880" name="DAC_CLR" orien="R0" />
        <branch name="SPI_SS_B">
            <wire x2="2272" y1="944" y2="944" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="944" name="SPI_SS_B" orien="R0" />
        <branch name="AMP_CS">
            <wire x2="2272" y1="1008" y2="1008" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1008" name="AMP_CS" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="2272" y1="1072" y2="1072" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1072" name="AD_CONV" orien="R0" />
        <branch name="SF_CE0">
            <wire x2="2272" y1="1136" y2="1136" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1136" name="SF_CE0" orien="R0" />
        <branch name="FPGA_INIT_B">
            <wire x2="2272" y1="1200" y2="1200" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1200" name="FPGA_INIT_B" orien="R0" />
        <branch name="Busy">
            <wire x2="2272" y1="1264" y2="1264" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1264" name="Busy" orien="R0" />
    </sheet>
</drawing>