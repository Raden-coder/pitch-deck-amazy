#!/data/data/com.termux/files/usr/bin/bash

mkdir -p src/components

echo 'import React from "react";

function Slide({ title, subtitle, content }) {
  return (
    <div className="slide">
      <h1>{title}</h1>
      {subtitle && <h2>{subtitle}</h2>}
      <p style={{ whiteSpace: "pre-line" }}>{content}</p>
    </div>
  );
}

export default Slide;' > src/components/Slide.jsx

echo 'const slides = [
  {
    title: "Strategi Sales & Marketing",
    subtitle: "PT. Magfood Amazy International",
    content: "Green Bites with Amazy – Inovasi, Nilai Islam, dan Keberlanjutan"
  },
  {
    title: "Latar Belakang",
    content: "Lebih dari 250 outlet\nFokus keluarga Muslim\nDistribusi: outlet, frozen food, marketplace"
  },
  {
    title: "Pilar Strategi",
    content: "1. Kemasan Biodegradable\n2. Daur Ulang\n3. Kampanye Digital Hijau\n4. Edukasi & Transparansi\n5. Integrasi Nilai Islam"
  },
  {
    title: "Analisis SWOT",
    content: "Kekuatan: Brand halal, jaringan luas\nKelemahan: Digital marketing belum optimal\nPeluang: Tren green halal market\nAncaman: Fast food global"
  },
  {
    title: "Rencana Implementasi",
    content: "Q3 2025: Uji coba kemasan & kampanye\nQ4 2025: Workshop Eco-Halal\nQ1 2026: 100% biodegradable\nQ2 2026: Ekspansi digital & waralaba"
  },
  {
    title: "Metrik Keberhasilan",
    content: "🔹 Penjualan frozen +10%\n🔹 50K follower baru\n🔹 Reduksi limbah 10%\n🔹 10 outlet baru\n🔹 Engagement 1M impresi"
  },
  {
    title: "Penutup",
    content: "Bukan hanya bisnis halal,\nIni dakwah lewat keberlanjutan.\nTerima kasih.\n- Raden Coder"
  }
];

export default slides;' > src/components/SlideData.js

echo 'import React, { useState } from "react";
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

export default App;' > src/App.jsx

echo 'import React from "react";
import ReactDOM from "react-dom/client";
import "./index.css";
import App from "./App";

const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(<App />);' > src/index.js

echo 'body {
  font-family: "Arial", sans-serif;
  background: #f9f9f9;
  color: #222;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  margin: 0;
}

.slide {
  max-width: 800px;
  padding: 40px;
  background: #fff;
  border-radius: 12px;
  box-shadow: 0 4px 20px rgba(0,0,0,0.1);
  text-align: center;
}

.nav {
  margin-top: 20px;
  display: flex;
  justify-content: space-between;
}' > src/index.css

echo -e "\n✅ Semua file pitch deck berhasil dibuat di folder src/"

echo -e "\n📦 Sekarang commit & push ke GitHub..."
git add .
git commit -m "Tambah isi pitch deck React lengkap dari Ghia"
git push origin main

echo -e "\n🚀 Selesai! Siap untuk jalankan: vercel"
