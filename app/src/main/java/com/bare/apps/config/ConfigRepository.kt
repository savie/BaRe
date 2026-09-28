package com.bare.apps.config
import android.content.Context
class ConfigRepository(context:Context){private val data=ConfigsData(context);fun list()=data.list();fun get(id:String)=data.list().firstOrNull{it.id==id};fun save(c:Config)=data.save(c);fun delete(id:String)=data.delete(id)}