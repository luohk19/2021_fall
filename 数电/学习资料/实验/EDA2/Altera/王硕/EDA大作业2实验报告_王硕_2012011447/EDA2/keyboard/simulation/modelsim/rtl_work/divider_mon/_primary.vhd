library verilog;
use verilog.vl_types.all;
entity divider_mon is
    port(
        clk_in          : in     vl_logic;
        clk_out         : out    vl_logic
    );
end divider_mon;
