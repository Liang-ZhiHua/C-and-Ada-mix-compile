with Interfaces.C;use Interfaces.C;
package C_API is
   function adaFunc(a:double;
                             b:double;
                            c:double) return double
        with
          Export=>True,
          Convention=>C,
          External_Name=>"adaFunc";
end C_API;
