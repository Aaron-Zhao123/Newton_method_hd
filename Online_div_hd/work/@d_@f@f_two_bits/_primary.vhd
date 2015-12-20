library verilog;
use verilog.vl_types.all;
entity D_FF_two_bits is
    port(
        \in\            : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        asyn_reset      : in     vl_logic
    );
end D_FF_two_bits;
