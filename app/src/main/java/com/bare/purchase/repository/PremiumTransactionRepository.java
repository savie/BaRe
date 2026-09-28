package com.bare.purchase.repository;

import com.bare.purchase.data.PremiumTransaction;

/** Reference users/{uid}/transactions/premium boundary. */
public interface PremiumTransactionRepository {
    PremiumTransaction load(String uid);
    void write(String uid, PremiumTransaction transaction);
}
