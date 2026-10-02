package com.bare.appslist.search;
import java.util.Collections;
import java.util.List;
public final class AppSearchSource {
    private final List<String> packageNames;
    public AppSearchSource(List<String> packageNames) {
        this.packageNames = packageNames == null
                ? Collections.emptyList()
                : Collections.unmodifiableList(packageNames);
    }
    public List<String> getPackageNames() { return packageNames; }
}