library verilog;
use verilog.vl_types.all;
entity MyClock is
    port(
        num3            : out    vl_logic;
        clk             : in     vl_logic;
        num2            : out    vl_logic;
        num1            : out    vl_logic;
        num0            : out    vl_logic
    );
end MyClock;
