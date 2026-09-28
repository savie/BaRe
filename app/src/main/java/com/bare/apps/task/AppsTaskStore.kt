package com.bare.apps.task
import android.content.Context
class AppsTaskStore(context:Context){
 private val p=context.getSharedPreferences("bare_apps_task_state",Context.MODE_PRIVATE)
 fun save(state:AppsTaskState){
  val kind=when(state){AppsTaskState.Pending->"PENDING";AppsTaskState.Cancelled->"CANCELLED";is AppsTaskState.Running->"RUNNING";is AppsTaskState.Success->"SUCCESS";is AppsTaskState.Error->"ERROR"}
  val message=when(state){AppsTaskState.Pending->"Task pending";AppsTaskState.Cancelled->"Task cancelled";is AppsTaskState.Running->"Progress "+state.progress+"%";is AppsTaskState.Success->state.message;is AppsTaskState.Error->state.message}
  p.edit().putString("kind",kind).putString("message",message).apply()
 }
 fun kind()=p.getString("kind","PENDING")?:"PENDING"
 fun message()=p.getString("message","Task pending")?:"Task pending"
}
