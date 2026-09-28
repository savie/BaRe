package com.bare.apps.model

data class AppSpecialDataPayload(
 val version:Int=1,
 val permissionStatesCsv:String?=null,
 val ssaid:String?=null,
 val ntfAccessComponent:String?=null,
 val accessibilityComponent:String?=null,
 val notificationPolicyXml:String?=null
)