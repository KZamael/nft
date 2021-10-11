pragma solidity 0.5.16;

//import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol";

import "./ERC721Full.sol";

contract Color is ERC721Full {

    string[] public colors;
    mapping(string => bool) _colorExists;

    /* runs when smart contract gets deployed to the blockchain for the first time. */
    constructor() ERC721Full("Color", "COLOR") public {
    }

    /* E.G. color = "#FFFFFF" */
    function mint(string memory _color) public {
        // Require unique color
        // Color - add the color
        uint _id = colors.push(_color);
        // Its becoming a new unique token here
        // Call the mint function
        _mint(msg.sender, _id);
        // Color - track it
        _colorExists[_color] = true;
    }
    
}