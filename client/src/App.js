import './App.css';
import { useState, useEffect } from "react";

function App() {
  //state: data
  const [data, setData] = useState(undefined);
  //effect: fetch data
  useEffect(() => {
    fetch("https://helloworld-7yriik3v2q-uc.a.run.app")
      .then((res) => {
        return res.text();
      })
      .then((text) => {
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
