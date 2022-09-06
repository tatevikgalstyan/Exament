// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import  "@openzeppelin/contracts/access/Ownable.sol";
contract BoxContrat is Ownable{
uint private m_value;
event ValueChanged(uint old_value, uint new_value);

function store(uint104 value) public onlyOwner {
   uint old_value=m_value;
    m_value=value;
    emit ValueChanged(old_value, m_value);
}
function retrieve() public view returns (uint){
    return m_value;
}

}

//target 0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B
// callback 0xff2257390000000000000000000000000000000000000000000000000000000000000028
//test
//29107966304494993084471481943826024876396861009541516818284742339413404224333