//Contract based on https://docs.openzeppelin.com/contracts/3.x/erc721
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.3;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LulaNFT is ERC721, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("LulaNFT", "LNFT") {}

    function mintNFT(
        address to,
        uint256 tokenId,
        string memory uri
    ) public payable virtual {
        require(msg.value >= 10, "Not enough ETH sent; check price!");

        _mint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }
}
