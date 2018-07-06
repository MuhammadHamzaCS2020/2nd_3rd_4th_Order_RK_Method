function [ out ] = OrigFunc( x )
temp1=4/1.3;
temp2=exp(0.8*x);
temp3=exp(-0.5*x);
temp4=2*exp(-0.5*x);
out=temp1*(temp2-temp3)+temp4;
end

