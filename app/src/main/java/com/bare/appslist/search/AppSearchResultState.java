package com.bare.appslist.search;
import java.util.Collections;
import java.util.List;
public final class AppSearchResultState {
    public enum Kind { RESULTS, EMPTY_QUERY, NO_RESULTS }
    private final Kind kind;
    private final List<String> packageNames;
    public AppSearchResultState(Kind kind, List<String> packageNames) {
        if (kind == null) throw new IllegalArgumentException("kind");
        this.kind = kind;
        this.packageNames = packageNames == null
                ? Collections.emptyList()
                : Collections.unmodifiableList(packageNames);
    }
    public Kind getKind() { return kind; }
    public List<String> getPackageNames() { return packageNames; }
}