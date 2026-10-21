package com.bareapps.barebackup.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.fragment.app.Fragment
import com.bareapps.barebackup.R
import com.google.android.material.materialswitch.MaterialSwitch

/** Schedule overview. It intentionally shows the reference empty state until schedule operations are connected. */
class ScheduleHomeFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?
    ): View = inflater.inflate(R.layout.schedule_fragment, container, false)

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        view.findViewById<TextView>(R.id.tv_schedules_title).setText(R.string.schedules)
        view.findViewById<View>(R.id.cv_no_schedule_added).visibility = View.VISIBLE
        view.findViewById<View>(R.id.rv_schedules).visibility = View.GONE
        view.findViewById<View>(R.id.error_layout)?.visibility = View.GONE
        view.findViewById<View>(R.id.progress_bar)?.visibility = View.GONE
        view.findViewById<View>(R.id.tv_schedule_header_error)?.visibility = View.GONE

        // Keep the switch's default off state and the reference control geometry; scheduling is not wired yet.
        view.findViewById<View>(R.id.btn_add_first_schedule)?.setOnClickListener { }
        view.findViewById<View>(R.id.btn_run_all)?.setOnClickListener { }
        view.findViewById<View>(R.id.schedule_header_click_target)?.setOnClickListener { }
    }
}
