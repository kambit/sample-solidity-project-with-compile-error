pragma solidity ^0.4.25;

import "./Employee.sol";

contract TestEmployee is Employee {
    // employee able to add his hours worked correctly
    function testLogHour() public {
        uint hoursWorked = employeeToHoursWorked[msg.sender];
        logHour(6);
        require (hoursWorked + 6 == employeeToHoursWorked[msg.sender], "Employee's hours not update accurately");
    }
    
    // owner can add an employee
    function testAddEmployee () public {
        // random address
        address _employee = 0x583031D1113aD414F02576BD6afaBfb302140225;
        
        // making sure that employee is removed from the company's database'
        isEmployee[_employee] = false;
        require (!isEmployee[_employee], "Address provided is already an employee");
        addEmployee(_employee);
        require (isEmployee[_employee], "Address didn't get added as an employee");
    }
    
    // get hours logged by an employee
    function testGetHoursLogged () public view returns (uint) {
        // random address
        address _employee = 0x583031D1113aD414F02576BD6afaBfb302140225;
        
        // making sure _employee address is added to the employee map
        if (!isEmployee[_employee])
            addEmployee(_employee);
        
        uint hoursLogged = getHoursLogged(_employee);
        logHour(7);
        require (hoursLogged + 7 == getHoursLogged(_employee), "Hours logged did not increase as expected");
    }
}