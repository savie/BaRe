package com.bare.apps.task
import android.content.Context
class NotificationPolicyProxy(private val context:Context){fun isAvailable()=true;fun restore(xml:String?)=xml!=null}