# sample-solidity-project

Sample solidity project to show inheritance and testing of solidity files

# File structure

``` solidity
contract Company
contract Employee is Company
contract TestEmployee is Employee
```

### Company contract

[Company.sol](https://github.com/prateek-adhikaree/sample-solidity-project/blob/master/contracts/Company.sol)
- This contract has the constructor as 'internal' as it needs to be inherited by another contract
- Cannot be deployed on its own

### Employee contract
[Employee.sol](https://github.com/prateek-adhikaree/sample-solidity-project/blob/master/contracts/Employee.sol)
- This contract inherits Company
- Employee contract is the contract that will be deployed if we need to use the functions in Company and Employee

### TestEmployee contract
[TestEmployee.sol](https://github.com/prateek-adhikaree/sample-solidity-project/blob/master/contracts/TestEmployee.sol)
- This is the Test contracted created just for functional testing 
- Inherits Employee contract
- Encapsulates the functions that need testing
