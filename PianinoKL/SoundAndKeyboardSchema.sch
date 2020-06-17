<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="key(3:0)" />
        <signal name="Clk" />
        <signal name="E0" />
        <signal name="F0" />
        <signal name="Rdy" />
        <signal name="DO(7:0)" />
        <signal name="Start" />
        <signal name="wout(11:0)" />
        <signal name="cmm(3:0)" />
        <signal name="add(3:0)" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="E0" />
        <port polarity="Input" name="F0" />
        <port polarity="Input" name="Rdy" />
        <port polarity="Input" name="DO(7:0)" />
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
        <block symbolname="KeyBoard" name="XLXI_1">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="E0" name="E0" />
            <blockpin signalname="F0" name="F0" />
            <blockpin signalname="Rdy" name="Rdy" />
            <blockpin signalname="DO(7:0)" name="DO(7:0)" />
            <blockpin signalname="key(3:0)" name="key_out(3:0)" />
        </block>
        <block symbolname="Sawtooth" name="XLXI_2">
            <blockpin signalname="Clk" name="clk" />
            <blockpin signalname="Start" name="Start" />
            <blockpin signalname="wout(11:0)" name="wout(11:0)" />
            <blockpin signalname="cmm(3:0)" name="cmm(3:0)" />
            <blockpin signalname="add(3:0)" name="add(3:0)" />
            <blockpin signalname="key(3:0)" name="key_in(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1040" y="1168" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1664" y="1104" name="XLXI_2" orien="R0">
        </instance>
        <branch name="key(3:0)">
            <wire x2="1536" y1="880" y2="880" x1="1424" />
            <wire x2="1536" y1="880" y2="1136" x1="1536" />
            <wire x2="1664" y1="1136" y2="1136" x1="1536" />
        </branch>
        <branch name="Clk">
            <wire x2="576" y1="880" y2="880" x1="416" />
            <wire x2="1024" y1="880" y2="880" x1="576" />
            <wire x2="1040" y1="880" y2="880" x1="1024" />
            <wire x2="576" y1="880" y2="928" x1="576" />
            <wire x2="576" y1="928" y2="1264" x1="576" />
            <wire x2="1584" y1="1264" y2="1264" x1="576" />
            <wire x2="1664" y1="880" y2="880" x1="1584" />
            <wire x2="1584" y1="880" y2="1264" x1="1584" />
        </branch>
        <branch name="E0">
            <wire x2="1040" y1="944" y2="944" x1="848" />
        </branch>
        <branch name="F0">
            <wire x2="1040" y1="1008" y2="1008" x1="848" />
        </branch>
        <branch name="Rdy">
            <wire x2="1040" y1="1072" y2="1072" x1="848" />
        </branch>
        <branch name="DO(7:0)">
            <wire x2="1040" y1="1136" y2="1136" x1="848" />
        </branch>
        <iomarker fontsize="28" x="848" y="944" name="E0" orien="R180" />
        <iomarker fontsize="28" x="848" y="1008" name="F0" orien="R180" />
        <iomarker fontsize="28" x="848" y="1072" name="Rdy" orien="R180" />
        <iomarker fontsize="28" x="848" y="1136" name="DO(7:0)" orien="R180" />
        <branch name="Start">
            <wire x2="2080" y1="880" y2="880" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2080" y="880" name="Start" orien="R0" />
        <branch name="wout(11:0)">
            <wire x2="2080" y1="944" y2="944" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2080" y="944" name="wout(11:0)" orien="R0" />
        <branch name="cmm(3:0)">
            <wire x2="2080" y1="1008" y2="1008" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2080" y="1008" name="cmm(3:0)" orien="R0" />
        <branch name="add(3:0)">
            <wire x2="2080" y1="1072" y2="1072" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2080" y="1072" name="add(3:0)" orien="R0" />
        <iomarker fontsize="28" x="416" y="880" name="Clk" orien="R180" />
    </sheet>
</drawing>