package com.bare.appslist.labels;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/** App-to-label assignment from the Reference persisted aggregate. */
public final class LabelledApp {
    public final String packageName;
    public final String name;
    public final List<String> labelIds;

    public LabelledApp(String packageName, String name, List<String> labelIds) {
        this.packageName = packageName == null ? "" : packageName;
        this.name = name == null ? "" : name;
        this.labelIds = labelIds == null
                ? Collections.emptyList()
                : Collections.unmodifiableList(new ArrayList<>(labelIds));
    }

    public boolean hasLabels() {
        return !labelIds.isEmpty();
    }

    public boolean isValid() {
        return !packageName.trim().isEmpty() && !name.trim().isEmpty();
    }
}
