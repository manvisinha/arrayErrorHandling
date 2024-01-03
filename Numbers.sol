// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
    contract Numbers
    {
    uint256 public num;
    uint256 public square;

    function validateOddWholeNumber() public view returns(uint)
    {
        require(num%2!=0, "Number is odd.");
        return num%2;

    }

    function checkEvenPerfectSquare() public returns(uint)
    {
        square= num*num;
        assert(square%2==0);
        return(square);
    }

    function isWholeNumber() public view returns(string memory)
    {
        if(num<0)
        {
            revert("Number should be a whole number.");
        }
        else
        {
          return "Number is a whole number";
        }
    }
}
