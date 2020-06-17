<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(3:0)" />
        <signal name="Clk" />
        <signal name="E0" />
        <signal name="F0" />
        <signal name="Rdy" />
        <signal name="DO(7:0)" />
        <signal name="char_wy" />
        <signal name="char_out(7:0)" />
        <signal name="Start" />
        <signal name="wout(11:0)" />
        <signal name="cmm(3:0)" />
        <signal name="add(3:0)" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19(3:0)" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="E0" />
        <port polarity="Input" name="F0" />
        <port polarity="Input" name="Rdy" />
        <port polarity="Input" name="DO(7:0)" />
        <port polarity="Output" name="char_wy" />
        <port polarity="Output" name="char_out(7:0)" />
        <port polarity="Output" name="Start" />
        <port polarity="Output" name="wout(11:0)" />
        <port polarity="Output" name="cmm(3:0)" />
        <port polarity="Output" name="add(3:0)" />
        <blockdef name="KeyBoard">
            <timestamp>2020-4-2T17:20:5</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="Sawtooth">
            <timestamp>2020-3-23T20:42:48</timestamp>
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
        <blockdef name="VGAModule">
            <timestamp>2020-5-16T9:29:7</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="KeyBoard" name="XLXI_1">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="E0" name="E0" />
            <blockpin signalname="F0" name="F0" />
            <blockpin signalname="Rdy" name="Rdy" />
            <blockpin signalname="DO(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_1(3:0)" name="key_out(3:0)" />
        </block>
        <block symbolname="Sawtooth" name="XLXI_2">
            <blockpin signalname="Clk" name="clk" />
            <blockpin signalname="Start" name="Start" />
            <blockpin signalname="wout(11:0)" name="wout(11:0)" />
            <blockpin signalname="cmm(3:0)" name="cmm(3:0)" />
            <blockpin signalname="add(3:0)" name="add(3:0)" />
            <blockpin signalname="XLXN_1(3:0)" name="key_in(3:0)" />
        </block>
        <block symbolname="VGAModule" name="XLXI_3">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="E0" name="E0" />
            <blockpin signalname="F0" name="F0" />
            <blockpin signalname="Rdy" name="Rdy" />
            <blockpin signalname="XLXN_1(3:0)" name="key_in(3:0)" />
            <blockpin signalname="char_wy" name="char_wy" />
            <blockpin signalname="char_out(7:0)" name="char_out(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1312" y="800" name="XLXI_3" orien="R0">
        </instance>
        <instance x="864" y="1344" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1808" y="1280" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(3:0)">
            <wire x2="1312" y1="768" y2="768" x1="1248" />
            <wire x2="1248" y1="768" y2="864" x1="1248" />
            <wire x2="1312" y1="864" y2="864" x1="1248" />
            <wire x2="1312" y1="864" y2="1056" x1="1312" />
            <wire x2="1520" y1="1056" y2="1056" x1="1312" />
            <wire x2="1520" y1="1056" y2="1312" x1="1520" />
            <wire x2="1808" y1="1312" y2="1312" x1="1520" />
            <wire x2="1312" y1="1056" y2="1056" x1="1248" />
        </branch>
        <branch name="Clk">
            <wire x2="688" y1="1056" y2="1056" x1="512" />
            <wire x2="864" y1="1056" y2="1056" x1="688" />
            <wire x2="1312" y1="512" y2="512" x1="688" />
            <wire x2="688" y1="512" y2="896" x1="688" />
            <wire x2="688" y1="896" y2="1056" x1="688" />
            <wire x2="1616" y1="896" y2="896" x1="688" />
            <wire x2="1616" y1="896" y2="1056" x1="1616" />
            <wire x2="1808" y1="1056" y2="1056" x1="1616" />
        </branch>
        <branch name="E0">
            <wire x2="752" y1="1120" y2="1120" x1="704" />
            <wire x2="864" y1="1120" y2="1120" x1="752" />
            <wire x2="1312" y1="576" y2="576" x1="752" />
            <wire x2="752" y1="576" y2="1120" x1="752" />
        </branch>
        <branch name="F0">
            <wire x2="784" y1="1184" y2="1184" x1="704" />
            <wire x2="864" y1="1184" y2="1184" x1="784" />
            <wire x2="1312" y1="640" y2="640" x1="784" />
            <wire x2="784" y1="640" y2="1184" x1="784" />
        </branch>
        <branch name="Rdy">
            <wire x2="816" y1="1248" y2="1248" x1="704" />
            <wire x2="864" y1="1248" y2="1248" x1="816" />
            <wire x2="1312" y1="704" y2="704" x1="816" />
            <wire x2="816" y1="704" y2="1248" x1="816" />
        </branch>
        <branch name="DO(7:0)">
            <wire x2="864" y1="1312" y2="1312" x1="560" />
        </branch>
        <iomarker fontsize="28" x="512" y="1056" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="704" y="1120" name="E0" orien="R180" />
        <iomarker fontsize="28" x="704" y="1184" name="F0" orien="R180" />
        <iomarker fontsize="28" x="704" y="1248" name="Rdy" orien="R180" />
        <iomarker fontsize="28" x="560" y="1312" name="DO(7:0)" orien="R180" />
        <branch name="char_wy">
            <wire x2="1712" y1="512" y2="512" x1="1696" />
            <wire x2="1728" y1="512" y2="512" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1728" y="512" name="char_wy" orien="R0" />
        <branch name="char_out(7:0)">
            <wire x2="1712" y1="768" y2="768" x1="1696" />
            <wire x2="1728" y1="768" y2="768" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1728" y="768" name="char_out(7:0)" orien="R0" />
        <branch name="Start">
            <wire x2="2224" y1="1056" y2="1056" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1056" name="Start" orien="R0" />
        <branch name="wout(11:0)">
            <wire x2="2224" y1="1120" y2="1120" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1120" name="wout(11:0)" orien="R0" />
        <branch name="cmm(3:0)">
            <wire x2="2224" y1="1184" y2="1184" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1184" name="cmm(3:0)" orien="R0" />
        <branch name="add(3:0)">
            <wire x2="2224" y1="1248" y2="1248" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1248" name="add(3:0)" orien="R0" />
    </sheet>
</drawing>