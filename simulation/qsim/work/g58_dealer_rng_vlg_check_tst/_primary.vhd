library verilog;
use verilog.vl_types.all;
entity g58_dealer_rng_vlg_check_tst is
    port(
        r               : in     vl_logic_vector(31 downto 0);
        rand            : in     vl_logic_vector(5 downto 0);
        rand_enable     : in     vl_logic;
        sel             : in     vl_logic;
        stack_enable    : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end g58_dealer_rng_vlg_check_tst;
