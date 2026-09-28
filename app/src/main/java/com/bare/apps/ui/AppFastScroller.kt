package com.bare.apps.ui
import android.content.Context
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import androidx.recyclerview.widget.RecyclerView
class AppFastScrollerView @JvmOverloads constructor(c:Context,a:AttributeSet?=null):View(c,a){
 private var recycler:RecyclerView?=null
 fun attachTo(view:RecyclerView){recycler=view}
 override fun onTouchEvent(e:MotionEvent):Boolean{
  val r=recycler?:return false
  if(e.action==MotionEvent.ACTION_DOWN||e.action==MotionEvent.ACTION_MOVE){val max=(r.computeVerticalScrollRange()-r.height).coerceAtLeast(0);val y=(e.y/height.coerceAtLeast(1)).coerceIn(0f,1f);r.scrollBy(0,(max*y).toInt());return true}
  return e.action==MotionEvent.ACTION_UP
 }
}