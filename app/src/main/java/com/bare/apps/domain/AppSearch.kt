package com.bare.apps.domain

import com.bare.apps.model.CanonicalApp

object AppSearch {
 fun query(query:String,apps:List<CanonicalApp>):List<CanonicalApp>{
  val q=query.trim().lowercase()
  if(q.isEmpty())return apps
  val tokens=q.split(Regex("\\s+")).filter{it.isNotBlank()}
  return apps.filter{app->
   val hay=listOf(app.name,app.packageName,app.appId,app.versionName.orEmpty()).map{it.lowercase()}
   tokens.all{token->hay.any{it.contains(token)}}
  }
 }
}