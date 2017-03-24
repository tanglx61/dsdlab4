library verilog;
use verilog.vl_types.all;
entity g58_rules_test_vlg_sample_tst is
    port(
        card_to_play    : in     vl_logic_vector(5 downto 0);
        play_pile_top_card: in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end g58_rules_test_vlg_sample_tst;
