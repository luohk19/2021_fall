library verilog;
use verilog.vl_types.all;
entity MyClock_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MyClock_vlg_sample_tst;
