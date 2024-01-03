# Numbers Smart Contract
The 'Numbers' smart contract provides functions to perform various operations and operate upon numbers. It includes functions to validate if the number is odd, check if the perfect square of a number is even, and determine if the number is a whole number or not.

# Variables Used
- 'num': A public variable representing a numerical value.
- 'square': A public variable storing the square of 'num'.

# Functions
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix-project.org/

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

    
         
## validateOddWholeNumber():
The validateOddWholeNumber function is declared as view to indicate that it reads variables from the contract without modifying them. It returns an unsigned integer representing the result of the odd number validation. The require statement ensures that the stored number (num) is odd. If the condition is met, the function returns 1, indicating that the number is odd.
## checkEvenPerfectSquare():
The checkEvenPerfectSquare function doesn't declare view or pure as it modifies the global variable num. It calculates the square of the stored number and uses the assert statement to ensure the square is even. The function returns an unsigned integer representing the calculated square.
## isWholeNumber():
The isWholeNumber function is declared as view to indicate that it reads the square variable from the contract without modifying it. If the stored number (num) is less than 0, the function reverts with an error statement, enforcing the requirement for a whole number. Otherwise, it returns the string "Number is a whole number."

# Author
Manvi Sinha
[@sinhamanvi17@gmail.com]

# License
This smart contract is open-source and released under the MIT License.

