function Borrow() {

  const borrow = () => {
    console.log("Borrow triggered");
  };

  return (
    <div>
      <button onClick={borrow}>Borrow</button>
    </div>
  );

}

export default Borrow;
