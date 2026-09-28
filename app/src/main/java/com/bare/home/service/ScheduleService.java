package com.bare.home.service;

import com.bare.home.data.ScheduleViewModel;
import com.bare.home.repository.ScheduleRepository;

import java.util.ArrayList;

/** Owns schedule state transitions; AlarmReceiver/OS scheduling stays behind Scheduler. */
public final class ScheduleService {
    private final ScheduleRepository repository;
    private final Scheduler scheduler;

    public ScheduleService(ScheduleRepository repository, Scheduler scheduler) {
        this.repository = repository;
        this.scheduler = scheduler;
    }

    public void loadInto(ScheduleViewModel model) {
        ScheduleRepository.ScheduleState state = repository.load();
        model.setEnabled(state.enabled);
        model.setStartTime(state.startHour, state.startMinute);
        model.setBatteryRequirement(state.batteryRequirement);
        model.setBatteryPercentRequirement(state.batteryPercentRequirement);
        model.setGlobalError(state.globalError);
    }

    public void setEnabled(ScheduleViewModel model, boolean enabled) {
        ScheduleRepository.ScheduleState state = repository.load();
        state.enabled = enabled;
        repository.save(state);
        model.setEnabled(enabled);
        if (enabled) scheduler.schedule(state.startHour, state.startMinute);
        else scheduler.cancel();
    }

    public void setStartTime(ScheduleViewModel model, int hour, int minute) {
        ScheduleRepository.ScheduleState state = repository.load();
        state.startHour = hour;
        state.startMinute = minute;
        repository.save(state);
        model.setStartTime(hour, minute);
        if (state.enabled) scheduler.schedule(hour, minute);
    }

    public interface Scheduler {
        void schedule(int hour, int minute);
        void cancel();
    }
}
