const { expect } = require("chai");

describe("LendingPool", function () {

  it("Should allow deposits", async function () {

    const Pool = await ethers.getContractFactory("LendingPool");
    const pool = await Pool.deploy();

    await pool.deposit({ value: ethers.parseEther("1") });

    const balance = await pool.deposits(await ethers.provider.getSigner().getAddress());

    expect(balance).to.equal(ethers.parseEther("1"));

  });

});
