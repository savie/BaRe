package com.bare.appslist.labels;

/** Persistence boundary for the user-owned labels snapshot. */
public interface LabelsRepository {
    LabelsData load();
    void save(LabelsData data);
    void clear();
}
