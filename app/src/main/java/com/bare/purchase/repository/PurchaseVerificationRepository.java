package com.bare.purchase.repository;

/**
 * Reference purchase_verifications/{uid}/{obfuscated-key} boundary.
 * Payload shape remains UNKNOWN until the complete purchase call graph is audited.
 */
public interface PurchaseVerificationRepository {
    VerificationResult load(String uid);

    final class VerificationResult {
        public enum State { VERIFIED, NOT_VERIFIED, UNKNOWN }
        public final State state;
        public final String rawPayload;
        public VerificationResult(State state, String rawPayload) {
            this.state = state; this.rawPayload = rawPayload;
        }
    }
}
