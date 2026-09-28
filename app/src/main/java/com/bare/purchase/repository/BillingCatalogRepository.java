package com.bare.purchase.repository;

import java.util.List;

/** Reference appData/activeSkus catalog boundary. */
public interface BillingCatalogRepository {
    List<String> loadActiveSkuEntries();
}
