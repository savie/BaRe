package com.bare.home.schedule.data;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/** Reference-shaped ScheduleData. Defaults and category order are evidence-backed from 5.1.0/620. */
public final class ScheduleData {
    public enum BatteryRequirement { NONE, CHARGING, PERCENTAGE }

    public int startHour = 3;
    public int startMinute = 0;
    public BatteryRequirement batteryRequirement = BatteryRequirement.NONE;
    public int batteryPercentRequirement = 50;

    public final List<String> appsQuickActionSchedules = new ArrayList<>();
    public final List<String> appsLabelSchedules = new ArrayList<>();
    public final List<String> appConfigSchedules = new ArrayList<>();
    public final List<String> messagesSchedules = new ArrayList<>();
    public final List<String> callLogsSchedules = new ArrayList<>();
    public final List<String> wallsSchedules = new ArrayList<>();
    public final List<String> wifiSchedules = new ArrayList<>();
    public final List<String> foldersSchedules = new ArrayList<>();
    public final List<String> scheduleOrderIds = new ArrayList<>();

    /** Legacy/reference order: app config, labels, quick actions, messages, calls, walls, wifi, folders. */
    public List<String> legacyOrder() {
        ArrayList<String> result = new ArrayList<>();
        appendLimited(result, appConfigSchedules);
        appendLimited(result, appsLabelSchedules);
        appendLimited(result, appsQuickActionSchedules);
        appendLimited(result, messagesSchedules);
        appendLimited(result, callLogsSchedules);
        appendLimited(result, wallsSchedules);
        appendLimited(result, wifiSchedules);
        appendLimited(result, foldersSchedules);
        return result;
    }

    private static void appendLimited(List<String> target, List<String> source) {
        for (String value : source) {
            if (target.size() >= 20) return;
            target.add(value);
        }
    }

    public List<String> getScheduleOrderIds() {
        return Collections.unmodifiableList(scheduleOrderIds);
    }
}


    public ScheduleData withScheduleAppended(String scheduleId) {
        ScheduleData copy = copy();
        if (scheduleId != null && !scheduleId.isEmpty() && !copy.scheduleOrderIds.contains(scheduleId)) {
            copy.scheduleOrderIds.add(scheduleId);
        }
        return copy;
    }

    public ScheduleData withScheduleDeleted(String scheduleId) {
        ScheduleData copy = copy();
        copy.scheduleOrderIds.remove(scheduleId);
        return copy;
    }

    public ScheduleData withScheduleMoved(String scheduleId, int targetIndex) {
        ScheduleData copy = copy();
        int current = copy.scheduleOrderIds.indexOf(scheduleId);
        if (current < 0) return copy;
        copy.scheduleOrderIds.remove(current);
        int bounded = Math.max(0, Math.min(targetIndex, copy.scheduleOrderIds.size()));
        copy.scheduleOrderIds.add(bounded, scheduleId);
        return copy;
    }

    public ScheduleData withNormalizedScheduleOrder() {
        ScheduleData copy = copy();
        ArrayList<String> valid = new ArrayList<>();
        appendUnique(valid, copy.appConfigSchedules);
        appendUnique(valid, copy.appsLabelSchedules);
        appendUnique(valid, copy.appsQuickActionSchedules);
        appendUnique(valid, copy.messagesSchedules);
        appendUnique(valid, copy.callLogsSchedules);
        appendUnique(valid, copy.wallsSchedules);
        appendUnique(valid, copy.wifiSchedules);
        appendUnique(valid, copy.foldersSchedules);
        ArrayList<String> normalized = new ArrayList<>();
        for (String id : copy.scheduleOrderIds) {
            if (valid.contains(id) && !normalized.contains(id)) normalized.add(id);
        }
        for (String id : valid) if (!normalized.contains(id)) normalized.add(id);
        copy.scheduleOrderIds.clear();
        copy.scheduleOrderIds.addAll(normalized);
        return copy;
    }

    public ScheduleData copy() {
        ScheduleData copy = new ScheduleData();
        copy.startHour = startHour;
        copy.startMinute = startMinute;
        copy.batteryRequirement = batteryRequirement;
        copy.batteryPercentRequirement = batteryPercentRequirement;
        copy.appsQuickActionSchedules.addAll(appsQuickActionSchedules);
        copy.appsLabelSchedules.addAll(appsLabelSchedules);
        copy.appConfigSchedules.addAll(appConfigSchedules);
        copy.messagesSchedules.addAll(messagesSchedules);
        copy.callLogsSchedules.addAll(callLogsSchedules);
        copy.wallsSchedules.addAll(wallsSchedules);
        copy.wifiSchedules.addAll(wifiSchedules);
        copy.foldersSchedules.addAll(foldersSchedules);
        copy.scheduleOrderIds.addAll(scheduleOrderIds);
        return copy;
    }

    private static void appendUnique(List<String> target, List<String> source) {
        for (String id : source) {
            if (id != null && !id.isEmpty() && !target.contains(id) && target.size() < 20) {
                target.add(id);
            }
        }
    }
