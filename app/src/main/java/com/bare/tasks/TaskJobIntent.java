package com.bare.tasks;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * C13 scheduler/job lifecycle intent.
 *
 * Schedule item identity is represented by the Reference ScheduleItem#getItemId
 * boundary; actual ScheduleItem loading and job execution remain downstream.
 */
public final class TaskJobIntent {
    private final TaskJobRunMode runMode;
    private final List<String> scheduleItemIds;
    private final boolean forcedRun;

    public TaskJobIntent(
            TaskJobRunMode runMode,
            List<String> scheduleItemIds,
            boolean forcedRun) {
        if (runMode == null) throw new NullPointerException("runMode");
        if (scheduleItemIds == null) throw new NullPointerException("scheduleItemIds");
        this.runMode = runMode;
        this.scheduleItemIds = Collections.unmodifiableList(new ArrayList<>(scheduleItemIds));
        this.forcedRun = forcedRun;
    }

    public TaskJobRunMode getRunMode() { return runMode; }
    public List<String> getScheduleItemIds() { return scheduleItemIds; }
    public boolean isForcedRun() { return forcedRun; }
}
