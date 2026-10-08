package com.microsoft.identity.common.java.ui;

import defpackage.y77;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class BrowserDescriptor implements Serializable {

    @y77("browser_package_name")
    private final String mPackageName;

    @y77("browser_signature_hashes")
    private final Set<String> mSignatureHashes;

    @y77("browser_version_lower_bound")
    private final String mVersionLowerBound = null;

    @y77("browser_version_upper_bound")
    private final String mVersionUpperBound = null;

    public BrowserDescriptor(String str, HashSet hashSet) {
        this.mPackageName = str;
        this.mSignatureHashes = hashSet;
    }

    public static ArrayList getBrowserSafeListForSwitchBrowser() {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        hashSet.add("7fmduHKTdHHrlMvldlEqAIlSfii1tl35bxj1OXN5Ve8c4lU6URVu4xtSHc3BVZxS6WWJnxMDhIfQN0N0K2NDJg==");
        arrayList.add(new BrowserDescriptor("com.android.chrome", hashSet));
        HashSet hashSet2 = new HashSet();
        hashSet2.add("Ivy-Rk6ztai_IudfbyUrSHugzRqAtHWslFvHT0PTvLMsEKLUIgv7ZZbVxygWy_M5mOPpfjZrd3vOx3t-cA6fVQ==");
        arrayList.add(new BrowserDescriptor("com.microsoft.emmx", hashSet2));
        HashSet hashSet3 = new HashSet();
        hashSet3.add("Nd3EDftVD0lR3Lz0Odq8NMkWWyM5CT8lahePkMtzvS6YkVYne_Hn5jaDSxrdXkN1s4AywAnav2RnarZvcqVFJQ==");
        arrayList.add(new BrowserDescriptor("com.amazon.enterprise.access.android", hashSet3));
        return arrayList;
    }

    public final String getPackageName() {
        return this.mPackageName;
    }

    public final Set<String> getSignatureHashes() {
        return this.mSignatureHashes;
    }

    public final String getVersionLowerBound() {
        return this.mVersionLowerBound;
    }

    public final String getVersionUpperBound() {
        return this.mVersionUpperBound;
    }
}
