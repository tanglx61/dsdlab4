library verilog;
use verilog.vl_types.all;
entity g58_testbed_vlg_check_tst is
    port(
        empty           : in     vl_logic;
        full            : in     vl_logic;
        num             : in     vl_logic_vector(5 downto 0);
        req_deal        : in     vl_logic;
        segs_card_rank  : in     vl_logic_vector(6 downto 0);
        segs_card_suit  : in     vl_logic_vector(6 downto 0);
        value           : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end g58_testbed_vlg_check_tst;
