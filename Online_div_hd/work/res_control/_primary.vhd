library verilog;
use verilog.vl_types.all;
entity res_control is
    generic(
        bits            : integer := 4;
        RAM_ADDR_WIDTH  : integer := 7
    );
    port(
        clk             : in     vl_logic;
        x_plus          : in     vl_logic_vector;
        x_minus         : in     vl_logic_vector;
        y_plus          : in     vl_logic_vector;
        y_minus         : in     vl_logic_vector;
        z_plus_shifted  : out    vl_logic_vector;
        z_minus_shifted : out    vl_logic_vector;
        comp_cycle      : in     vl_logic_vector;
        read_addr       : in     vl_logic_vector;
        write_addr      : in     vl_logic_vector;
        carry_out_control: in     vl_logic_vector(1 downto 0);
        cout_to_Vreg_one: out    vl_logic_vector(1 downto 0);
        cout_to_Vreg_two: out    vl_logic_vector(1 downto 0);
        shift_to_upper_bits: out    vl_logic_vector(1 downto 0);
        borrow_in_upper : out    vl_logic;
        enable          : in     vl_logic;
        enable_shift    : in     vl_logic;
        enable_V_reg    : in     vl_logic;
        asyn_reset      : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of bits : constant is 1;
    attribute mti_svvh_generic_type of RAM_ADDR_WIDTH : constant is 1;
end res_control;
