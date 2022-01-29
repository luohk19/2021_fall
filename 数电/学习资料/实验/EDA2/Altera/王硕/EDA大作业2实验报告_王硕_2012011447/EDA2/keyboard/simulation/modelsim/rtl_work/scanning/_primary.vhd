library verilog;
use verilog.vl_types.all;
entity scanning is
    port(
        clk             : in     vl_logic;
        V               : in     vl_logic_vector(3 downto 0);
        H               : out    vl_logic_vector(3 downto 0);
        out1            : out    vl_logic_vector(7 downto 0);
        out2            : out    vl_logic_vector(7 downto 0);
        out3            : out    vl_logic_vector(7 downto 0);
        out4            : out    vl_logic_vector(7 downto 0);
        led             : out    vl_logic_vector(7 downto 0)
    );
end scanning;
