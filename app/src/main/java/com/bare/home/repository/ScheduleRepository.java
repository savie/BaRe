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
        public final List<Integer> orderIds = new ArrayList<>();

        public ScheduleState copy() {
            ScheduleState copy = new ScheduleState();
            copy.startHour = startHour;
            copy.startMinute = startMinute;
            copy.batteryRequirement = batteryRequirement;
            copy.batteryPercentRequirement = batteryPercentRequirement;
            copy.enabled = enabled;
            copy.globalError = globalError;
            copy.orderIds.addAll(orderIds);
            return copy;
        }

        public List<Integer> getOrderIds() {
            return Collections.unmodifiableList(orderIds);
        }
    }
}
