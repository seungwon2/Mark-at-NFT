pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyCollectible is ERC721 {
    constructor(string _name, string _symbol)
        public
        ERC721Token(_name, _symbol)
    {}

    /**
     * Custom accessor to create a unique token
     */
    function mintUniqueTokenTo(
        address _to,
        uint256 _tokenId,
        string _tokenURI
    ) public {
        super._mint(_to, _tokenId);
        super._setTokenURI(_tokenId, _tokenURI);
    }
}
