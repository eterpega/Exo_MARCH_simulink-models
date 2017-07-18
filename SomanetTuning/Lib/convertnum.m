function s = convertnum(n)
   if n == 0
       s = '0';
       return;
   end
   addHyphen = n < 0;
   if addHyphen
       n = -1*n;
   end
   count_digits = 0;
   while (floor(n/(10^count_digits)) > 0)
       count_digits = count_digits +1;
   end
   digits = min(count_digits, 9);
   characters = digits;
   offset = 0;
   if addHyphen
       characters=characters+1;
       offset = 1;
   end
   s=zeros(1,characters);
   if addHyphen
       s(1) = '-';
   end
   for i=1:digits
      d = mod(n,10);
      s(digits-i+1+offset)=48+d;
      n = (n-d)/10;
   end
   s=char(s);
end