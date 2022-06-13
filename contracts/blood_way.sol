// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";


contract Bloodway is ERC721, Ownable {

    using Counters for Counters.counter; Counters.Counter; Counters.Counter private _tokenIds;
    constructor(string memory Bloodway, string memory BLD) ERC721(Bloodway, BLD) {
        attributes = { 
            Name: _name,
            Gender: _gender,
            Bloodtype: _bloodtype,
            MedicalHistory: _medicalhistory, 
            StageNumber: _stagenumber,
        }
    }

    function createTicket(address reciever, string memory tokenURI) external onlyOwner returns (uint256) {
        _tokenIds.increment();

        uint256 newTicketId = _ticketIds.current();
        _create(reciever, newTicketId);
        _setTokenURI(newTicketId, tokenURI);
        
        return newTicketId;

    }

    createTicket(reciever, tokenURI;)

    function recieveBarcode(address reciever, string memory tokenURI, string Barcode) external returns (True, False) {

        if (recieveBarcode == True) {
            addInformation()
        }
    }
}