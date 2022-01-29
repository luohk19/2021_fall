library verilog;
use verilog.vl_types.all;
entity vending_machine is
    generic(
        MAX_NUM         : vl_logic_vector(0 to 12) := (Hi1, Hi0, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0);
        DELAY           : vl_logic_vector(0 to 19) := (Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        money           : in     vl_logic_vector(2 downto 0);
        good            : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        en              : out    vl_logic_vector(5 downto 0);
        light           : out    vl_logic_vector(3 downto 0);
        lit             : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MAX_NUM : constant is 1;
    attribute mti_svvh_generic_type of DELAY : constant is 1;
end vending_machine;
