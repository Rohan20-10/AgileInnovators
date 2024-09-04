import React from 'react'
import Heading from '../Products/Heading'
import Product from '../Products/Product'
import {
  bestSellerOne,
  bestSellerTwo,
  bestSellerThree,
  bestSellerFour,
} from '../../../assets/images/index'

const BestSellers = () => {
  return (
    <div className='w-full pb-20'>
      <Heading heading='Our Bestsellers' />
      <div className='w-full grid grid-cols-1 md:grid-cols-2 lgl:grid-cols-3 xl:grid-cols-4 gap-10'>
        <Product
          _id='1011'
          img={bestSellerOne}
          productName='Hibiscus Hair Oil'
          price='35.00'
          color='Personal Care'
          badge={true}
          des='Description here'
        />
        <Product
          _id='1012'
          img={bestSellerTwo}
          productName='Kolhapuri Chappal/ Sandles'
          price='180.00'
          color='Footware'
          badge={false}
          des='Description here'
        />
        <Product
          _id='1013'
          img={bestSellerThree}
          productName='Rani Har'
          price='1820.00'
          color='Jewelry & Accessories'
          badge={true}
          des='Description here'
        />
        <Product
          _id='1014'
          img={bestSellerFour}
          productName='Jute Bag'
          price='120.00'
          color='Bags & Luggage'
          badge={false}
          des='Description'
        />
      </div>
    </div>
  )
}

export default BestSellers
