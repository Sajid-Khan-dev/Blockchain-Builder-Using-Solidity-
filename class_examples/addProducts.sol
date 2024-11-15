// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Products {
    struct addProductDetails {
        uint256 productID;
        string productName;
        uint256 price;
    }

    mapping(uint256 => addProductDetails) public information;

    function addProduct( uint256 _productID,string memory _productName,uint256 _price) public {

        addProductDetails memory newProduct = addProductDetails( _productID,_productName,_price);

        information[_productID] = newProduct;
    }

}
