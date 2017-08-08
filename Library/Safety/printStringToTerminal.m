function printStringToTerminal( string )
%PRINTSTRINGTOTERMINAL Prints string to terminal
coder.ceval('printf',[string 10 0]); % 10 is newline, 0 is string terminator
end

