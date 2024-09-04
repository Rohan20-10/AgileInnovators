import React from 'react'
import Slider from 'react-slick'
import Heading from '../Products/Heading'
import Product from '../Products/Product'
import {
  newArrOne,
  newArrTwo,
  newArrThree,
  newArrFour,
} from '../../../assets/images/index'
import SampleNextArrow from './SampleNextArrow'
import SamplePrevArrow from './SamplePrevArrow'

const NewArrivals = () => {
  const settings = {
    infinite: true,
    speed: 500,
    slidesToShow: 4,
    slidesToScroll: 1,
    nextArrow: <SampleNextArrow />,
    prevArrow: <SamplePrevArrow />,
    responsive: [
      {
        breakpoint: 1025,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 1,
          infinite: true,
        },
      },
      {
        breakpoint: 769,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
          infinite: true,
        },
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
          infinite: true,
        },
      },
    ],
  }
  return (
    <div className='w-full pb-16'>
      <Heading heading='New Arrivals' />
      <Slider {...settings}>
        <div className='px-2'>
          <Product
            _id='100001'
            img={newArrOne}
            productName='Mango Pickel'
            price='250.00'
            color='Regional Foods & Sweets'
            badge={true}
            des='250gm of mango pickel made from fresh kachhi kairi with musturd oil.'
          />
        </div>
        <div className='px-2'>
          <Product
            _id='100002'
            img={newArrTwo}
            productName='Parkar Polka'
            price='2500.00'
            color='Traditional Attire'
            badge={true}
            des='Cotton fabric'
          />
        </div>
        <div className='px-2'>
          <Product
            _id='100003'
            img={newArrThree}
            productName='Agarbatti'
            price='180.00'
            color='Puja Samagri'
            badge={true}
            des='Sandalwood essence special.'
          />
        </div>
        <div className='px-2'>
          <Product
            _id='100004'
            img={newArrFour}
            productName='Diwali Lamp'
            price='620.00'
            color='Festive Items'
            badge={false}
            des='Description'
          />
        </div>
        <div className='px-2'>
          <Product
            _id='100005'
            img={newArrTwo}
            productName='Parkar Polka'
            price='2500.00'
            color='Traditional Attire'
            badge={true}
            des='Description here'
          />
        </div>
      </Slider>
    </div>
  )
}

export default NewArrivals
