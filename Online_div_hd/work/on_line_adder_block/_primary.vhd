library verilog;
use verilog.vl_types.all;
entity on_line_adder_block is
    port(
        x_plus          : in     vl_logic;
        x_minus         : in     vl_logic;
        y_plus          : in     vl_logic;
        y_minus         : in     vl_logic;
        cin             : in     vl_logic;
        cout            : out    vl_logic;
        carry_out       : out    vl_logic;
        sum_out         : out    vl_logic
    );
end on_line_adder_block;
