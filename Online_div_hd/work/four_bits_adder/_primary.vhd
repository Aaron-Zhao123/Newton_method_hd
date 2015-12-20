library verilog;
use verilog.vl_types.all;
entity four_bits_adder is
    generic(
        bits            : integer := 4
    );
    port(
        x_plus          : in     vl_logic_vector;
        x_minus         : in     vl_logic_vector;
        y_plus          : in     vl_logic_vector;
        y_minus         : in     vl_logic_vector;
        z_plus          : out    vl_logic_vector;
        z_minus         : out    vl_logic_vector;
        cin             : in     vl_logic_vector(1 downto 0);
        cout            : out    vl_logic_vector(1 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of bits : constant is 1;
end four_bits_adder;
