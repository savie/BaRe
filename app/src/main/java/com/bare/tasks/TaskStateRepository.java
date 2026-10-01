package com.bare.tasks;

import com.bare.core.model.TaskErrorSummary;
import com.bare.core.model.TaskSnapshot;
import com.bare.core.model.TaskState;

import java.util.List;

/** C12 observation + lifecycle-intent boundary; it does not execute tasks. */
public interface TaskStateRepository {
    List<TaskSnapshot> getTasks();
    TaskState getServiceState();
    TaskErrorSummary getErrorSummary();

    void requestCancel();
    void requestForceStop();

    void addObserver(Observer observer);
    void removeObserver(Observer observer);

    interface Observer {
        void onTaskStateChanged();
    }
}
