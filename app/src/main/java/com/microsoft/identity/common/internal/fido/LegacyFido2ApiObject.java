package com.microsoft.identity.common.internal.fido;

import android.app.PendingIntent;
import defpackage.mt3;
import defpackage.pe4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class LegacyFido2ApiObject {
    private final mt3 assertionCallback;
    private final mt3 errorCallback;
    private final PendingIntent pendingIntent;

    public LegacyFido2ApiObject(mt3 mt3Var, mt3 mt3Var2, PendingIntent pendingIntent) {
        pendingIntent.getClass();
        this.assertionCallback = mt3Var;
        this.errorCallback = mt3Var2;
        this.pendingIntent = pendingIntent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LegacyFido2ApiObject) {
            LegacyFido2ApiObject legacyFido2ApiObject = (LegacyFido2ApiObject) obj;
            if (this.assertionCallback == legacyFido2ApiObject.assertionCallback && this.errorCallback == legacyFido2ApiObject.errorCallback && pe4.d(this.pendingIntent, legacyFido2ApiObject.pendingIntent)) {
                return true;
            }
        }
        return false;
    }

    public final mt3 getAssertionCallback() {
        return this.assertionCallback;
    }

    public final mt3 getErrorCallback() {
        return this.errorCallback;
    }

    public final PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    public final int hashCode() {
        return this.pendingIntent.hashCode() + ((this.errorCallback.hashCode() + (this.assertionCallback.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "LegacyFido2ApiObject(assertionCallback=" + this.assertionCallback + ", errorCallback=" + this.errorCallback + ", pendingIntent=" + this.pendingIntent + ')';
    }
}
