package com.bare.apps.ui

class AppSelectionModel{
 private val selected=linkedSetOf<String>()
 fun toggle(id:String){if(!selected.add(id))selected.remove(id)}
 fun selectAll(ids:Collection<String>){selected.addAll(ids)}
 fun clear(){selected.clear()}
 fun isSelected(id:String)=id in selected
 fun selectedIds():Set<String>=selected.toSet()
 fun count()=selected.size
 fun allVisible(ids:Collection<String>)=ids.isNotEmpty()&&ids.all{it in selected}
}