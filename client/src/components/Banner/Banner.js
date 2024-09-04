import React, { useState } from 'react'
import { Link } from 'react-router-dom'
import Slider from 'react-slick'
import { woman2, diwali, womanpottery } from '../../assets/images'

const CustomSlide = ({ Subtext, imgSrc, text, buttonLink, buttonText }) => (
  <div
    style={{
      position: 'relative',
      display: 'flex',
      justifyContent: 'center',
      alignItems: 'center',
      height: '100vh', // Ensures the banner takes up the full viewport height
      overflow: 'hidden',
    }}
  >
    {/* Image as the full background */}
    <div
      style={{
        position: 'absolute',
        top: 0,
        left: 0,
        width: '100%',
        height: '100%',
        backgroundImage: `url(${imgSrc})`,
        backgroundSize: 'cover',
        backgroundPosition: 'center',
        zIndex: -1, // Place the image behind the text and button
      }}
    />

    {/* Overlay to reduce opacity */}
    <div
      style={{
        position: 'absolute',
        top: 0,
        left: 0,
        width: '100%',
        height: '100%',
        backgroundColor: 'rgba(0, 0, 0, 0.5)', // Black overlay with 50% opacity
        zIndex: 0, // Behind the text but above the image
      }}
    />

    {/* Text and button content */}
    <div
      style={{
        maxWidth: '450px',
        textAlign: 'left',
        zIndex: 1, // Ensure text and button appear above the overlay
      }}
    >
      <h1
        style={{
          marginBottom: '15px',
          fontSize: '2.5rem',
          color: '#fff', // White color for visibility
          fontWeight: 'bold', // Bold text
        }}
      >
        {text}
      </h1>
      <p
        style={{
          marginBottom: '25px',
          fontSize: '1.5rem',
          color: '#ccc', // Light gray for contrast
          fontWeight: 'bold', // Bold text
        }}
      >
        {Subtext}
      </p>

      <Link to={buttonLink}>
        <button className='bg-primeColor text-white text-lg font-bodyFont w-[185px] h-[50px] hover:bg-black duration-300 font-bold'>
          {buttonText}
        </button>
      </Link>
    </div>
  </div>
)

const Banner = () => {
  const [dotActive, setDocActive] = useState(0)
  const settings = {
    dots: true,
    infinite: true,
    autoplay: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    adaptiveHeight: true,
    arrows: false,
    beforeChange: (prev, next) => {
      setDocActive(next)
    },
    appendDots: (dots) => (
      <div
        style={{
          position: 'absolute',
          top: '50%',
          left: '7%',
          transform: 'translateY(-50%)',
        }}
      >
        <ul style={{ margin: '0px' }}> {dots} </ul>
      </div>
    ),
    customPaging: (i) => (
      <div
        style={
          i === dotActive
            ? {
                width: '30px',
                color: '#262626',
                borderRight: '3px #262626 solid',
                padding: '8px 0',
                cursor: 'pointer',
              }
            : {
                width: '30px',
                color: 'transparent',
                borderRight: '3px white solid',
                padding: '8px 0',
                cursor: 'pointer',
              }
        }
      >
        0{i + 1}
      </div>
    ),
    responsive: [
      {
        breakpoint: 576,
        settings: {
          dots: true,
          appendDots: (dots) => (
            <div
              style={{
                position: 'absolute',
                top: '50%',
                left: '2%',
                transform: 'translateY(-50%)',
              }}
            >
              <ul style={{ margin: '0px' }}> {dots} </ul>
            </div>
          ),
          customPaging: (i) => (
            <div
              style={
                i === dotActive
                  ? {
                      width: '25px',
                      color: '#262626',
                      borderRight: '3px #262626 solid',
                      cursor: 'pointer',
                      fontSize: '12px',
                    }
                  : {
                      width: '25px',
                      color: 'transparent',
                      borderRight: '3px white solid',
                      cursor: 'pointer',
                      fontSize: '12px',
                    }
              }
            >
              0{i + 1}
            </div>
          ),
        },
      },
    ],
  }

  const slides = [
    {
      imgSrc: woman2,
      text: 'Crafted in India, Loved Worldwide',
      Subtext:
        'Connecting Global Customers with Authentic Indian MSME Products',
      buttonLink: '/offer',
      buttonText: 'Shop Now',
    },
    {
      imgSrc: diwali,
      text: 'Experience India Rich Tradition from Anywhere',
      Subtext:
        'Supporting Local Artisans and MSMEs through Trusted Connections.',
      buttonLink: '/shop',
      buttonText: 'About-us',
    },
    {
      imgSrc: womanpottery,
      text: 'Your Gateway to Authentic Indian Artistry',
      Subtext:
        'Empowering Small Businesses and Connecting You to the Heart of India. ',
      buttonLink: '/contact',
      buttonText: 'Contact-us',
    },
    // Add more slides as needed
  ]

  return (
    <div className='w-full bg-white'>
      <Slider {...settings}>
        {slides.map((slide, index) => (
          <CustomSlide key={index} {...slide} />
        ))}
      </Slider>
    </div>
  )
}

export default Banner
