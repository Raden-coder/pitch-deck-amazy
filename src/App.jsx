import React, { useState } from "react";
import Slide from "./components/Slide";
import slides from "./components/SlideData";
import "./index.css";

function App() {
  const [index, setIndex] = useState(0);

  const next = () => setIndex((prev) => Math.min(prev + 1, slides.length - 1));
  const prev = () => setIndex((prev) => Math.max(prev - 1, 0));

  const { title, subtitle, content } = slides[index];

  return (
    <div className="App">
      <Slide title={title} subtitle={subtitle} content={content} />
      <div className="nav">
        <button onClick={prev} disabled={index === 0}>⬅ Prev</button>
        <button onClick={next} disabled={index === slides.length - 1}>Next ➡</button>
      </div>
    </div>
  );
}

export default App;
