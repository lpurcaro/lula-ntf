async function main() {
    // Grab the contract factory
    const LulaNFT = await ethers.getContractFactory("LulaNFT");
 
    // Start deployment, returning a promise that resolves to a contract object
    const lulaNFT = await LulaNFT.deploy(); // Instance of the contract
    console.log("Contract deployed to address:", lulaNFT.address);
 }
 
 main()
   .then(() => process.exit(0))
   .catch(error => {
     console.error(error);
     process.exit(1);
   });