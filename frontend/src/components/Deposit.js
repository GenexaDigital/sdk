import { ethers } from "ethers";

function Deposit() {

  const deposit = async () => {

    const provider = new ethers.BrowserProvider(window.ethereum);
    const signer = await provider.getSigner();

    console.log("Deposit triggered");

  };

  return (
    <div>
      <button onClick={deposit}>Deposit</button>
    </div>
  );

}

export default Deposit;
