library verilog;
use verilog.vl_types.all;
entity lightControl is
    port(
        flag            : in     vl_logic;
        clk             : in     vl_logic;
        sign            : out    vl_logic
    );
end lightControl;
