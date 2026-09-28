package com.bare.apps.task
data class TaskErrorSummary(val errors:List<String>){val hasErrors get()=errors.isNotEmpty()}