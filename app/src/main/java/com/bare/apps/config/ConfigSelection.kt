package com.bare.apps.config
class ConfigSelection{private val ids=linkedSetOf<String>();fun toggle(id:String){if(!ids.add(id))ids.remove(id)};fun all()=ids.toSet();fun clear(){ids.clear()}}