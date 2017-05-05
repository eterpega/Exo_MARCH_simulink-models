function [ output ] = to_signed_int32(input)
%% Fixes matlab shitty conversion of unsigned ints to doubles to ints
% https://nl.mathworks.com/matlabcentral/answers/98131-how-do-i-convert-an-unsigned-integer-to-a-signed-integer-without-causing-an-overflow-or-using-typeca
output = int32(bitset(input,32,0))+(-2^31)*int32(bitget(input,32));
end