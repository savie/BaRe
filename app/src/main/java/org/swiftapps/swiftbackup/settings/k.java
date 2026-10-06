package org.swiftapps.swiftbackup.settings;

import defpackage.ex6;
import defpackage.q;
import defpackage.qo0;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class k extends qo0 {
    public boolean e;
    public final ex6 f = new ex6();

    public final void j(MultipleBackupStrategy multipleBackupStrategy) {
        multipleBackupStrategy.getClass();
        ex6 ex6Var = this.f;
        i iVar = (i) ex6Var.d();
        if (iVar == null) {
            return;
        }
        ex6Var.k(i.a(iVar, null, null, null, f.b(multipleBackupStrategy), 7));
    }

    public final void k(MultipleBackupStrategy multipleBackupStrategy) {
        i iVarA;
        multipleBackupStrategy.getClass();
        ex6 ex6Var = this.f;
        i iVar = (i) ex6Var.d();
        if (iVar == null) {
            return;
        }
        int i = j.a[f.b(multipleBackupStrategy).ordinal()];
        if (i == 1) {
            iVarA = i.a(iVar, multipleBackupStrategy, null, null, null, 14);
        } else if (i == 2) {
            iVarA = i.a(iVar, null, multipleBackupStrategy, null, null, 13);
        } else {
            if (i != 3) {
                q.j();
                return;
            }
            iVarA = i.a(iVar, null, null, multipleBackupStrategy, null, 11);
        }
        ex6Var.k(iVarA);
    }
}
