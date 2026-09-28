package com.bare.apps.config
import com.bare.apps.model.*
data class Config(
 val id:String,
 var name:String,
 var settings:ConfigSettings=ConfigSettings()
){
 fun isValid()=name.isNotBlank()&&settings.parts.isNotEmpty()&&settings.locations.isNotEmpty()
}
