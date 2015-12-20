quotient = load('C:/Aaron_documents/Newton_method_hd/Online_div_hd/quotient.dat');
Random_sample = 10;
Num_bits = 101;


quotient_vec=zeros(1,Num_bits);
quotient_value=zeros(1,Num_bits);
flag =0;
for i=1:Random_sample
    for cnt= 1: Num_bits
            quotient_vec(cnt) = quotient(cnt+(i-1)*Num_bits);
    end
    if (i < 4)
        disp(quotient_vec);
    end
    
    quotient_value(i)=general_read(quotient_vec);    
end

quotient_exact=value_one./value_two;


comparison_vector = quotient_value(1:Random_sample)==quotient_exact(1:Random_sample);