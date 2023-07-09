// SPDX-License-Identifier: MIT

// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions

pragma solidity ^0.8.18;

/**
 * @title DecentralizedStableCoin
 * @author Daryle Tan
 *
 * The system is designed to be as minimal as possible, and have the tokens maintain a 1 token = $1 peg.
 * This stablecoin has the properties:
 * -Exogenous Collateral
 * -Dollar Pegged
 * -Algorithmically Stable
 *
 * It is similar to DAI if DAI had no governance, no fees, and was only backed by WETH and WBTC
 *
 * Our DSC system should always be "overcollateralized". At no point, should the value of all collateral <= the $ backed value of all the DSC.
 * @notice This contract is the core of the DSC System. It handles all the logic for minting and redeeming DSC, as well as depositing & withdrawing collateral.
 * @notice This contract is VERY loosely based on the MakerDAO DSS (DAI) system.
 */

contract DSCEngine {
    /////////////
    // Errors //
    ///////////
    error DSCEngine__NeedsMoreThanZero();

    ////////////////////
    // State Variables//
    ///////////////////
    mapping(address token => address priceFeed) private s_priceFeeds;

    //////////////
    // Modifiers//
    /////////////
    modifier moreThanZero(uint256 amount) {
        if (amount == 0) {
            revert DSCEngine__NeedsMoreThanZero();
        }
        _;
    }

    //////////////
    // Functions //
    /////////////
    constructor() {}

    ///////////////////////
    // External Functions //
    ///////////////////////
    function depositCollateralAndMintDsc() external {}

    /**
     * @param tokenCollateralAddress the address of the token to deposit as collateral
     * @param  amountCollateral The amount of collateral to  deposit
     */
    function depositCollateral(
        address tokenCollateralAddress,
        uint256 amountCollateral
    ) external moreThanZero {}

    function redeemCollateralForDsc() external {}

    function redeemCollateral() external {}

    function mintDSC() {}

    function burnDsc() external {}

    function liquidate() external {}

    function getHealthFactor() external view {}
}
