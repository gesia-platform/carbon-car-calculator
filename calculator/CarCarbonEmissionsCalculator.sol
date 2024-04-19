// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

import "../CarbonEmissions.sol";

import "../util/SafeMath.sol";

contract CarCarbonEmissionsCalculator {
    using SafeMath for uint256;

    uint256 constant GASOLINE_EMISSIONS_PER_KG = 2177600000; // scaled by 1,000,000,000
    uint256 constant DIESEL_EMISSIONS_PER_KG = 2600300000; // scaled by 1,000,000,000
    uint256 constant LPG_EMISSIONS_PER_KG = 3730900000; // scaled by 1,000,000,000

    uint256 constant AVERAGE_PRICE_GASOLINE = 157680; // scaled by 100
    uint256 constant AVERAGE_PRICE_DIESEL = 138898; // scaled by 100
    uint256 constant AVERAGE_PRICE_LPG = 96033; // scaled by 100

    enum CAR_TYPE {
        GASOLINE,
        DIESEL,
        LPG
    }

    CarbonEmissions public immutable carbonEmissions;

    constructor(CarbonEmissions _carbonEmissions)  {
        carbonEmissions = _carbonEmissions;
    }

    function calculate(
        uint256 applicationID,
        bytes memory userID,
        uint256 value,
        CAR_TYPE car_type
    ) external returns (uint256) {
        uint256 result;

        if(car_type == CAR_TYPE.GASOLINE){
            result = GASOLINE_EMISSIONS_PER_KG.mul(value).mul(10e4).mul(10e1).div(AVERAGE_PRICE_GASOLINE).div(10e4);
        } else if(car_type == CAR_TYPE.DIESEL) {
            result = DIESEL_EMISSIONS_PER_KG.mul(value).mul(10e4).mul(10e1).div(AVERAGE_PRICE_DIESEL).div(10e4);
        } else {
            result = LPG_EMISSIONS_PER_KG.mul(value).mul(10e4).mul(10e1).div(AVERAGE_PRICE_LPG).div(10e4);
        }

        carbonEmissions.mint(applicationID, result, userID);

        return result;
    }
}