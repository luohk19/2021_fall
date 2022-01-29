library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        led             : out    vl_logic;
        clk             : in     vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        k               : in     vl_logic_vector(2 downto 0);
        en              : out    vl_logic_vector(5 downto 0);
        light           : out    vl_logic_vector(6 downto 0)
    );
end Block1;
