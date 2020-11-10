// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <=0.7.0;

contract Escrows {
    address[16] public adopters;

    // This is the actual escrow code
    // enum State { AWAITING_PAYMENT, AWAITING_DELIVERY, COMPLETE }
    // State public currState;

    // address public buyer;
    // address payable public seller;

    // modifier onlyBuyer() {
    //     require(msg.sender == buyer, "Only buyer can call this method");
    //     _;
    // }

    // constructor(address _buyer, address payable _seller) public {
    //     buyer = _buyer;
    //     seller = _seller;
    // }

    // function deposit() onlyBuyer external payable {
    //     require(currState == State.AWAITING_PAYMENT, "Already paid");
    //     currState = State.AWAITING_DELIVERY;
    // }

    // function confirmDelivery() onlyBuyer external {
    //     require(currState == State.AWAITING_DELIVERY, "Cannot confirm delivery");
    //     seller.transfer(address(this).balance);
    //     currState = State.COMPLETE;
    // }

    function adopt(uint256 petId) public returns (uint256) {
        adopters[petId] = msg.sender;
        return petId;
    }

    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
