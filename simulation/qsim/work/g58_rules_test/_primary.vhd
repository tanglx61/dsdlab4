library verilog;
use verilog.vl_types.all;
entity g58_rules_test is
    port(
        legal_play      : out    vl_logic;
        card_to_play    : in     vl_logic_vector(5 downto 0);
        play_pile_top_card: in     vl_logic_vector(5 downto 0)
    );
end g58_rules_test;
