package org.swiftapps.swiftbackup.apptasks.notifications;

import defpackage.eq3;
import defpackage.fz5;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    public final NotificationPolicyProxy.a a;
    public final int b;
    public final String c;
    public final File d;

    public b(NotificationPolicyProxy.a aVar, int i, String str, File file) {
        aVar.getClass();
        this.a = aVar;
        this.b = i;
        this.c = str;
        this.d = file;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.a == bVar.a && this.b == bVar.b && this.c.equals(bVar.c) && this.d.equals(bVar.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fz5.g(eq3.d(this.b, this.a.hashCode() * 31, 31), 31, this.c);
    }

    public final String toString() {
        return "Request(mode=" + this.a + ", userId=" + this.b + ", packageName=" + this.c + ", file=" + this.d + ")";
    }
}
