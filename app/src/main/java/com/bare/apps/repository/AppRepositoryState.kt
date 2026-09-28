package com.bare.apps.repository

import com.bare.apps.model.CanonicalApp

sealed class AppListState {
 data object Loading:AppListState()
 data class Success(val items:List<CanonicalApp>):AppListState()
 data object Empty:AppListState()
 data class Error(val message:String):AppListState()
}
interface AppRepository { fun load(showSystemApps:Boolean):List<CanonicalApp>; fun snapshot():List<CanonicalApp> }
class RepositoryCache(private val id:(CanonicalApp)->String={it.itemId}){
 private val cache=linkedMapOf<String,CanonicalApp>()
 fun replace(items:List<CanonicalApp>){cache.clear();items.forEach{cache[id(it)]=it}}
 fun values()=cache.values.toList()
 fun update(item:CanonicalApp){cache[id(item)]=item}
 fun remove(itemId:String){cache.remove(itemId)}
 fun get(itemId:String)=cache[itemId]
}