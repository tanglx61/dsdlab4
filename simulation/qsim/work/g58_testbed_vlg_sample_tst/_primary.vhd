library verilog;
use verilog.vl_types.all;
entity g58_testbed_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        deal_button     : in     vl_logic;
        disp_mode_left  : in     vl_logic;
        disp_mode_right : in     vl_logic;
        mode            : in     vl_logic_vector(1 downto 0);
        rst             : in     vl_logic;
        stack_button    : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g58_testbed_vlg_sample_tst;
