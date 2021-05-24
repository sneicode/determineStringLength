pragma solidity 0.8.4;

contract utf8StringLength {
    
    //---------------------BEGIN Code to copy-paste--------------

    function utfStringLength(string memory str) public returns (uint) {
        uint length = 0;
        uint i=0;
        string memory string_rep = bytes(str);

        while (i<string_rep.length)
        {
            if (string_rep[i]>>7==0)
                i+=1;
            else if (string_rep[i]>>5==0x6)
                i+=2;
            else if (string_rep[i]>>4==0xE)
                i+=3;
            else if (string_rep[i]>>3==0x1E)
                i+=4;
            else
                //For safety
                i+=1;

            length++;
        }
    }
}