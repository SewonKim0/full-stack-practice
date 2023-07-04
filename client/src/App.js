import './App.css';
import { useState, useEffect } from "react";

function App() {
  //state: data
  const [data, setData] = useState(undefined);
  //effect: fetch data
  useEffect(() => {
    alert("running fetch..."); //TEST
    fetch("https://us-central1-full-stack-practice-0.cloudfunctions.net/app/api")
      .then((res) => {
        alert("result returned!"); //TEST
        return res.text();
      })
      .catch((err) => {
        alert("error!");
        alert(err.response.status);
        console.log(err);
      })
      .then((text) => {
        alert(text); //TEST
        setData(text);
      })
  }, [])

  return (
    <div className="App">
      <p> Hello World! This is the updated text. </p>
      {data === undefined ?
      <p> Loading... </p> :
      <p> {data} </p>}
    </div>
  );
}

export default App;
