# 🚗 Car Carbon Footprint Calculator

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

## 📖 Overview
The Smart Contract-Based Footprint Calculator is a decentralized tool designed to estimate the carbon footprint associated with car fuel consumption. This smart contract operates on a blockchain platform and provides a straightforward way to calculate and retrieve carbon emission data from the blockchain.

## ✨ Features
**Set Car Emission Factors by Fuel Type (Operator-Only)**: This feature allows authorized operators to set the emission factors for each car fuel type. It provides flexibility to update the data as needed.
```
addFuelVolumes(fuelType, emission)

GASOLINE(2.1776kgCO2/L)
 - Scale by 10000
 - addFuelVolumes(GASOLINE, 21776)
```

**Get Car Emission Factors by Fuel Type (Public)**: Users can retrieve the emission factors of car fuel for a specific type using this public function. It offers transparency and access to car fuel emission data.
```
getFuelEmission(fuelType)
```

**Calculate Carbon Footprint (Public)**: Users can calculate the carbon footprint by providing the car fuel type, distance traveled, and fuel economy(km/L). This public function returns an estimate of the carbon footprint associated with the specified car fuel type, distance, and fuel economy(km/L).
```
calculateCO2ByFuel(fuelType, distance, efficiency)

GASOLINE(fuel type), 1000km(distance), 25km/L(fuel economy)
 - Scale by 10000
 - calculateCO2ByFuel(GASOLINE, 100000000, 2500000)
 - 87104000000000000000 (in UI it should be divided by 18 decimals 87.104)
```

## 🚀 Smart Contract Deployment Information

The Smart Contract-Based Carbon Footprint Calculator has been deployed on the Gesia Chain. Below are the deployment details:

### Operator Contract

- **Contract Address**: 0x05c2Cf146d136e9C7c79d5aDAF31704b6e73c30B
- **Transaction Hash**: 0x878b2a6f8ad46f32065a4e5ec953160490efceb3e3a02da08314226dffe84eb4

### Calculator Contract

- **Contract Address**: 0x878cc96bf7F9dA58142559312B2C6211DECD5834
- **Transaction Hash**: 0x68efa73287e36e5dd98f0a228c919d526567343735a98aa1f9ab1afa564d7678

You can verify the deployment of the Calculator Contract by checking the contract address and transaction hash on [Gesia Explorer](https://explorer.gesia.io). Here are the links for your convenience:

- [Operator Contract on Gesia Chain](https://explorer.gesia.io/address/0x05c2Cf146d136e9C7c79d5aDAF31704b6e73c30B)
- [Calculator Contract on Gesia Chain](https://explorer.gesia.io/address/0x878cc96bf7F9dA58142559312B2C6211DECD5834)

## 📝 How is it calculated?
The carbon emissions are calculated based on the emission factors and calculation methods referenced from the [에너지, 산업공정의 국가 에너지 발열량 및 온실가스 배출계수](https://tips.energy.or.kr/carbon/Ggas_tatistics03.do)

The following formula is the essential formula of Carbon Footprint Calculator.
``` plain
range(km) / fuel economy(km/L) x emission factors of car fuel(kgCO2/L)
 ```

## 📚 Sources
- [에너지, 산업공정의 국가 에너지 발열량 및 온실가스 배출계수](https://tips.energy.or.kr/carbon/Ggas_tatistics03.do)
- [List of elements by atomic properties](https://en.wikipedia.org/wiki/List_of_elements_by_atomic_properties)

## 📄 License
This project is licensed under the [MIT License](LICENSE).