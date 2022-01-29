library verilog;
use verilog.vl_types.all;
entity scanner is
    port(
        sf_out          : out    vl_logic;
        K               : in     vl_logic;
        minus_in        : in     vl_logic;
        mm1             : in     vl_logic;
        mm2             : in     vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        ctrl            : out    vl_logic_vector(1 downto 0);
        clk_sys         : in     vl_logic;
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end scanner;
