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
    public final List<Integer> scheduleOrderIds = new ArrayList<>();

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

    public List<Integer> getScheduleOrderIds() {
        return Collections.unmodifiableList(scheduleOrderIds);
    }
}
