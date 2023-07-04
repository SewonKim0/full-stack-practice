import './App.css';
import { useState, useEffect } from "react";

function App() {
  //state: data
  const [data, setData] = useState(undefined);
  //effect: fetch data
  useEffect(() => {
    fetch("/api")
      .then((res) => {
        return res.json();
      })
      .then((json) => {
        alert(json); //TEST
        setData(json);
      })
  }, [])

  return (
    <div className="App">
      <p> Hello World! Hello. The data is on the next line! </p>
      {data === undefined ?
      <p> Loading... </p> :
      <ul>
        {data.map((value) => {
          return <li> {value} </li>;
        })}  
      </ul>}
    </div>
  );
}

export default App;
