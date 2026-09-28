package com.bare.apps.ui
import android.content.Context
import android.util.AttributeSet
import android.widget.TextView
class AppRowLabelsView @JvmOverloads constructor(c:Context,a:AttributeSet?=null):TextView(c,a){fun setLabels(labels:Collection<String>){text=labels.joinToString(" · ")}}