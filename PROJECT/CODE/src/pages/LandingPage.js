import React from 'react';
import "../styles/LandingPage.css"
import gameImage from "../assets/Gameboy.png"
import button from "../assets/Button.png"
import NavBar from '../components/NavBar';

const LandingPage = () => {
    return (
        <div className="landingPage">
            <div className="banner-wrapper">
                <div className="banner">
                    <div className="overlap-group">
                        <header className="header">
                            <NavBar/>
                        </header>
                        <button className='button' type='button'>
                            <img className='button-image' alt='button' src={button} />
                        </button>
                        <h1 className="headline">Encontrarás los mejores juegos del mercado</h1>
                        <img className="frame" alt="Frame" src={gameImage} />
                    </div>
                </div>
            </div>
        </div>
    );
};

export default LandingPage;