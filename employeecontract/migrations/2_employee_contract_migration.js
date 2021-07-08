var EmployeeContract = artifacts.require('./EmployeeContract.sol');

module.exports = function(deployer) {
  deployer.deploy(EmployeeContract, 
    ["0x549EFA9265067f4Cb4F4f9f516F47099857c7667",
      "0xA072dC9aA99E58eFb0795543D2b532DadA6bc3Ef",
      "0x8359b1B2c90CEd2F43f700649471A21784954B0D",
      "0x7fc9605E4d3f31fA10bF82b0Cb8cB8Fa7B1d527f"
    ], [
      "Chan Broset",
      "Ganji",
      "Dan Kazim",
      "Tarun"
    ], [
      200,
      150,
      150,
      150
    ]);
}
