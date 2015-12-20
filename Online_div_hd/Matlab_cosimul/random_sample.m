%construct a random generated inputs
%prepare a file for testbench to read

Num_bits=8;
Random_sample = 10;
Online_delay= 4;

% open files in text meode, need to add t in Matlab
fileID_x_value=fopen('C:/Aaron_documents/Newton_method_hd/Online_div_hd/x_value_matlab.txt','wt');

fileID_y_value=fopen('C:/Aaron_documents/Newton_method_hd/Online_div_hd/y_value_matlab.txt','wt');


j =1;
value_one = zeros(1,Random_sample);
value_two = zeros(1,Random_sample);
while (j < Random_sample)
    digit_one = zeros(1,Num_bits);
    digit_two = zeros (1,Num_bits);
    samples_one = rand(1,Num_bits);
    samples_two = rand(1,Num_bits);
    for i= 1: Num_bits
        if (samples_one(i) < 0.3)
            digit_one(i) = 1;
            digit_value_one = -1;
        end
        if (samples_one(i) >= 0.3 & samples_one(i) < 0.6)
            digit_one(i) = 0;
            digit_value_one =0;
        end
        if (samples_one(i) >= 0.6) 
            digit_one(i) = 10;
            digit_value_one = 1;
        end


        if (samples_two(i) < 0.3)
            digit_two(i) = 1;
            digit_value_two = -1;
        end
        if (samples_two(i) >= 0.3 & samples_two(i) < 0.6)
            digit_two(i) = 0;
            digit_value_two =0;
        end
        if (samples_two(i) >= 0.6) 
            digit_two(i) = 10;
            digit_value_two = 1;
        end

        % value_one and value_two stores the corresponding exact value of operands
        
        % write digits values into the file and append with Number_bits
        % zeros at the end
    value_one(j) = general_read(digit_one);
    value_two(j) = general_read(digit_two);
    end
    if (abs(value_one(j)) <= abs(value_two(j)) && value_one(j)>0 && value_two(j)>0)
            j= j +1;

            for i = 1: Num_bits
                fprintf(fileID_x_value,'%d\n',digit_one(i));
                fprintf(fileID_y_value,'%d\n',digit_two(i));

            end
            for i=Num_bits+1:100
                fprintf(fileID_x_value,'%d\n',0);
                fprintf(fileID_y_value,'%d\n',0);
            end
    end
    if (abs(value_one(j)) > abs(value_two(j)) || value_one(j)<0 && value_two(j)<0)
        disp('fail');
        value_one(j) = 0;
        value_two(j) = 0;
    end


end

      
