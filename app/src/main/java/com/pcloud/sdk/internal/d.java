package com.pcloud.sdk.internal;

import defpackage.bj6;
import defpackage.q03;
import defpackage.y77;
import defpackage.zi6;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class d extends RealRemoteEntry implements bj6 {
    public static final List a = Collections.unmodifiableList(new ArrayList(0));

    @q03
    @y77("folderid")
    private Long folderId;

    @q03
    @y77("contents")
    private final List<zi6> children = a;

    @q03
    @y77("cancreate ")
    private boolean canCreate = true;

    @Override // com.pcloud.sdk.internal.RealRemoteEntry
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        d dVar = (d) obj;
        if (this.folderId.equals(dVar.folderId) && this.canCreate == dVar.canCreate) {
            return this.children.equals(dVar.children);
        }
        return false;
    }

    @Override // com.pcloud.sdk.internal.RealRemoteEntry
    public final /* bridge */ /* synthetic */ String f() {
        throw null;
    }

    public final List g() {
        return this.children;
    }

    @Override // com.pcloud.sdk.internal.RealRemoteEntry
    public final int hashCode() {
        return this.children.hashCode() + ((this.folderId.hashCode() + (super.hashCode() * 31)) * 31);
    }

    public final String toString() {
        Locale locale = Locale.US;
        String strName = super.name();
        String strF = super.f();
        Date dateA = super.a();
        Date dateD = super.d();
        List<zi6> list = this.children;
        return String.format(locale, "%s | ID:%s | Created:%s | Modified: %s | Child count:%s", strName, strF, dateA, dateD, list == a ? "?" : Integer.valueOf(list.size()));
    }
}
