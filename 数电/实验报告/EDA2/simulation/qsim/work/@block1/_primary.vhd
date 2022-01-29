library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        en              : out    vl_logic_vector(5 downto 0);
        clk             : in     vl_logic;
        good            : in     vl_logic_vector(3 downto 0);
        money           : in     vl_logic_vector(2 downto 0);
        light           : out    vl_logic_vector(3 downto 0);
        lit             : out    vl_logic_vector(7 downto 0)
    );
end Block1;
