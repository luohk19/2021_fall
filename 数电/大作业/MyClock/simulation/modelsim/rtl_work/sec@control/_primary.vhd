library verilog;
use verilog.vl_types.all;
entity secControl is
    port(
        clk             : in     vl_logic;
        second          : out    vl_logic;
        show            : out    vl_logic
    );
end secControl;
