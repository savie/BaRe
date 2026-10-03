package com.bare.premium;

/**
 * Authorized BaRe target deviation for Premium entitlement.
 *
 * Reference purchase/billing behavior remains evidence-only; BaRe grants
 * Premium access without requiring a purchase or billing backend.
 */
public final class PremiumAccessPolicy {
    private PremiumAccessPolicy() {
    }

    public static boolean isGranted() {
        return true;
    }
}
