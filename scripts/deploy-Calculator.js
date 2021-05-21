const { ethers } = require("hardhat");

async function main() {
  const Calculator = await ethers.getContractFactory("Calculator");
  console.log(Calculator);
  const calculator = await Calculator.deploy();

  await calculator.deployed();

  console.log("Calculator deployed to:", calculator.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  })