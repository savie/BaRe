package com.bare.purchase.service;

import com.bare.purchase.repository.BillingCatalogRepository;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/** Reference BillingManager SKU normalization from appData/activeSkus. */
public final class BillingSkuService {
    private final BillingCatalogRepository repository;

    public BillingSkuService(BillingCatalogRepository repository) {
        this.repository = repository;
    }

    public Catalog loadCatalog() {
        List<String> raw = repository.loadActiveSkuEntries();
        if (raw == null) return new Catalog(Collections.<String>emptyList(), Collections.<String>emptyList());
        List<String> subscriptions = new ArrayList<>();
        List<String> inApp = new ArrayList<>();
        for (String entry : raw) {
            if (entry == null) continue;
            if (entry.startsWith("subs:")) subscriptions.add(stripPrefix(entry));
            if (entry.startsWith("inapp:")) inApp.add(stripPrefix(entry));
        }
        return new Catalog(subscriptions, inApp);
    }

    private static String stripPrefix(String value) {
        int colon = value.indexOf(':');
        return colon >= 0 ? value.substring(colon + 1) : value;
    }

    public static final class Catalog {
        public final List<String> subscriptions;
        public final List<String> inApp;

        public Catalog(List<String> subscriptions, List<String> inApp) {
            this.subscriptions = Collections.unmodifiableList(new ArrayList<>(subscriptions));
            this.inApp = Collections.unmodifiableList(new ArrayList<>(inApp));
        }
    }
}
