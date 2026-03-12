async function main() {

  const Token = await ethers.getContractFactory("GenexaToken");
  const token = await Token.deploy();

  await token.waitForDeployment();

  console.log("GenexaToken deployed:", await token.getAddress());

}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
