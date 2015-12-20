library verilog;
use verilog.vl_types.all;
entity computing_w_value is
    generic(
        UNROLLING       : integer := 4;
        UPPER_BITS      : integer := 6;
        RAM_width       : integer := 7
    );
    port(
        clk             : in     vl_logic;
        v_plus_vec      : in     vl_logic_vector;
        v_minus_vec     : in     vl_logic_vector;
        v_upper_plus    : in     vl_logic_vector;
        v_upper_minus   : in     vl_logic_vector;
        d_plus_vec      : in     vl_logic_vector;
        d_minus_vec     : in     vl_logic_vector;
        residue_plus    : out    vl_logic_vector;
        residue_minus   : out    vl_logic_vector;
        res_upper_plus  : out    vl_logic_vector;
        res_upper_minus : out    vl_logic_vector;
        enable_all      : in     vl_logic;
        enable_d        : in     vl_logic_vector(1 downto 0);
        enable_cout     : in     vl_logic;
        async_clear     : in     vl_logic;
        en_shift        : in     vl_logic_vector(1 downto 0);
        fixing          : in     vl_logic;
        error_flag      : in     vl_logic;
        write_addr      : in     vl_logic_vector;
        read_addr       : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of UNROLLING : constant is 1;
    attribute mti_svvh_generic_type of UPPER_BITS : constant is 1;
    attribute mti_svvh_generic_type of RAM_width : constant is 1;
end computing_w_value;
