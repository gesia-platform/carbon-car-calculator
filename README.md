# 🚗 Car Carbon Footprint Calculator

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

## 📖 Overview
The Smart Contract-Based Footprint Calculator is a decentralized tool designed to estimate the carbon footprint associated with car fuel consumption. This smart contract operates on a blockchain platform and provides a straightforward way to calculate and retrieve carbon emission data from the blockchain.

## ✨ Features
### Set Car Emission Factors by Fuel Type (Operator-Only)
> This feature allows authorized operators to set the emission factors for each car fuel type. It provides flexibility to update the data as needed.

### addFuelVolumes(fuelType, emission)
```
Overview:
 - This function sets the fuel volume according to the "fuelType" parameter.
 
Parameter:
 - fuelType(Type): "fuelType" is a "fuel classification name" parameter. Mainly in accordance with IPCC CEF(Carbon Emission Factor).
 - emission(kg/L): "emission" is the carbon emission factor of the fuel in the "fuelType" parameter.

Example:
 - fuelType: "GASOLINE", emission: 2.1776(kgCO2/L)
    1. Scale by 10000
    2. addFuelVolumes(GASOLINE, 21776)
```

### Get Car Emission Factors by Fuel Type (Public)
> Users can retrieve the emission factors of car fuel for a specific type using this public function. It offers transparency and access to car fuel emission data.

### getFuelEmission(fuelType)
```
Overview:
 - This function gets the fuel volume according to the "fuelType" parameter.

Parameter:
 - fuelType(Type): "fuelType" is a "fuel classification name" parameter. Mainly in accordance with IPCC CEF(Carbon Emission Factor).
```

### Calculate Carbon Footprint (Public)
> Users can calculate the carbon footprint by providing the car fuel type, distance traveled, and fuel economy(km/L). This public function returns an estimate of the carbon footprint associated with the specified car fuel type, distance, and fuel economy(km/L).

### calculateCO2ByFuel(fuelType, distance, efficiency)
```
Overview:
 - This function calculates the carbon footprint according to distance and car efficiency of the "fuelType" parameter.

Parameter:
 - fuelType(Type): "fuelType" is a "fuel classification name" parameter. Mainly in accordance with IPCC CEF(Carbon Emission Factor).
 - distance(km): "distance" is the distance value of the car in the "fuelType" parameter.
 - efficiency(km/L): "efficiency" is the car economy value of the car in the "fuelType" parameter.

Example
 - fuelType: "GASOLINE", distance: 1000(km), efficiency: 25(km/L)
    1. Scale by 10000
    2. calculateCO2ByFuel(GASOLINE, 100000000, 2500000)
    3. 87104000000000000000 (in UI it should be divided by 18 decimals 87.104)
```

## 🚀 Smart Contract Deployment Information
The Smart Contract-Based Carbon Footprint Calculator has been deployed on the Gesia Chain. Below are the deployment details:

### Operator Contract
```
Contract Address: 0x05c2Cf146d136e9C7c79d5aDAF31704b6e73c30B
Transaction Hash: 0x878b2a6f8ad46f32065a4e5ec953160490efceb3e3a02da08314226dffe84eb4
```

### Calculator Contract
```
Contract Address: 0x878cc96bf7F9dA58142559312B2C6211DECD5834
Transaction Hash: 0x68efa73287e36e5dd98f0a228c919d526567343735a98aa1f9ab1afa564d7678
```

You can verify the deployment of the Calculator Contract by checking the contract address and transaction hash on [Gesia Explorer](https://explorer.gesia.io). Here are the links for your convenience:

- [Operator Contract on Gesia Chain](https://explorer.gesia.io/address/0x05c2Cf146d136e9C7c79d5aDAF31704b6e73c30B)
- [Calculator Contract on Gesia Chain](https://explorer.gesia.io/address/0x878cc96bf7F9dA58142559312B2C6211DECD5834)

## 📝 How is it calculated?
The carbon emissions are calculated based on the emission factors and calculation methods referenced from the [에너지, 산업공정의 국가 에너지 발열량 및 온실가스 배출계수](https://tips.energy.or.kr/carbon/Ggas_tatistics03.do)

The following formula is the essential formula of Carbon Footprint Calculator.
``` plain
# emission factor of gasoline: 2.1776
# emission factor of diesel: 2.6003
# emission factor of LPG: 3.7309

range(km) ÷ fuel economy(km/L) x emission factors of car fuel(kgCO2/L)
```

Please refer to the [Link](https://docs.google.com/spreadsheets/d/1Ux_1j0GeKGeHm8ODT-M-Hr23sCayQYw70shNw2le0Bs/edit#gid=328263512) for more detailed info.

## 📚 Sources
- [에너지, 산업공정의 국가 에너지 발열량 및 온실가스 배출계수](https://tips.energy.or.kr/carbon/Ggas_tatistics03.do)
- [List of elements by atomic properties](https://en.wikipedia.org/wiki/List_of_elements_by_atomic_properties)

## 📄 License
This project is licensed under the [MIT License](LICENSE).