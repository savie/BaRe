package com.bare.home.pages

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.bare.R
import com.google.android.material.button.MaterialButton
import com.google.android.material.materialswitch.MaterialSwitch

class ScheduleFragment : Fragment() {
    private val prefsName = "bare_schedule"
    private val keyEnabled = "enabled"

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, state: Bundle?): View =
        inflater.inflate(R.layout.schedule_fragment, container, false)

    override fun onViewCreated(view: View, state: Bundle?) {
        super.onViewCreated(view, state)
        val prefs = requireContext().getSharedPreferences(prefsName, 0)
        val enabled = view.findViewById<MaterialSwitch>(R.id.swch_schedule)
        enabled.isChecked = prefs.getBoolean(keyEnabled, false)
        enabled.setOnCheckedChangeListener { _, checked ->
            prefs.edit().putBoolean(keyEnabled, checked).apply()
            view.findViewById<TextView>(R.id.tv_schedule_header_error).text =
                if (checked) getString(R.string.schedule_enabled_local) else getString(R.string.schedule_disabled_local)
        }

        view.findViewById<View>(R.id.schedule_header_click_target).setOnClickListener {
            enabled.isChecked = !enabled.isChecked
        }
        view.findViewById<MaterialButton>(R.id.btn_run_all).setOnClickListener {
            Toast.makeText(requireContext(), getString(R.string.no_schedules_to_run), Toast.LENGTH_SHORT).show()
        }

        view.findViewById<View>(R.id.time_dropdown).findViewById<TextView>(R.id.tv_value).text =
            getString(R.string.schedule_time_when_ready)
        view.findViewById<View>(R.id.charging_dropdown).findViewById<TextView>(R.id.tv_value).text =
            getString(R.string.schedule_charging_any)
        view.findViewById<TextView>(R.id.tv_schedules_title).text = getString(R.string.scheduled_backups)
        view.findViewById<View>(R.id.cv_no_schedule_added).visibility = View.VISIBLE
        view.findViewById<View>(R.id.progress_bar).visibility = View.GONE
    }
}