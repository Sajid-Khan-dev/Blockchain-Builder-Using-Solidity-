// Problem Statement 5: Product Ownership Registry
// Objective: Develop a contract ProductRegistry to register and transfer ownership of products.
// Use a struct named Product that includes properties for product ID and current owner address.
// Implement a mapping from product ID to Product.
// Write a function for product registration, assigning the caller as the initial owner.
// // Create a function to transfer product ownership to another address, ensuring only the current owner can transfer the product.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProductRegistry {
    struct Product {
        address currentOwner;
        bool exists;
    }

    mapping(uint256 => Product) products;

    

    function registerProduct(uint256 productId) external {
        require(!products[productId].exists, "Product already registered");
        products[productId] = Product(msg.sender, true);
    }

    function transferOwnership(uint256 productId, address newOwner) external {
        require(products[productId].exists, "Product does not exist");
        require(products[productId].currentOwner == msg.sender, "You are not the current owner");
        
        products[productId].currentOwner = newOwner;
    }

    function getProductOwner(uint256 productId) external view returns (address) {
        require(products[productId].exists, "Product does not exist");
        return products[productId].currentOwner;
    }
}
