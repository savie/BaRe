package com.bare.home.repository;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/** Persistence boundary for the Reference ScheduleData shape. */
public interface ScheduleRepository {
    ScheduleState load();
    void save(ScheduleState state);

    final class ScheduleState {
        public int startHour = 3;
        public int startMinute = 0;
        public int batteryRequirement = 0;
        public int batteryPercentRequirement = 50;
        public boolean enabled;
        public String globalError;
        public final List<String> orderIds = new ArrayList<>();
        public final List<String> appsQuickActionIds = new ArrayList<>();
        public final List<String> appsLabelIds = new ArrayList<>();
        public final List<String> appConfigIds = new ArrayList<>();
        public final List<String> messageIds = new ArrayList<>();
        public final List<String> callLogIds = new ArrayList<>();
        public final List<String> wallIds = new ArrayList<>();
        public final List<String> wifiIds = new ArrayList<>();
        public final List<String> folderIds = new ArrayList<>();

        public ScheduleState copy() {
            ScheduleState copy = new ScheduleState();
            copy.startHour = startHour;
            copy.startMinute = startMinute;
            copy.batteryRequirement = batteryRequirement;
            copy.batteryPercentRequirement = batteryPercentRequirement;
            copy.enabled = enabled;
            copy.globalError = globalError;
            copy.orderIds.addAll(orderIds);
            copy.appsQuickActionIds.addAll(appsQuickActionIds);
            copy.appsLabelIds.addAll(appsLabelIds);
            copy.appConfigIds.addAll(appConfigIds);
            copy.messageIds.addAll(messageIds);
            copy.callLogIds.addAll(callLogIds);
            copy.wallIds.addAll(wallIds);
            copy.wifiIds.addAll(wifiIds);
            copy.folderIds.addAll(folderIds);
            return copy;
        }

        public List<String> getOrderIds() {
            return Collections.unmodifiableList(orderIds);
        }
    }
}
