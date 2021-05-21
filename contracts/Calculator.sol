// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
// Import Library

import "./Ownable.sol";

/**
 *
 * This Template for draft solidity file
 *
 * function declarations order
 *
 * constructor
 * receive function (if exists)
 * fallback function (if exists)
 * external
 * public
 * internal
 * private
 *
 * it will be necessary to place the functions which have a view and pure modifier last.
 *
 */

contract Calculator is Ownable {
    /**
     * ############################### Library Usage ################################
     */
    /**
     * ############################### Variable ################################
     *
     *
     *
     */
    /**
     * ############################### Events ################################
     *
     *
     *
     */
    /**
     * ############################### Constructor ################################
     *
     *
     *
     */
    constructor(address owner_) Ownable(owner_) {
        //
    }

    /**
     * ############################### Modifier ################################
     *
     *
     *contract Test {
   function getResult() public pure returns(uint product, uint sum){
      uint a = 1; 
      uint b = 2;
      product = a * b;
      sum = a + b; 
   }
     */
    /**
     * ############################### Fonctions ################################
     *
     * Ce sont des fonction pure
     *
     */

    function add(uint256 nb1, uint256 nb2) public pure returns (uint256) {
        return nb1 + nb2;
    }

    function sum(uint256 nb1, uint256 nb2) public pure returns (uint256) {
        return nb1 - nb2;
    }

    function mul(uint256 nb1, uint256 nb2) public pure returns (uint256) {
        return nb1 * nb2;
    }

    function div(uint256 nb1, uint256 nb2) public pure returns (uint256) {
        return nb1 / nb2;
    }

    function mod(uint256 nb1, uint256 nb2) public pure returns (uint256) {
        return nb1 % nb2;
    }
}
