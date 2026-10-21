package com.bareapps.barebackup.home.schedule

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.fragment.app.Fragment
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import androidx.work.ExistingPeriodicWorkPolicy
import androidx.work.ExistingWorkPolicy
import androidx.work.OneTimeWorkRequestBuilder
import androidx.work.PeriodicWorkRequestBuilder
import androidx.work.WorkManager
import com.bareapps.barebackup.R
import com.bareapps.barebackup.common.CloudStorageDestination
import com.bareapps.barebackup.home.schedule.ScheduledApkBackupWorker
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.concurrent.TimeUnit

/** Persistent daily/weekly APK backup scheduler backed by WorkManager. */
class ScheduleHomeFragment : Fragment() {
    private var schedulesRecycler: RecyclerView? = null
    private var scheduleAdapter: ScheduleAdapter? = null

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?
    ): View = inflater.inflate(R.layout.schedule_fragment, container, false)

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        view.findViewById<TextView>(R.id.tv_schedules_title).setText(R.string.schedules)
        view.findViewById<View>(R.id.error_layout)?.visibility = View.GONE
        view.findViewById<View>(R.id.progress_bar)?.visibility = View.GONE

        schedulesRecycler = view.findViewById<RecyclerView>(R.id.rv_schedules).apply {
            layoutManager = LinearLayoutManager(requireContext())
            scheduleAdapter = ScheduleAdapter()
            adapter = scheduleAdapter
            isNestedScrollingEnabled = false
        }

        view.findViewById<View>(R.id.btn_add_first_schedule)?.setOnClickListener { showScheduleDialog() }
        view.findViewById<View>(R.id.schedule_header_click_target)?.setOnClickListener { showScheduleDialog() }
        view.findViewById<TextView>(R.id.btn_run_all)?.apply {
            text = "Run backup now"
            setOnClickListener { runNow() }
        }
        refreshScheduleUi(view)
    }

    override fun onResume() {
        super.onResume()
        view?.let(::refreshScheduleUi)
    }

    private fun showScheduleDialog() {
        val context = requireContext()
        val prefs = context.getSharedPreferences(ScheduledApkBackupWorker.PREFS_NAME, android.content.Context.MODE_PRIVATE)
        var selected = if (prefs.getInt(ScheduledApkBackupWorker.KEY_INTERVAL_DAYS, 1) == 7) 1 else 0
        AlertDialog.Builder(context)
            .setTitle("Schedule APK backups")
            .setMessage("Back up installed user-app APKs to the storage destination selected in the Cloud tab. App private data is not included in scheduled runs.")
            .setSingleChoiceItems(arrayOf("Every day", "Every week"), selected) { _, which -> selected = which }
            .setNegativeButton(android.R.string.cancel, null)
            .setNeutralButton(if (prefs.getBoolean(ScheduledApkBackupWorker.KEY_ENABLED, false)) "Turn off" else null) { _, _ ->
                WorkManager.getInstance(context).cancelUniqueWork(ScheduledApkBackupWorker.UNIQUE_WORK_NAME)
                prefs.edit().putBoolean(ScheduledApkBackupWorker.KEY_ENABLED, false).apply()
                view?.let { refreshScheduleUi(it) }
            }
            .setPositiveButton("Save schedule") { _, _ ->
                val days = if (selected == 1) 7L else 1L
                val request = PeriodicWorkRequestBuilder<ScheduledApkBackupWorker>(days, TimeUnit.DAYS).build()
                WorkManager.getInstance(context).enqueueUniquePeriodicWork(
                    ScheduledApkBackupWorker.UNIQUE_WORK_NAME,
                    ExistingPeriodicWorkPolicy.REPLACE,
                    request
                )
                prefs.edit()
                    .putBoolean(ScheduledApkBackupWorker.KEY_ENABLED, true)
                    .putInt(ScheduledApkBackupWorker.KEY_INTERVAL_DAYS, days.toInt())
                    .apply()
                view?.let { refreshScheduleUi(it) }
                Toast.makeText(context, "APK backup schedule saved", Toast.LENGTH_SHORT).show()
            }
            .show()
    }

    private fun runNow() {
        val request = OneTimeWorkRequestBuilder<ScheduledApkBackupWorker>().build()
        WorkManager.getInstance(requireContext()).enqueueUniqueWork(
            MANUAL_WORK_NAME, ExistingWorkPolicy.REPLACE, request
        )
        Toast.makeText(requireContext(), "APK backup queued", Toast.LENGTH_SHORT).show()
    }

    private fun refreshScheduleUi(root: View) {
        val context = context ?: return
        val prefs = context.getSharedPreferences(ScheduledApkBackupWorker.PREFS_NAME, android.content.Context.MODE_PRIVATE)
        val enabled = prefs.getBoolean(ScheduledApkBackupWorker.KEY_ENABLED, false)
        root.findViewById<View>(R.id.cv_no_schedule_added)?.visibility = if (enabled) View.GONE else View.VISIBLE
        root.findViewById<View>(R.id.rv_schedules)?.visibility = if (enabled) View.VISIBLE else View.GONE
        root.findViewById<View>(R.id.btn_run_all)?.visibility = View.VISIBLE
        val missingDestination = CloudStorageDestination.displayName(context).isNullOrBlank()
        root.findViewById<TextView>(R.id.tv_schedule_header_error)?.apply {
            visibility = if (missingDestination) View.VISIBLE else View.GONE
            text = "Choose a writable destination in the Cloud tab before scheduled backups can run."
        }
        scheduleAdapter?.notifyDataSetChanged()
    }

    private inner class ScheduleAdapter : RecyclerView.Adapter<ScheduleAdapter.Holder>() {
        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder =
            Holder(TextView(parent.context).apply {
                setPadding(dp(16), dp(16), dp(16), dp(16))
                textSize = 14f
                isClickable = true
                setBackgroundResource(android.R.drawable.list_selector_background)
            })

        override fun getItemCount(): Int = 1

        override fun onBindViewHolder(holder: Holder, position: Int) {
            val prefs = requireContext().getSharedPreferences(
                ScheduledApkBackupWorker.PREFS_NAME, android.content.Context.MODE_PRIVATE
            )
            val days = prefs.getInt(ScheduledApkBackupWorker.KEY_INTERVAL_DAYS, 1)
            val lastRun = prefs.getLong(ScheduledApkBackupWorker.KEY_LAST_RUN, 0L)
            val result = prefs.getString(ScheduledApkBackupWorker.KEY_LAST_RESULT, "Not run yet").orEmpty()
            val lastRunText = if (lastRun == 0L) "Not run yet" else {
                SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault()).format(Date(lastRun))
            }
            holder.text.text = (if (days == 7) "Weekly APK backup" else "Daily APK backup") +
                "\nDestination: " + (CloudStorageDestination.displayName(requireContext()) ?: "Not selected") +
                "\nLast run: " + lastRunText +
                "\nStatus: " + result +
                "\nTap to edit or turn off"
            holder.text.setOnClickListener { showScheduleDialog() }
        }

        inner class Holder(val text: TextView) : RecyclerView.ViewHolder(text)
    }

    private fun dp(value: Int) = (value * resources.displayMetrics.density).toInt()

    companion object {
        private const val MANUAL_WORK_NAME = "bare-manual-apk-backup"
    }
}
