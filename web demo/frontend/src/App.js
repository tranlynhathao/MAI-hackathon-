import React, { useState, useEffect } from 'react';
import './App.css'; // Import CSS

function App() {
  const [isScrolled, setIsScrolled] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      if (window.scrollY > 0) {
        setIsScrolled(true);
      } else {
        setIsScrolled(false);
      }
    };

    window.addEventListener('scroll', handleScroll);

    return () => {
      window.removeEventListener('scroll', handleScroll);
    };
  }, []);

  return (
    <div>
      <header id="header" className={isScrolled ? 'scroll-background' : ''}>
        <div id="logo">
          <a href="../HOME.html">
            <img src="../IMAG/logo.png" alt="Logo" />
          </a>
        </div>
        <div id="navigation">
          <ul>
            <li>
              <a href="../HTML/HOME.html">HOME</a>
            </li>
            <li>
              <a href="../HTML/SCHEDULE.html">SCHEDULE</a>
            </li>
            <li>
              <a href="../HTML/ABOUTPRODUCT.html">ABOUT PRODUCT</a>
            </li>
          </ul>
        </div>
        <div id="account">
          <a href="../HTML/LOGIN.html">LOG IN</a>
        </div>
      </header>
      <div id="hospital">
        <img src="../IMAG/hospital.jpg" alt="Bệnh viện" />
      </div>
      <div id="service">
        <div className="hero">
          <img src="../IMAG/note.png" alt="" />
          <h1>electronic medical examination book</h1>
        </div>
        <div className="hero">
          <img src="../IMAG/line_up.jpg" alt="" />
          <h1>medical register</h1>
        </div>
      </div>
      <footer className="footer">
        <div className="footer-content">
          <div className="container">
            <p>&copy; MAI - Medical Access Initiative</p>
            <div className="social-icons">
              <a href="">
                <img src="../IMAG/gmail.png" alt="Gmail" />
              </a>
              <a href="">
                <img src="../IMAG/github.png" alt="GitHub" />
              </a>
            </div>
          </div>
        </div>
      </footer>
    </div>
  );
}

export default App;
