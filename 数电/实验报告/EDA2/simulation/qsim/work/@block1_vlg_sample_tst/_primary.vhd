library verilog;
use verilog.vl_types.all;
entity Block1_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        good            : in     vl_logic_vector(3 downto 0);
        money           : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end Block1_vlg_sample_tst;
