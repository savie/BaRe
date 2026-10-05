package org.swiftapps.swiftbackup.settings;

import defpackage.el1;
import defpackage.jx2;
import defpackage.q;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class f {
    public static final MultipleBackupStrategy.Representation a(MultipleBackupStrategy multipleBackupStrategy) {
        MultipleBackupStrategy.NewBackupCondition newBackupCondition;
        multipleBackupStrategy.getClass();
        b bVar = MultipleBackupStrategy.Companion;
        Integer maxNumOfBackups = multipleBackupStrategy.getMaxNumOfBackups();
        bVar.getClass();
        int iD = b.d(maxNumOfBackups);
        int i = e.a[b(multipleBackupStrategy).ordinal()];
        if (i == 1) {
            return MultipleBackupStrategy.Representation.SingleBackup.INSTANCE;
        }
        if (i == 2) {
            return new MultipleBackupStrategy.Representation.DatedBackups(iD);
        }
        if (i != 3) {
            q.j();
            return null;
        }
        if (multipleBackupStrategy.getConditionInt() == null) {
            MultipleBackupStrategy.NewBackupCondition.Companion.getClass();
            newBackupCondition = MultipleBackupStrategy.NewBackupCondition.f1default;
        } else {
            newBackupCondition = (MultipleBackupStrategy.NewBackupCondition) el1.V0(multipleBackupStrategy.getConditionInt().intValue(), MultipleBackupStrategy.NewBackupCondition.getEntries());
            if (newBackupCondition == null) {
                MultipleBackupStrategy.NewBackupCondition.Companion.getClass();
                newBackupCondition = MultipleBackupStrategy.NewBackupCondition.f1default;
            }
        }
        return new MultipleBackupStrategy.Representation.ConditionalBackups(iD, newBackupCondition);
    }

    public static final MultipleBackupStrategy.Type b(MultipleBackupStrategy multipleBackupStrategy) {
        int iOrdinal;
        multipleBackupStrategy.getClass();
        jx2 entries = MultipleBackupStrategy.Type.getEntries();
        Integer typeInt = multipleBackupStrategy.getTypeInt();
        if (typeInt != null) {
            iOrdinal = typeInt.intValue();
        } else {
            MultipleBackupStrategy.Type.Companion.getClass();
            iOrdinal = MultipleBackupStrategy.Type.f2default.ordinal();
        }
        MultipleBackupStrategy.Type type = (MultipleBackupStrategy.Type) el1.V0(iOrdinal, entries);
        if (type != null) {
            return type;
        }
        MultipleBackupStrategy.Type.Companion.getClass();
        return MultipleBackupStrategy.Type.f2default;
    }
}
