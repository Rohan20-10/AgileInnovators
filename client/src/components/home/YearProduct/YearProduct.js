import React from 'react'
import { Link } from 'react-router-dom'
import { productOfTheYear } from '../../../assets/images'
import ShopNow from '../../designLayouts/buttons/ShopNow'
import Image from '../../designLayouts/Image'

const YearProduct = () => {
  return (
    <div className='w-full h-80 mb-20 bg-[#f3f3f3] md:bg-transparent relative font-titleFont'>
      <Image
        className='w-full h-full object-cover hidden md:inline-block'
        imgSrc={productOfTheYear}
      />
      <div className='w-full md:w-2/3 xl:w-1/2 h-80 absolute px-4 md:px-0 top-0 right-0 flex flex-col items-start gap-6 justify-center'>
        <h1 className='text-3xl font-semibold text-primeColor'>
          Empowering the Indian Diaspora: A Vision for Connection and Support
        </h1>
        <p className='text-base font-normal text-primeColor max-w-[600px] mr-4'>
          This platform connects MSMEs and small businesses with their ideal
          customers, allowing the Indian diaspora to access high-quality
          traditional products. This initiative by the Department of Posts
          supports both customers and local artisans, ensuring cherished
          products reach the right people while boosting the growth of local
          crafts and businesses.
        </p>
        <a
          href='https://msme.gov.in/' // Update this URL to the desired link
          className='bg-[#FF660E] text-white text-lg font-bodyFont w-[185px] h-[50px] hover:bg-black duration-300 font-bold flex items-center justify-center'
          target='_blank'
          rel='noopener noreferrer'
        >
          Discover MSME
        </a>
      </div>
    </div>
  )
}

export default YearProduct
