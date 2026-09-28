package com.bare.purchase.data;

/** Evidence-backed port of Reference wb6 premium transaction. */
public final class PremiumTransaction {
    public String orderId;
    public String packageName;
    public String sku;
    public String purchaseToken;
    public String signature;
    public Long purchaseTime;
    public Integer purchaseState;
    public Boolean autoRenewing;
    public String accountId;
    public Boolean acknowledged;
    public Long verificationTime;

    public static PremiumTransaction defaultVerification() {
        PremiumTransaction value = new PremiumTransaction();
        value.verificationTime = System.currentTimeMillis();
        return value;
    }
}
