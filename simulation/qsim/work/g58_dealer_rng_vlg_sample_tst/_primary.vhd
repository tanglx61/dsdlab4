library verilog;
use verilog.vl_types.all;
entity g58_dealer_rng_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        num             : in     vl_logic_vector(5 downto 0);
        request_deal    : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g58_dealer_rng_vlg_sample_tst;
