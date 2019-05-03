%% creat an order-3 tensor
rand('state',0);

A = randn(3,2); %<-- First column is a_1, second is a_2.
B = randn(4,2); %<-- Likewise for B.
C = randn(5,2); %<-- Likewise for C.
C(C<=0)=0
Tensor =ktensor({A,B,C}); %<-- Create the ktensor.
Tensor=full(Tensor);
missing=zeros([3,4,5])+1;

% perform tensor decomposition with semi-nonnegative constraint in the Z-mode

[output_vector_X,output_vector_Y,output_vector_Z,output_value]=HOSVD_positive(Tensor,10,missing);

% output
output_vector_X
