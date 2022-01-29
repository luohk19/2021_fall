library verilog;
use verilog.vl_types.all;
entity keyboard1 is
    port(
        ctrl            : out    vl_logic_vector(1 downto 0);
        clk_sys         : in     vl_logic;
        V               : in     vl_logic_vector(3 downto 0);
        H               : out    vl_logic_vector(3 downto 0);
        led             : out    vl_logic_vector(7 downto 0);
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end keyboard1;
