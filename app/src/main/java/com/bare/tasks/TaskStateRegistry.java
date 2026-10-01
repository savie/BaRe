package com.bare.tasks;

import com.bare.core.model.TaskErrorSummary;
import com.bare.core.model.TaskSnapshot;
import com.bare.core.model.TaskState;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * Canonical in-process C12 state boundary.
 *
 * It only stores/observes state and lifecycle intent. A downstream TaskService
 * or feature engine may publish execution results later; this class never
 * fabricates execution success.
 */
public final class TaskStateRegistry implements TaskStateRepository {
    private static final TaskStateRegistry INSTANCE = new TaskStateRegistry();

    private final CopyOnWriteArrayList<TaskSnapshot> tasks = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<Observer> observers = new CopyOnWriteArrayList<>();

    private volatile TaskState serviceState = TaskState.WAITING;
    private volatile TaskErrorSummary errorSummary = new TaskErrorSummary("", false);
    private volatile boolean cancelRequested;
    private volatile boolean forceStopRequested;

    private TaskStateRegistry() {}

    public static TaskStateRegistry getInstance() {
        return INSTANCE;
    }

    @Override
    public List<TaskSnapshot> getTasks() {
        return Collections.unmodifiableList(new ArrayList<>(tasks));
    }

    @Override
    public TaskState getServiceState() {
        return serviceState;
    }

    @Override
    public TaskErrorSummary getErrorSummary() {
        return errorSummary;
    }

    @Override
    public void requestCancel() {
        cancelRequested = true;
        notifyObservers();
    }

    @Override
    public void requestForceStop() {
        forceStopRequested = true;
        notifyObservers();
    }

    public boolean isCancelRequested() {
        return cancelRequested;
    }

    public boolean isForceStopRequested() {
        return forceStopRequested;
    }

    /** Downstream execution boundary publishes the observed service state. */
    public void publishServiceState(TaskState state) {
        if (state == null) throw new NullPointerException("state");
        serviceState = state;
        notifyObservers();
    }

    /** Downstream execution boundary publishes the current task list. */
    public void publishTasks(List<TaskSnapshot> snapshots) {
        if (snapshots == null) throw new NullPointerException("snapshots");
        tasks.clear();
        tasks.addAll(snapshots);
        notifyObservers();
    }

    /** Downstream execution boundary publishes the aggregate error/notice summary. */
    public void publishErrorSummary(TaskErrorSummary summary) {
        if (summary == null) throw new NullPointerException("summary");
        errorSummary = summary;
        notifyObservers();
    }

    @Override
    public void addObserver(Observer observer) {
        if (observer == null) throw new NullPointerException("observer");
        observers.addIfAbsent(observer);
    }

    @Override
    public void removeObserver(Observer observer) {
        if (observer == null) throw new NullPointerException("observer");
        observers.remove(observer);
    }

    private void notifyObservers() {
        for (Observer observer : observers) {
            observer.onTaskStateChanged();
        }
    }
}
