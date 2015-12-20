library verilog;
use verilog.vl_types.all;
entity computing_v_value is
    generic(
        UNROLLING       : integer := 4;
        UPPER_BITS      : integer := 6;
        RAM_width       : integer := 7
    );
    port(
        clk             : in     vl_logic;
        q_value         : out    vl_logic_vector(1 downto 0);
        q_plus_vec      : in     vl_logic_vector;
        q_minus_vec     : in     vl_logic_vector;
        residue_plus    : in     vl_logic_vector;
        residue_minus   : in     vl_logic_vector;
        res_upper_plus  : in     vl_logic_vector;
        res_upper_minus : in     vl_logic_vector;
        v_plus_vec_out  : out    vl_logic_vector;
        v_minus_vec_out : out    vl_logic_vector;
        v_upper_plus    : out    vl_logic_vector;
        v_upper_minus   : out    vl_logic_vector;
        d_value_reg     : in     vl_logic_vector(1 downto 0);
        x_value_reg     : in     vl_logic_vector(1 downto 0);
        async_clear     : in     vl_logic;
        enable_all      : in     vl_logic;
        en_v_upper      : in     vl_logic;
        en_cout         : in     vl_logic;
        en_borrow       : in     vl_logic_vector(1 downto 0);
        en_q            : in     vl_logic_vector(1 downto 0);
        en_shift        : in     vl_logic_vector(1 downto 0);
        fixing          : in     vl_logic;
        error_flag      : in     vl_logic;
        wr_V_ram        : in     vl_logic_vector;
        rd_V_ram        : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of UNROLLING : constant is 1;
    attribute mti_svvh_generic_type of UPPER_BITS : constant is 1;
    attribute mti_svvh_generic_type of RAM_width : constant is 1;
end computing_v_value;
