import React, { useState } from 'react'
import { motion } from 'framer-motion'
import { FaFacebook, FaYoutube, FaLinkedin, FaGithub } from 'react-icons/fa'
import FooterListTitle from './FooterListTitle'

const Footer = () => {
  const [emailInfo, setEmailInfo] = useState('')
  const [errMsg, setErrMsg] = useState('')

  const emailValidation = () => {
    return String(emailInfo)
      .toLocaleLowerCase()
      .match(/^\w+([-]?\w+)*@\w+([-]?\w+)*(\.\w{2,3})+$/)
  }

  const handleSubscription = () => {
    if (emailInfo === '') {
      setErrMsg('Please provide an Email!')
    } else if (!emailValidation(emailInfo)) {
      setErrMsg('Please give a valid Email!')
    } else {
      setErrMsg('')
      setEmailInfo('')
    }
  }

  return (
    <div className='w-full bg-[#202020] py-20'>
      <div className='max-w-container mx-auto grid grid-cols-1 md:grid-cols-2 xl:grid-cols-6 px-4 gap-10'>
        <div className='col-span-2'>
          <FooterListTitle
            title='More about DesiCourier'
            className='text-[#FF660E]' // Sets color for this heading
          />
          <div className='flex flex-col gap-6'>
            <p className='text-base w-full xl:w-[80%] text-[#E3E3E3]'>
              Har Tyohar Apno Ke Saath, Bharat Ki Yaadein Aapke Haath
            </p>
            <ul className='flex items-center gap-2'>
              <a
                href='https://www.youtube.com/@reactjsBD'
                target='_blank'
                rel='noreferrer'
              >
                <li className='w-7 h-7 bg-primeColor text-gray-100 hover:text-white cursor-pointer text-lg rounded-full flex justify-center items-center hover:bg-black duration-300'>
                  <FaYoutube />
                </li>
              </a>
              <a
                href='https://github.com/noorjsdivs'
                target='_blank'
                rel='noreferrer'
              >
                <li className='w-7 h-7 bg-primeColor text-gray-100 hover:text-white cursor-pointer text-lg rounded-full flex justify-center items-center hover:bg-black duration-300'>
                  <FaGithub />
                </li>
              </a>
              <a
                href='https://www.facebook.com/Noorlalu143/'
                target='_blank'
                rel='noreferrer'
              >
                <li className='w-7 h-7 bg-primeColor text-gray-100 hover:text-white cursor-pointer text-lg rounded-full flex justify-center items-center hover:bg-black duration-300'>
                  <FaFacebook />
                </li>
              </a>
              <a
                href='https://www.linkedin.com/in/noor-mohammad-ab2245193/'
                target='_blank'
                rel='noreferrer'
              >
                <li className='w-7 h-7 bg-primeColor text-gray-100 hover:text-white cursor-pointer text-lg rounded-full flex justify-center items-center hover:bg-black duration-300'>
                  <FaLinkedin />
                </li>
              </a>
            </ul>
          </div>
        </div>

        <div>
          <FooterListTitle title='Shop' className='text-[#FF660E]' />
          <ul className='flex flex-col gap-2'>
            <li className='font-titleFont text-base text-[#E3E3E3] hover:text-[#999999] hover:underline decoration-[1px] decoration-gray-500 underline-offset-2 cursor-pointer duration-300'>
              Accessories
            </li>
            <li className='font-titleFont text-base text-[#E3E3E3] hover:text-[#999999] hover:underline decoration-[1px] decoration-gray-500 underline-offset-2 cursor-pointer duration-300'>
              Clothes
            </li>
            <li className='font-titleFont text-base text-[#E3E3E3] hover:text-[#999999] hover:underline decoration-[1px] decoration-gray-500 underline-offset-2 cursor-pointer duration-300'>
              Puja Samagri
            </li>
            <li className='font-titleFont text-base text-[#E3E3E3] hover:text-[#999999] hover:underline decoration-[1px] decoration-gray-500 underline-offset-2 cursor-pointer duration-300'>
              Foods
            </li>
            <li className='font-titleFont text-base text-[#E3E3E3] hover:text-[#999999] hover:underline decoration-[1px] decoration-gray-500 underline-offset-2 cursor-pointer duration-300'>
              New Arrivals
            </li>
          </ul>
        </div>

        <div>
          <FooterListTitle title='Your Account' className='text-[#FF660E]' />
          <ul className='flex flex-col gap-2'>
            <li className='font-titleFont text-base text-[#E3E3E3] hover:text-[#999999] hover:underline decoration-[1px] decoration-gray-500 underline-offset-2 cursor-pointer duration-300'>
              Profile
            </li>
            <li className='font-titleFont text-base text-[#E3E3E3] hover:text-[#999999] hover:underline decoration-[1px] decoration-gray-500 underline-offset-2 cursor-pointer duration-300'>
              Orders
            </li>
            <li className='font-titleFont text-base text-[#E3E3E3] hover:text-[#999999] hover:underline decoration-[1px] decoration-gray-500 underline-offset-2 cursor-pointer duration-300'>
              Addresses
            </li>
            <li className='font-titleFont text-base text-[#E3E3E3] hover:text-[#999999] hover:underline decoration-[1px] decoration-gray-500 underline-offset-2 cursor-pointer duration-300'>
              Account Details
            </li>
            <li className='font-titleFont text-base text-[#E3E3E3] hover:text-[#999999] hover:underline decoration-[1px] decoration-gray-500 underline-offset-2 cursor-pointer duration-300'>
              Payment Options
            </li>
          </ul>
        </div>

        <div className='col-span-2 flex flex-col items-center w-full px-4'>
          <FooterListTitle
            title='Connect with us.'
            className='text-[#FF660E]'
          />
          <div className='w-full'>
            <p className='text-center mb-4 text-[#E3E3E3]'>
              Follow us on social media to stay updated with our latest
              services, special offers, and news from India. Join our community
              and stay connected with your roots.
            </p>
          </div>
        </div>
      </div>
    </div>
  )
}

export default Footer
