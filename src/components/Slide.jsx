import React from "react";

function Slide({ title, subtitle, content }) {
  return (
    <div className="slide">
      <h1>{title}</h1>
      {subtitle && <h2>{subtitle}</h2>}
      <p style={{ whiteSpace: "pre-line" }}>{content}</p>
    </div>
  );
}

export default Slide;
