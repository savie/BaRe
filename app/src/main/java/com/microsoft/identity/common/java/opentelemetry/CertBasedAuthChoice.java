package com.microsoft.identity.common.java.opentelemetry;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CertBasedAuthChoice {
    private static final /* synthetic */ CertBasedAuthChoice[] $VALUES;
    public static final CertBasedAuthChoice NON_APPLICABLE;
    public static final CertBasedAuthChoice ON_DEVICE_CHOICE;
    public static final CertBasedAuthChoice SMARTCARD_CHOICE;

    static {
        CertBasedAuthChoice certBasedAuthChoice = new CertBasedAuthChoice("ON_DEVICE_CHOICE", 0);
        ON_DEVICE_CHOICE = certBasedAuthChoice;
        CertBasedAuthChoice certBasedAuthChoice2 = new CertBasedAuthChoice("SMARTCARD_CHOICE", 1);
        SMARTCARD_CHOICE = certBasedAuthChoice2;
        CertBasedAuthChoice certBasedAuthChoice3 = new CertBasedAuthChoice("NON_APPLICABLE", 2);
        NON_APPLICABLE = certBasedAuthChoice3;
        $VALUES = new CertBasedAuthChoice[]{certBasedAuthChoice, certBasedAuthChoice2, certBasedAuthChoice3};
    }

    public static CertBasedAuthChoice valueOf(String str) {
        return (CertBasedAuthChoice) Enum.valueOf(CertBasedAuthChoice.class, str);
    }

    public static CertBasedAuthChoice[] values() {
        return (CertBasedAuthChoice[]) $VALUES.clone();
    }
}
