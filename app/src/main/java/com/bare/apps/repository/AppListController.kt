package com.bare.apps.repository

import android.content.Context
import com.bare.apps.domain.*
import com.bare.apps.model.CanonicalApp

class AppListController(context:Context,private val cloud:Boolean=false){
 private val local=LocalAppRepository(context)
 private val remote=CloudAppRepository(context)
 private val filters=AppFilterStore(context)
 private val sort=AppSortState(context)
 private var source:List<CanonicalApp> = emptyList()
 var query:String=""
 var state:AppListState=AppListState.Empty
 private fun repo():AppRepository=if(cloud)remote else local
 fun reload(showSystemApps:Boolean){state=AppListState.Loading;source=repo().load(showSystemApps);state=if(source.isEmpty())AppListState.Empty else AppListState.Success(project(source))}
 fun project(input:List<CanonicalApp>=source):List<CanonicalApp>{val filtered=AppFilterEngine.apply(input,cloud,filters.load());return AppSearch.query(query,sort.apply(filtered))}
 fun setFilter(s:AppFilterState){filters.save(s);state=if(source.isEmpty())AppListState.Empty else AppListState.Success(project())}
 fun setSort(mode:AppSortMode,ascending:Boolean){sort.mode=mode;sort.ascending=ascending;state=if(source.isEmpty())AppListState.Empty else AppListState.Success(project())}
 fun items()=project()
}