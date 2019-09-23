pragma solidity ^0.5.0;

contract TodoList {
    // State of smart contract
    uint public taskCount = 0;

    // About Todo List
    struct Task{
        uint id;
        string content;
        bool completed;
    }

    // Like a dictionary in python
    mapping(uint => Task) public tasks;

    // Constructor
    constructor() public{
        createTask("Check out this Solidity program!");
    }

    // Assign Task
    function createTask(string memory _content) public {
        taskCount ++;
        // Intialization
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}