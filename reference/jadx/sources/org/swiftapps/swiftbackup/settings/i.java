package org.swiftapps.swiftbackup.settings;

import defpackage.gv7;
import defpackage.pe4;
import defpackage.qb5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class i {
    public final MultipleBackupStrategy a;
    public final MultipleBackupStrategy b;
    public final MultipleBackupStrategy c;
    public final MultipleBackupStrategy.Type d;
    public final gv7 e;

    public i(MultipleBackupStrategy multipleBackupStrategy, MultipleBackupStrategy multipleBackupStrategy2, MultipleBackupStrategy multipleBackupStrategy3, MultipleBackupStrategy.Type type) {
        multipleBackupStrategy.getClass();
        multipleBackupStrategy2.getClass();
        multipleBackupStrategy3.getClass();
        type.getClass();
        this.a = multipleBackupStrategy;
        this.b = multipleBackupStrategy2;
        this.c = multipleBackupStrategy3;
        this.d = type;
        this.e = new gv7(new qb5(this, 3));
    }

    public static i a(i iVar, MultipleBackupStrategy multipleBackupStrategy, MultipleBackupStrategy multipleBackupStrategy2, MultipleBackupStrategy multipleBackupStrategy3, MultipleBackupStrategy.Type type, int i) {
        if ((i & 1) != 0) {
            multipleBackupStrategy = iVar.a;
        }
        if ((i & 2) != 0) {
            multipleBackupStrategy2 = iVar.b;
        }
        if ((i & 4) != 0) {
            multipleBackupStrategy3 = iVar.c;
        }
        if ((i & 8) != 0) {
            type = iVar.d;
        }
        multipleBackupStrategy.getClass();
        multipleBackupStrategy2.getClass();
        multipleBackupStrategy3.getClass();
        type.getClass();
        return new i(multipleBackupStrategy, multipleBackupStrategy2, multipleBackupStrategy3, type);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return pe4.d(this.a, iVar.a) && pe4.d(this.b, iVar.b) && pe4.d(this.c, iVar.c) && this.d == iVar.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "State(singleBackupStrategy=" + this.a + ", datedBackupStrategy=" + this.b + ", conditionalBackupStrategy=" + this.c + ", selectedType=" + this.d + ")";
    }
}
