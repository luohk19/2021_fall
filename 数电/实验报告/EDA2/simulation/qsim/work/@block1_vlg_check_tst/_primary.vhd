library verilog;
use verilog.vl_types.all;
entity Block1_vlg_check_tst is
    port(
        en              : in     vl_logic_vector(5 downto 0);
        light           : in     vl_logic_vector(3 downto 0);
        lit             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Block1_vlg_check_tst;
