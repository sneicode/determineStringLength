pragma solidity 0.8.4;

contract utf8String {
    
    //---------------------BEGIN Code to copy-paste--------------


    function nameValidator(string memory str) public pure returns (bool){
        
        uint length = _utf8StringLength(str);
        
        require(length <= 20, "Name too long, length is limited to 20 characters");
        require(length > 3, "Name too short, please assure a minimum of 4 characters");
        
        return true;
        
        // how to commit the name to the cat struct
    }

    function _utf8StringLength(string memory str) private pure returns (uint) {
        
        return bytes(str).length;
    }
    
    // this code allows for spaces between characters, should the code prevent this? (max the killer cat)
    // CHANGE / UPDATE CAT NAMES? opinion: changing cat names kind of self-defeats the uniqueness of an NFT
    // Question: once assigned, should the user be allowed to change the name(s) of her cat(s)? 
    // --> Maybe once and against a (high) fee 
    // --> maybe allow a single change per cat with a time limit, i.e. 1 week after creation name change no longer possible.
    
    
}