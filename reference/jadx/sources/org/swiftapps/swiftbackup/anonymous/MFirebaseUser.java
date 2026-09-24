package org.swiftapps.swiftbackup.anonymous;

import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;
import defpackage.d45;
import defpackage.dh8;
import defpackage.e45;
import defpackage.eq3;
import defpackage.hh8;
import defpackage.if3;
import defpackage.ix0;
import defpackage.p49;
import defpackage.u49;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MFirebaseUser {
    public static final String ANONYMOUS_USER_DISPLAY_NAME = "Anonymous user";
    public static final String ANONYMOUS_USER_EMAIL = "anonymous@swiftbackup.app";
    public static final e45 Companion = new e45();
    private final String displayName;
    private final String email;
    private final boolean isAnonymous;
    private final String photoUrl;
    private final List<dh8> providerData;
    private final String providerId;
    private final String uid;

    /* JADX WARN: Multi-variable type inference failed */
    public MFirebaseUser(String str, String str2, boolean z, String str3, String str4, List<? extends dh8> list, String str5) {
        str.getClass();
        str2.getClass();
        list.getClass();
        str5.getClass();
        this.uid = str;
        this.email = str2;
        this.isAnonymous = z;
        this.displayName = str3;
        this.photoUrl = str4;
        this.providerData = list;
        this.providerId = str5;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getPhotoUrl() {
        return this.photoUrl;
    }

    public final List<dh8> getProviderData() {
        return this.providerData;
    }

    public final String getProviderId() {
        return this.providerId;
    }

    public final String getUid() {
        return this.uid;
    }

    public final boolean isAnonymous() {
        return this.isAnonymous;
    }

    public String toString() {
        return eq3.k("MFirebaseUser(email='", this.email, "')");
    }

    public final void updateProfile(hh8 hh8Var) {
        p49 p49VarC;
        hh8Var.getClass();
        d45.b.getClass();
        MFirebaseUser mFirebaseUserA = d45.a();
        if (mFirebaseUserA == null || mFirebaseUserA.isAnonymous || (p49VarC = FirebaseAuth.getInstance().c()) == null) {
            return;
        }
        FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(FirebaseApp.getInstance(p49VarC.c));
        firebaseAuth.getClass();
        ix0 ix0Var = firebaseAuth.e;
        FirebaseApp firebaseApp = firebaseAuth.a;
        if3 if3Var = new if3(firebaseAuth);
        ix0Var.getClass();
        u49 u49Var = new u49(hh8Var);
        u49Var.d(firebaseApp);
        u49Var.d = p49VarC;
        u49Var.e = if3Var;
        u49Var.f = if3Var;
        ix0Var.m(u49Var);
    }
}
