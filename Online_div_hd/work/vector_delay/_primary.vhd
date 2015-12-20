library verilog;
use verilog.vl_types.all;
entity vector_delay is
    generic(
        UNROLLING       : integer := 4;
        RAM_ADDR_WIDTH  : integer := 7;
        START           : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        WRITE_IN        : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        READ_OUT        : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        READ_OUT_LAST_LINE: vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        \END\           : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0)
    );
    port(
        x_vec_plus      : in     vl_logic_vector;
        x_vec_minus     : in     vl_logic_vector;
        clk             : in     vl_logic;
        STATE           : in     vl_logic_vector(2 downto 0);
        master_cnt      : in     vl_logic_vector;
        x_plus_chosen   : out    vl_logic_vector;
        x_minus_chosen  : out    vl_logic_vector;
        enable          : in     vl_logic;
        fix_next_state  : in     vl_logic;
        asyn_reset      : in     vl_logic;
        comp_cycle      : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of UNROLLING : constant is 1;
    attribute mti_svvh_generic_type of RAM_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of START : constant is 1;
    attribute mti_svvh_generic_type of WRITE_IN : constant is 1;
    attribute mti_svvh_generic_type of READ_OUT : constant is 1;
    attribute mti_svvh_generic_type of READ_OUT_LAST_LINE : constant is 1;
    attribute mti_svvh_generic_type of \END\ : constant is 1;
end vector_delay;
