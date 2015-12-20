function [results]=general_read(input)



results = 0;
for i=1:length(input)
    if(input(i)==0)
        tmp=0;
    end
    if(input(i)==10)
        tmp=1;
    end
    if(input(i)==1)
        tmp=-1;
    end
    results = results + tmp*2.^(-i);
end


    
    