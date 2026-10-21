package com.bareapps.barebackup.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.bareapps.barebackup.R

/** Schedule tab. Named separately from the schedule feature package. */
class ScheduleHomeFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?
    ): View = inflater.inflate(R.layout.schedule_fragment, container, false)
}
