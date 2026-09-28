package com.bare.purchase.service;

import com.bare.purchase.repository.PurchaseVerificationRepository;

/** Purchase verification orchestration for the Reference boolean verification node. */
public final class PurchaseVerificationService {
    private final PurchaseVerificationRepository repository;

    public PurchaseVerificationService(PurchaseVerificationRepository repository) {
        this.repository = repository;
    }

    public PurchaseVerificationRepository.VerificationResult load(String uid) {
        PurchaseVerificationRepository.VerificationResult result = repository.load(uid);
        return result == null
                ? new PurchaseVerificationRepository.VerificationResult(
                        PurchaseVerificationRepository.VerificationResult.State.UNKNOWN)
                : result;
    }
}
