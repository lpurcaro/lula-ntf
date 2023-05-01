import { ethers } from "ethers";
const { API_URL } = process.env;

export function getProvider(): ethers.providers.Provider {
  return new ethers.providers.JsonRpcProvider(API_URL);
}