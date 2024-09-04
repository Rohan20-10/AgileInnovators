import React, { useState } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import { BsCheckCircleFill } from 'react-icons/bs'
import { logoLight } from '../../assets/images'
import axios from 'axios'

const SignUp = () => {
  const [clientName, setClientName] = useState('')
  const [email, setEmail] = useState('')
  const [phone, setPhone] = useState('')
  const [password, setPassword] = useState('')
  const [street, setStreet] = useState('')
  const [city, setCity] = useState('')
  const [state, setState] = useState('')
  const [country, setCountry] = useState('')
  const [postalCode, setPostalCode] = useState('')
  const [checked, setChecked] = useState(false)
  const [errClientName, setErrClientName] = useState('')
  const [errEmail, setErrEmail] = useState('')
  const [errPhone, setErrPhone] = useState('')
  const [errPassword, setErrPassword] = useState('')
  const [errStreet, setErrStreet] = useState('')
  const [errCity, setErrCity] = useState('')
  const [errState, setErrState] = useState('')
  const [errCountry, setErrCountry] = useState('')
  const [errPostalCode, setErrPostalCode] = useState('')
  const [successMsg, setSuccessMsg] = useState('')
  const navigate = useNavigate()

  const handleSignUp = async (e) => {
    e.preventDefault()

    // Validate inputs
    if (!clientName) setErrClientName('Enter your full name')
    if (!email) setErrEmail('Enter your email')
    if (!phone) setErrPhone('Enter your phone number')
    if (!password) setErrPassword('Create a password')
    if (!street) setErrStreet('Enter your street address')
    if (!city) setErrCity('Enter your city')
    if (!state) setErrState('Enter your state')
    if (!country) setErrCountry('Enter your country')
    if (!postalCode) setErrPostalCode('Enter your postal code')

    if (
      clientName &&
      email &&
      phone &&
      password &&
      street &&
      city &&
      state &&
      country &&
      postalCode
    ) {
      try {
        const response = await axios.post(
          'http://localhost:5001/api/customer/register',
          {
            name: clientName,
            email,
            phone,
            password,
            street,
            city,
            state,
            country,
            postalCode,
          }
        )

        if (response.status === 200) {
          setSuccessMsg('Registration successful. Redirecting to login...')
          setTimeout(() => {
            navigate('/signin')
          }, 2000)
        } else {
          setErrEmail(response.data.message || 'Registration failed')
        }
      } catch (error) {
        setErrEmail('An error occurred. Please try again.')
      }
    }
  }

  return (
    <div className='w-full h-screen flex items-center justify-start'>
      <div className='w-1/2 hidden lgl:inline-flex h-full text-white'>
        <div className='w-[450px] h-full bg-primeColor px-10 flex flex-col gap-6 justify-center'>
          <Link to='/'>
            <img src={logoLight} alt='logoImg' className='w-28' />
          </Link>
          <div className='flex flex-col gap-1 -mt-1'>
            <h1 className='font-titleFont text-xl font-medium'>
              Get started for free
            </h1>
            <p className='text-base'>Create your account to access more</p>
          </div>
          <div className='w-[300px] flex items-start gap-3'>
            <span className='text-green-500 mt-1'>
              <BsCheckCircleFill />
            </span>
            <p className='text-base text-gray-300'>
              <span className='text-white font-semibold font-titleFont'>
                Get started fast with DC
              </span>
              <br />
              Don't waste your time missing home, bring your memories of home to
              wherever you are!
            </p>
          </div>
          <div className='w-[300px] flex items-start gap-3'>
            <span className='text-green-500 mt-1'>
              <BsCheckCircleFill />
            </span>
            <p className='text-base text-gray-300'>
              <span className='text-white font-semibold font-titleFont'>
                Access all DC services
              </span>
              <br />
              Buy or sell and be a part of the Desi-Courier family.
            </p>
          </div>
          <div className='w-[300px] flex items-start gap-3'>
            <span className='text-green-500 mt-1'>
              <BsCheckCircleFill />
            </span>
            <p className='text-base text-gray-300'>
              <span className='text-white font-semibold font-titleFont'>
                Trusted by online Shoppers
              </span>
              <br />
              We promise to deliver with trust when it comes to family.
            </p>
          </div>
          <div className='flex items-center justify-between mt-10'>
            <p className='text-sm font-titleFont font-semibold text-gray-300 hover:text-white cursor-pointer duration-300'>
              © DC
            </p>
            <p className='text-sm font-titleFont font-semibold text-gray-300 hover:text-white cursor-pointer duration-300'>
              Terms
            </p>
            <p className='text-sm font-titleFont font-semibold text-gray-300 hover:text-white cursor-pointer duration-300'>
              Privacy
            </p>
            <p className='text-sm font-titleFont font-semibold text-gray-300 hover:text-white cursor-pointer duration-300'>
              Security
            </p>
          </div>
        </div>
      </div>
      <div className='w-full lgl:w-[500px] h-full flex flex-col justify-center'>
        {successMsg ? (
          <div className='w-[500px]'>
            <p className='w-full px-4 py-10 text-green-500 font-medium font-titleFont'>
              {successMsg}
            </p>
            <Link to='/signin'>
              <button
                className='w-full h-10 bg-primeColor rounded-md text-gray-200 text-base font-titleFont font-semibold 
            tracking-wide hover:bg-black hover:text-white duration-300'
              >
                Sign in
              </button>
            </Link>
          </div>
        ) : (
          <form
            className='w-full lgl:w-[500px] h-screen flex items-center justify-center'
            onSubmit={handleSignUp}
          >
            <div className='px-6 py-4 w-full h-[96%] flex flex-col justify-start overflow-y-scroll scrollbar-thin scrollbar-thumb-primeColor'>
              <h1 className='font-titleFont underline underline-offset-4 decoration-[1px] font-semibold text-2xl mdl:text-3xl mb-4'>
                Create your account
              </h1>
              <div className='flex flex-col gap-3'>
                {/* Client Name */}
                <div className='flex flex-col gap-.5'>
                  <p className='font-titleFont text-base font-semibold text-gray-600'>
                    Full Name
                  </p>
                  <input
                    onChange={(e) => setClientName(e.target.value)}
                    value={clientName}
                    className='w-full h-8 placeholder:text-sm placeholder:tracking-wide px-4 text-base font-medium placeholder:font-normal rounded-md border-[1px] border-gray-400 outline-none'
                    type='text'
                    placeholder='eg. John Doe'
                  />
                  {errClientName && (
                    <p className='text-sm text-red-500 font-titleFont font-semibold px-4'>
                      <span className='font-bold italic mr-1'>!</span>
                      {errClientName}
                    </p>
                  )}
                </div>
                {/* Email */}
                <div className='flex flex-col gap-.5'>
                  <p className='font-titleFont text-base font-semibold text-gray-600'>
                    Work Email
                  </p>
                  <input
                    onChange={(e) => setEmail(e.target.value)}
                    value={email}
                    className='w-full h-8 placeholder:text-sm placeholder:tracking-wide px-4 text-base font-medium placeholder:font-normal rounded-md border-[1px] border-gray-400 outline-none'
                    type='email'
                    placeholder='john@workemail.com'
                  />
                  {errEmail && (
                    <p className='text-sm text-red-500 font-titleFont font-semibold px-4'>
                      <span className='font-bold italic mr-1'>!</span>
                      {errEmail}
                    </p>
                  )}
                </div>
                {/* Phone Number */}
                <div className='flex flex-col gap-.5'>
                  <p className='font-titleFont text-base font-semibold text-gray-600'>
                    Phone Number
                  </p>
                  <input
                    onChange={(e) => setPhone(e.target.value)}
                    value={phone}
                    className='w-full h-8 placeholder:text-sm placeholder:tracking-wide px-4 text-base font-medium placeholder:font-normal rounded-md border-[1px] border-gray-400 outline-none'
                    type='text'
                    placeholder='008801234567891'
                  />
                  {errPhone && (
                    <p className='text-sm text-red-500 font-titleFont font-semibold px-4'>
                      <span className='font-bold italic mr-1'>!</span>
                      {errPhone}
                    </p>
                  )}
                </div>
                {/* Password */}
                <div className='flex flex-col gap-.5'>
                  <p className='font-titleFont text-base font-semibold text-gray-600'>
                    Password
                  </p>
                  <input
                    onChange={(e) => setPassword(e.target.value)}
                    value={password}
                    className='w-full h-8 placeholder:text-sm placeholder:tracking-wide px-4 text-base font-medium placeholder:font-normal rounded-md border-[1px] border-gray-400 outline-none'
                    type='password'
                    placeholder='Create password'
                  />
                  {errPassword && (
                    <p className='text-sm text-red-500 font-titleFont font-semibold px-4'>
                      <span className='font-bold italic mr-1'>!</span>
                      {errPassword}
                    </p>
                  )}
                </div>
                {/* Street */}
                <div className='flex flex-col gap-.5'>
                  <p className='font-titleFont text-base font-semibold text-gray-600'>
                    Street
                  </p>
                  <input
                    onChange={(e) => setStreet(e.target.value)}
                    value={street}
                    className='w-full h-8 placeholder:text-sm placeholder:tracking-wide px-4 text-base font-medium placeholder:font-normal rounded-md border-[1px] border-gray-400 outline-none'
                    type='text'
                    placeholder='Your street address'
                  />
                  {errStreet && (
                    <p className='text-sm text-red-500 font-titleFont font-semibold px-4'>
                      <span className='font-bold italic mr-1'>!</span>
                      {errStreet}
                    </p>
                  )}
                </div>
                {/* City */}
                <div className='flex flex-col gap-.5'>
                  <p className='font-titleFont text-base font-semibold text-gray-600'>
                    City
                  </p>
                  <input
                    onChange={(e) => setCity(e.target.value)}
                    value={city}
                    className='w-full h-8 placeholder:text-sm placeholder:tracking-wide px-4 text-base font-medium placeholder:font-normal rounded-md border-[1px] border-gray-400 outline-none'
                    type='text'
                    placeholder='Your city'
                  />
                  {errCity && (
                    <p className='text-sm text-red-500 font-titleFont font-semibold px-4'>
                      <span className='font-bold italic mr-1'>!</span>
                      {errCity}
                    </p>
                  )}
                </div>
                {/* State */}
                <div className='flex flex-col gap-.5'>
                  <p className='font-titleFont text-base font-semibold text-gray-600'>
                    State
                  </p>
                  <input
                    onChange={(e) => setState(e.target.value)}
                    value={state}
                    className='w-full h-8 placeholder:text-sm placeholder:tracking-wide px-4 text-base font-medium placeholder:font-normal rounded-md border-[1px] border-gray-400 outline-none'
                    type='text'
                    placeholder='Your state'
                  />
                  {errState && (
                    <p className='text-sm text-red-500 font-titleFont font-semibold px-4'>
                      <span className='font-bold italic mr-1'>!</span>
                      {errState}
                    </p>
                  )}
                </div>
                {/* Country */}
                <div className='flex flex-col gap-.5'>
                  <p className='font-titleFont text-base font-semibold text-gray-600'>
                    Country
                  </p>
                  <input
                    onChange={(e) => setCountry(e.target.value)}
                    value={country}
                    className='w-full h-8 placeholder:text-sm placeholder:tracking-wide px-4 text-base font-medium placeholder:font-normal rounded-md border-[1px] border-gray-400 outline-none'
                    type='text'
                    placeholder='Your country'
                  />
                  {errCountry && (
                    <p className='text-sm text-red-500 font-titleFont font-semibold px-4'>
                      <span className='font-bold italic mr-1'>!</span>
                      {errCountry}
                    </p>
                  )}
                </div>
                {/* Postal Code */}
                <div className='flex flex-col gap-.5'>
                  <p className='font-titleFont text-base font-semibold text-gray-600'>
                    Postal Code
                  </p>
                  <input
                    onChange={(e) => setPostalCode(e.target.value)}
                    value={postalCode}
                    className='w-full h-8 placeholder:text-sm placeholder:tracking-wide px-4 text-base font-medium placeholder:font-normal rounded-md border-[1px] border-gray-400 outline-none'
                    type='text'
                    placeholder='Your postal code'
                  />
                  {errPostalCode && (
                    <p className='text-sm text-red-500 font-titleFont font-semibold px-4'>
                      <span className='font-bold italic mr-1'>!</span>
                      {errPostalCode}
                    </p>
                  )}
                </div>
                {/* Checkbox */}
                <div className='flex items-start mdl:items-center gap-2'>
                  <input
                    type='checkbox'
                    checked={checked}
                    onChange={(e) => setChecked(e.target.checked)}
                    className='w-4 h-4'
                  />
                  <p className='text-sm text-gray-600'>
                    I agree to the terms and conditions
                  </p>
                </div>
                <button
                  type='submit'
                  className='bg-primeColor hover:bg-black text-gray-200 hover:text-white cursor-pointer w-full text-base font-medium h-10 rounded-md  duration-300'
                >
                  Sign Up
                </button>
                <p className='text-sm text-center font-titleFont font-medium'>
                  Already have an Account?{' '}
                  <Link to='/signin'>
                    <span className='hover:text-blue-600 duration-300'>
                      Sign in
                    </span>
                  </Link>
                </p>
              </div>
            </div>
          </form>
        )}
      </div>
    </div>
  )
}

export default SignUp
