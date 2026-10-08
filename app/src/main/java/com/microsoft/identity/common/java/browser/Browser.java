package com.microsoft.identity.common.java.browser;

import defpackage.fz5;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Browser {
    private final Boolean mIsCustomTabsServiceSupported;
    private final String mPackageName;
    private final HashSet mSignatureHashes;
    private final String mVersion;

    public Browser(String str, HashSet hashSet, String str2, boolean z) {
        this.mPackageName = str;
        this.mSignatureHashes = hashSet;
        this.mVersion = str2;
        this.mIsCustomTabsServiceSupported = Boolean.valueOf(z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Browser)) {
            return false;
        }
        Browser browser = (Browser) obj;
        return this.mPackageName.equals(browser.mPackageName) && this.mVersion.equals(browser.mVersion) && this.mSignatureHashes.equals(browser.mSignatureHashes);
    }

    public final String getPackageName() {
        return this.mPackageName;
    }

    public final Set<String> getSignatureHashes() {
        return this.mSignatureHashes;
    }

    public final String getVersion() {
        return this.mVersion;
    }

    public final int hashCode() {
        int iG = (this.mIsCustomTabsServiceSupported.booleanValue() ? 1 : 0) + fz5.g(this.mPackageName.hashCode() * 92821, 92821, this.mVersion);
        Iterator it = this.mSignatureHashes.iterator();
        while (it.hasNext()) {
            iG = (iG * 92821) + ((String) it.next()).hashCode();
        }
        return iG;
    }

    public final boolean isCustomTabsServiceSupported() {
        return this.mIsCustomTabsServiceSupported.booleanValue();
    }
}
