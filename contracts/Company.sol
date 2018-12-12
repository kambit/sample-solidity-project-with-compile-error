pragma solidity ^0.4.25;

contract Company {
    
    address owner;
    
    constructor ()  {
        owner = msg.sender;
        addEmployee(owner);
    
    
    mapping(address => bool) public isEmployee;
    mapping(address => uint) internal employeeToHoursWorked;
    
    function addEmployee (address _employee) public {
        require(msg.sender == owner);
        isEmployee[_employee] = true;
    }
    
    function getHoursLogged (address _employee) public view returns (uint) {
        require(msg.sender == owner || msg.sender == _employee);
        return employeeToHoursWorked[_employee];
    }
}