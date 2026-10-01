package com.bare.tasks;

import com.bare.core.model.TaskErrorSummary;
import com.bare.core.model.TaskSnapshot;
import com.bare.core.model.TaskState;

import java.util.List;

/** Thin domain service over the canonical C12 repository boundary. */
public final class TaskStateService {
    private final TaskStateRepository repository;

    public TaskStateService(TaskStateRepository repository) {
        if (repository == null) throw new NullPointerException("repository");
        this.repository = repository;
    }

    public List<TaskSnapshot> getTasks() { return repository.getTasks(); }
    public TaskState getServiceState() { return repository.getServiceState(); }
    public TaskErrorSummary getErrorSummary() { return repository.getErrorSummary(); }
    public void requestCancel() { repository.requestCancel(); }
    public void requestForceStop() { repository.requestForceStop(); }
    public void addObserver(TaskStateRepository.Observer observer) { repository.addObserver(observer); }
    public void removeObserver(TaskStateRepository.Observer observer) { repository.removeObserver(observer); }
}
