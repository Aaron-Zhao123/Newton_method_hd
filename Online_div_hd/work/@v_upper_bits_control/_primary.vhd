library verilog;
use verilog.vl_types.all;
entity V_upper_bits_control is
    generic(
        UPPER_BITS      : integer := 5
    );
    port(
        cout_one        : in     vl_logic_vector(1 downto 0);
        cout_two        : in     vl_logic_vector(1 downto 0);
        shift_in        : in     vl_logic_vector(1 downto 0);
        borrow_in_upper : in     vl_logic;
        clk             : in     vl_logic;
        enable_upper    : in     vl_logic;
        enable_v_reg    : in     vl_logic;
        asyn_reset      : in     vl_logic;
        p_value         : out    vl_logic_vector(1 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of UPPER_BITS : constant is 1;
end V_upper_bits_control;
