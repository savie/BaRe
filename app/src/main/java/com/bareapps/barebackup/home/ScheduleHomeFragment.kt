package com.bareapps.barebackup.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.fragment.app.Fragment
import com.bareapps.barebackup.R

/** Schedule overview keeps controls readable until schedule execution is connected. */
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

        bindDropdown(view, R.id.time_dropdown, R.string.time, R.string.not_available, R.drawable.ic_clock_selector)
        bindDropdown(view, R.id.charging_dropdown, R.string.charging_requirements, R.string.not_available, R.drawable.ic_flash_circle_36)

        // Scheduling actions are deliberately disabled until persistence and execution are wired.
        view.findViewById<View>(R.id.btn_add_first_schedule)?.setOnClickListener { }
        view.findViewById<View>(R.id.btn_run_all)?.setOnClickListener { }
        view.findViewById<View>(R.id.schedule_header_click_target)?.setOnClickListener { }
    }

    private fun bindDropdown(root: View, id: Int, title: Int, value: Int, icon: Int) {
        root.findViewById<View>(id)?.let { dropdown ->
            dropdown.findViewById<TextView>(R.id.tv_header)?.setText(title)
            dropdown.findViewById<TextView>(R.id.tv_value)?.setText(value)
            dropdown.findViewById<ImageView>(R.id.iv_icon)?.setImageResource(icon)
            dropdown.findViewById<View>(R.id.rv_values)?.visibility = View.GONE
        }
    }
}
