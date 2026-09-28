package com.bare.purchase.repository;

/** Reference purchase_verifications/{uid}/{obfuscated-key} boolean verification boundary. */
public interface PurchaseVerificationRepository {
    VerificationResult load(String uid);

    final class VerificationResult {
        public enum State { VERIFIED, NOT_VERIFIED, UNKNOWN }
        public final State state;
        public VerificationResult(State state) {
            this.state = state == null ? State.UNKNOWN : state;
        }
        public static VerificationResult verified(boolean value) {
            return new VerificationResult(value ? State.VERIFIED : State.NOT_VERIFIED);
        }
    }
}
