pragma solidity ^0.5.1;

library Math {
    function mul(uint a, uint b) public pure returns(uint){
        uint c = a*b;
        assert(a == 0 || c / a == b);
        return c;
    }
    
    function sub(uint a, uint b) public pure returns(uint){
        uint c = a-b;
        assert(a>=b);
        return c;
    }
    
    function add(uint a, uint b) public pure returns(uint){
        uint c = a+b;
        assert(c>=a);
        return c;
    }
    
    function div(uint a, uint b) public pure returns(uint){
        uint c = a/b;
        return c;
    }
}

contract Div{
    event show(uint div);
    using Math for uint;
   
   function set(uint a, uint b)public {
       uint div = a.div(b);
       emit show(div);
   }
}

contract Mul{
    event show(uint mul);
    using Math for uint;
   
   function set(uint a, uint b)public {
       uint mul = a.mul(b);
       emit show(mul);
   }
}


