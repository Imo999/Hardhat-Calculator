const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Calculator", function () {
  let calculator;

  this.beforeEach(async () => {
    const Calculator = await ethers.getContractFactory("Calculator");
    calculator = await Calculator.deploy();
  })


  it("should return the addition of both parameters", async function () {
    expect(await calculator.add(20, 15)).to.equal(35);
  });

  it("should return the substraction of both parameters", async function () {
    expect(await calculator.sub(500, 150)).to.equal(350);

  })

  it("should return the multiplication of both parameters", async function () {
    expect(await calculator.mul(5, 5)).to.equal(25);

  })

  it("should return the division of both parameters", async function () {
    expect(await calculator.div(10, 2)).to.equal(5);
    await expect(calculator.div(2, 0)).to.be.revertedWith("Calculator can not divide digit 0");

  })

  it("should return the modulo of both parameters", async function () {
    expect(await calculator.mod(122, 7)).to.equal(3);
  })
});