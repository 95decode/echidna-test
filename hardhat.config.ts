import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

const config: HardhatUserConfig = {
  solidity: {
    compilers: [{
      version: "0.8.9",
      settings: {
        optimizer: {
          enabled: true,
          runs: 200,
          details: {
            yul: true,
            yulDetails : {
              stackAllocation : true
            },
          },
        },
      },
    },{
      version: "0.8.16",
      settings: {
        optimizer: {
          enabled: true,
          runs: 200,
          details: {
            yul: true,
            yulDetails : {
              stackAllocation : true
            },
          },
        },
      },
    }],
  },
};

export default config;
