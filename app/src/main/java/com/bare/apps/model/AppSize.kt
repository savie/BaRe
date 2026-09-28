package com.bare.apps.model

data class AppSize(
 val apk:Long=0,val splits:Long=0,val sharedLibs:Long=0,val data:Long=0,val deData:Long=0,
 val extData:Long=0,val media:Long=0,val expansion:Long=0,val cache:Long=0
){val total:Long get()=apk+splits+sharedLibs+data+deData+extData+media+expansion+cache}