package com.microsoft.identity.common.internal.broker;

import defpackage.pe4;
import defpackage.ph6;
import defpackage.uq7;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BrokerData {
    public static final /* synthetic */ int a = 0;
    private static final Set<String> accountManagerBrokers;
    private static final Set<BrokerData> allBrokers;
    private static final Set<BrokerData> prodBrokers;
    private static final BrokerData prodMicrosoftAuthenticator;
    private final String nickName;
    private final String packageName;
    private final String signingCertificateThumbprint;

    static {
        ph6.a(BrokerData.class).c();
        BrokerData brokerData = new BrokerData("com.azure.authenticator", "pdAtoxfsEwbpQsIaua5Uobl5AQEjqt40aPXI7UY1lIW0NTmg0G4jHQ5T5mujSjjU06q4mEHs5hb6z/Mr0PNlmQ==", "debugMicrosoftAuthenticator");
        BrokerData brokerData2 = new BrokerData("com.azure.authenticator", "Gu8CuaYmSV5CHWd6dz3tGPXIE+YTalCVIXi5lEBXpvUgsMKoHbU9Rqou3WNRNU1tsz8pvEADTCCJ5f02fbw9qw==", "prodMicrosoftAuthenticator");
        prodMicrosoftAuthenticator = brokerData2;
        BrokerData brokerData3 = new BrokerData("com.microsoft.windowsintune.companyportal", "oIuNoUwMsxC10VneTQXnt/GXN+Pjqd6mpOKEMF/cH3i06K93TZMBWq+fHN/zt4zUe/W6zGj6YLymd1/tGuypNQ==", "debugCompanyPortal");
        BrokerData brokerData4 = new BrokerData("com.microsoft.windowsintune.companyportal", "jPpMoaNvcxSLMX4yG4C3Gf86rtTqh33SqpuRKg4WOP+MnnpA52zZgvKLW76U4Cqqf68iaBk9W7k/jhciiSAtgQ==", "prodCompanyPortal");
        BrokerData brokerData5 = new BrokerData("com.microsoft.identity.testuserapp", "xxAk8S05zu0Nkce+X2J6IKJ2e7YE4F9ZorZj0YnYUQ2vw8vLc8VGGOqJdTnVySbbcy9VY8UDbOfeOETSErYllw==", "debugBrokerHost");
        BrokerData brokerData6 = new BrokerData("com.microsoft.mockcp", "EZ2RCcsmf869Ec41PgHHnFdI0MgmVsADFFy8AtcfEKsjD1YAPtKxCMZVdT+y+K1IWRnPk4Lf2PUAcL5N49OqAA==", "debugMockCp");
        BrokerData brokerData7 = new BrokerData("com.microsoft.mockauthapp", "QhjKSYYD31K7+C4q4Mpd08crE0LN/3GgnKVVuej4JWckUTc0Wp/i//LWLQnANaWiAjdESJJrjavu0cE6hkQihQ==", "debugMockAuthApp");
        BrokerData brokerData8 = new BrokerData("com.microsoft.mockltw", "felxzv/rpqa69dOADXVVKnawk5x8snBW2k/kDxzQLVkbcdzAvrGm8gcBRItzUGIQTupHCTWksN6WBGbn+b0KIA==", "debugMockLtw");
        BrokerData brokerData9 = new BrokerData("com.microsoft.appmanager", "WhUdh04ZkQLmNb//lKmohyqDdPMWXHcI0O3AvoLMtgF/smnED4r+Vguvgj6d4QG77Jl3avUKt6LeqF2TJPZVzg==", "prodLTW");
        BrokerData brokerData10 = new BrokerData("com.microsoft.appmanager", "5PAhhZNSRRvq7vpTT5vrYJbSLh05AU8USf7oUTS239PEltebX87uGN7GhAe5244lJepwZ5RU4vu8N6ospXVOlg==", "debugLTW");
        BrokerData$Companion$accountManagerBrokers$1 brokerData$Companion$accountManagerBrokers$1 = new BrokerData$Companion$accountManagerBrokers$1();
        brokerData$Companion$accountManagerBrokers$1.add("com.azure.authenticator");
        brokerData$Companion$accountManagerBrokers$1.add("com.microsoft.windowsintune.companyportal");
        brokerData$Companion$accountManagerBrokers$1.add("com.microsoft.identity.testuserapp");
        brokerData$Companion$accountManagerBrokers$1.add("com.microsoft.mockauthapp");
        brokerData$Companion$accountManagerBrokers$1.add("com.microsoft.mockcp");
        Set<String> setUnmodifiableSet = Collections.unmodifiableSet(brokerData$Companion$accountManagerBrokers$1);
        setUnmodifiableSet.getClass();
        accountManagerBrokers = setUnmodifiableSet;
        BrokerData$Companion$debugBrokers$1 brokerData$Companion$debugBrokers$1 = new BrokerData$Companion$debugBrokers$1();
        brokerData$Companion$debugBrokers$1.add(brokerData);
        brokerData$Companion$debugBrokers$1.add(brokerData10);
        brokerData$Companion$debugBrokers$1.add(brokerData3);
        brokerData$Companion$debugBrokers$1.add(brokerData5);
        brokerData$Companion$debugBrokers$1.add(brokerData6);
        brokerData$Companion$debugBrokers$1.add(brokerData7);
        brokerData$Companion$debugBrokers$1.add(brokerData8);
        Set setUnmodifiableSet2 = Collections.unmodifiableSet(brokerData$Companion$debugBrokers$1);
        setUnmodifiableSet2.getClass();
        BrokerData$Companion$prodBrokers$1 brokerData$Companion$prodBrokers$1 = new BrokerData$Companion$prodBrokers$1();
        brokerData$Companion$prodBrokers$1.add(brokerData2);
        brokerData$Companion$prodBrokers$1.add(brokerData4);
        brokerData$Companion$prodBrokers$1.add(brokerData9);
        Set<BrokerData> setUnmodifiableSet3 = Collections.unmodifiableSet(brokerData$Companion$prodBrokers$1);
        setUnmodifiableSet3.getClass();
        prodBrokers = setUnmodifiableSet3;
        BrokerData$Companion$allBrokers$1 brokerData$Companion$allBrokers$1 = new BrokerData$Companion$allBrokers$1();
        brokerData$Companion$allBrokers$1.addAll(setUnmodifiableSet2);
        brokerData$Companion$allBrokers$1.addAll(setUnmodifiableSet3);
        Set<BrokerData> setUnmodifiableSet4 = Collections.unmodifiableSet(brokerData$Companion$allBrokers$1);
        setUnmodifiableSet4.getClass();
        allBrokers = setUnmodifiableSet4;
    }

    public BrokerData(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        this.packageName = str;
        this.signingCertificateThumbprint = str2;
        this.nickName = str3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof BrokerData)) {
            return false;
        }
        BrokerData brokerData = (BrokerData) obj;
        return uq7.P(this.packageName, brokerData.packageName, true) && pe4.d(this.signingCertificateThumbprint, brokerData.signingCertificateThumbprint);
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getSigningCertificateThumbprint() {
        return this.signingCertificateThumbprint;
    }

    public final int hashCode() {
        return this.signingCertificateThumbprint.hashCode() + (this.packageName.hashCode() * 31);
    }

    public final String toString() {
        String str = this.nickName;
        if (str != null && str.length() != 0) {
            return str;
        }
        return this.packageName + "::" + this.signingCertificateThumbprint;
    }
}
