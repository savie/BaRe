package com.bare.appslist.search;

import com.bare.appslist.data.AppInventoryItem;
import com.bare.appslist.data.AppInventoryRepository;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/** F124 query/index boundary over the canonical inventory repository. */
public final class AppSearchProvider {
    private final AppInventoryRepository repository;

    public AppSearchProvider(AppInventoryRepository repository) {
        if (repository == null) throw new NullPointerException("repository");
        this.repository = repository;
    }

    public AppSearchResultState query(String rawQuery) {
        String query = rawQuery == null ? "" : rawQuery.trim().toLowerCase(Locale.ROOT);
        if (query.isEmpty()) {
            return new AppSearchResultState(
                    AppSearchResultState.Kind.EMPTY_QUERY,
                    new ArrayList<>());
        }

        List<AppInventoryItem> matches = new ArrayList<>();
        for (AppInventoryItem item : repository.list()) {
            if (item.name.toLowerCase(Locale.ROOT).contains(query)
                    || item.packageName.toLowerCase(Locale.ROOT).contains(query)) {
                matches.add(item);
            }
        }
        matches.sort(Comparator.comparing(a -> a.name, String.CASE_INSENSITIVE_ORDER));

        List<String> packageNames = new ArrayList<>();
        for (AppInventoryItem item : matches) packageNames.add(item.packageName);
        return new AppSearchResultState(
                matches.isEmpty()
                        ? AppSearchResultState.Kind.NO_RESULTS
                        : AppSearchResultState.Kind.RESULTS,
                packageNames);
    }
}
