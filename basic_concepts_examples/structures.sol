// SPDX-License-Identifier: UNLICENSED;
pragma solidity >=0.8.0 <0.9.0;

contract estructuras {
    // Estrcture of a client of a paying website
    struct client {
        uint256 id;
        string name;
        string username;
        uint256 age;
        string email;
        uint256 phone;
    }

    client client_1 =
        client(1, "James", "Falsitus", 23, "falsitus@gmail.com", 911);

    // Marketplace website
    struct marketplace {
        string corporate_name;
        string corporate_address;
        string url;
    }

    marketplace amazon =
        marketplace("Amazon", "California, Palo Alto", "amazon.com");

    // Marketplace website product
    struct product {
        string name;
        uint256 price;
        string link;
        string brand;
    }
}
