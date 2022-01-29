library verilog;
use verilog.vl_types.all;
entity xiaodou is
    generic(
        DELAY           : vl_logic_vector(0 to 14) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        operate         : in     vl_logic;
        key_out         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DELAY : constant is 1;
end xiaodou;
