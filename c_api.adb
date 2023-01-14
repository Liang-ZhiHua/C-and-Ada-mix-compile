package body C_API is
   function adaFunc(a:double;
                             b:double;
                            c:double) return double is
   begin
        return a+b+c;
   end adaFunc;
end C_API;
