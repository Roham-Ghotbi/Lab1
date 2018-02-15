pragma solidity ^0.4.18;

contract Example {
    address public owner;
    string greeting;
    uint prev;
    uint curr;
    uint next;
    uint iter;
    
    function Example (string _greeting) public {
        if(keccak256(_greeting) == keccak256("")) {
            greeting = "Hello World!";
        } else {
            greeting = _greeting;
        }
    }
    
    function greet() public constant returns (string) {
        return greeting;
    }
    
    function fib(uint _n) public returns (uint) {
        prev = 1;
        curr = 0;
        next = prev + curr;
        iter = _n;
        while(iter > 1){
            iter = iter - 1;
            prev = curr;
            curr = next;
            next = curr + prev;
        }
        
        return curr;
    }
    
    function XOR(uint a, uint b) public returns (bool) {
        return a != b;
    }
    
    function concat(string a, string b) public returns(string) {
        bytes memory _a = bytes(_a);
        bytes memory _b = bytes(_b);
        
        string memory ab = new string(_a.length + _b.length);
        bytes memory bab = bytes(ab);
        uint k = 0;
        for (uint i = 0; i < _a.length; i++) bab[k++] = _a[i];
        for (i = 0; i < _b.length; i++) bab[k++] = _b[i];
        
        return string(bab); 
    }
}