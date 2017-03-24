library verilog;
use verilog.vl_types.all;
entity g58_dealer_rng is
    port(
        stack_enable    : out    vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        request_deal    : in     vl_logic;
        r               : out    vl_logic_vector(31 downto 0);
        sel             : out    vl_logic;
        num             : in     vl_logic_vector(5 downto 0);
        rand_enable     : out    vl_logic;
        rand            : out    vl_logic_vector(5 downto 0)
    );
end g58_dealer_rng;
