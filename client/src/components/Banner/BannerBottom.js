import React from 'react'
import { CgAdd } from 'react-icons/cg'
import { CgRedo } from 'react-icons/cg'

const BannerBottom = () => {
  return (
    <div className='w-full bg-white border-b-[1px] py-4 border-b-gray-200 px-4'>
      <div className='max-w-container mx-auto h-20 flex flex-col md:flex-row justify-between items-center'>
        {/* Removed: Two years warranty */}
        {/* Removed: Free shipping */}
        {/* Removed: Return policy in 30 days */}
      </div>
    </div>
  )
}

export default BannerBottom
