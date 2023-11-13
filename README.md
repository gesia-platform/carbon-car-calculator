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

## 📝 How is it calculated?
The carbon emissions are calculated based on the emission factors and calculation methods referenced from the [에너지, 산업공정의 국가 에너지 발열량 및 온실가스 배출계수](https://tips.energy.or.kr/carbon/Ggas_tatistics03.do)

## 📚 Sources
- [에너지, 산업공정의 국가 에너지 발열량 및 온실가스 배출계수](https://tips.energy.or.kr/carbon/Ggas_tatistics03.do)
- [List of elements by atomic properties](https://en.wikipedia.org/wiki/List_of_elements_by_atomic_properties)

## 📄 License
This project is licensed under the [MIT License](LICENSE).