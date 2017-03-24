library verilog;
use verilog.vl_types.all;
entity g58_testbed is
    port(
        empty           : out    vl_logic;
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        req_deal        : out    vl_logic;
        deal_button     : in     vl_logic;
        num             : out    vl_logic_vector(5 downto 0);
        stack_button    : in     vl_logic;
        mode            : in     vl_logic_vector(1 downto 0);
        full            : out    vl_logic;
        segs_card_rank  : out    vl_logic_vector(6 downto 0);
        disp_mode_right : in     vl_logic;
        value           : out    vl_logic_vector(5 downto 0);
        segs_card_suit  : out    vl_logic_vector(6 downto 0);
        disp_mode_left  : in     vl_logic
    );
end g58_testbed;
