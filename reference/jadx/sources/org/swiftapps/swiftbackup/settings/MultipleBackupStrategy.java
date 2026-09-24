package org.swiftapps.swiftbackup.settings;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.b7;
import defpackage.dj7;
import defpackage.fz5;
import defpackage.g84;
import defpackage.gv7;
import defpackage.jx2;
import defpackage.ly8;
import defpackage.m8;
import defpackage.os4;
import defpackage.ov;
import defpackage.pe4;
import defpackage.pu;
import defpackage.q;
import defpackage.qm;
import defpackage.sz8;
import defpackage.xs1;
import defpackage.zj;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class MultipleBackupStrategy implements Parcelable {
    private static final int DEFAULT_NUM_OF_MULTIPLE_BACKUPS = 2;
    public static final int MAX_NUM_OF_MULTIPLE_BACKUPS = 10;
    public static final int MIN_NUM_OF_MULTIPLE_BACKUPS = 2;
    private static final String PREF_KEY_STRATEGY = "apps_multiple_backups_strategy";
    private final Integer conditionInt;
    private final Integer maxNumOfBackups;
    private final Integer typeInt;
    public static final b Companion = new b();
    public static final Parcelable.Creator<MultipleBackupStrategy> CREATOR = new m8(9);
    private static final os4 defaultStrategy$delegate = new gv7(new zj(12));
    private static final os4 singleBackupStrategy$delegate = new gv7(new b7(23));
    private static final os4 defaultDatedBackupsStrategy$delegate = new gv7(new ov(11));
    private static final os4 defaultConditionalBackupsStrategy$delegate = new gv7(new qm(15));
    private static final os4 legacyArchiveStrategy$delegate = new gv7(new pu(10));

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 org.swiftapps.swiftbackup.settings.MultipleBackupStrategy$NewBackupCondition, still in use, count: 1, list:
      (r0v0 org.swiftapps.swiftbackup.settings.MultipleBackupStrategy$NewBackupCondition) from 0x0031: SPUT (r0v0 org.swiftapps.swiftbackup.settings.MultipleBackupStrategy$NewBackupCondition) (LINE:50) org.swiftapps.swiftbackup.settings.MultipleBackupStrategy.NewBackupCondition.default org.swiftapps.swiftbackup.settings.MultipleBackupStrategy$NewBackupCondition
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class NewBackupCondition {
        ApkChanges,
        DataChanges,
        ApkOrDataChanges;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
        public static final c Companion = new c();

        /* JADX INFO: renamed from: default, reason: not valid java name */
        private static final NewBackupCondition f1default = new NewBackupCondition();

        static {
        }

        private NewBackupCondition() {
            super(str, i);
        }

        public static jx2 getEntries() {
            return $ENTRIES;
        }

        public static NewBackupCondition valueOf(String str) {
            return (NewBackupCondition) Enum.valueOf(NewBackupCondition.class, str);
        }

        public static NewBackupCondition[] values() {
            return (NewBackupCondition[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v2 org.swiftapps.swiftbackup.settings.MultipleBackupStrategy$Type, still in use, count: 1, list:
      (r0v2 org.swiftapps.swiftbackup.settings.MultipleBackupStrategy$Type) from 0x0031: SPUT (r0v2 org.swiftapps.swiftbackup.settings.MultipleBackupStrategy$Type) (LINE:50) org.swiftapps.swiftbackup.settings.MultipleBackupStrategy.Type.default org.swiftapps.swiftbackup.settings.MultipleBackupStrategy$Type
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Type {
        SingleBackup,
        DatedBackups,
        ConditionalBackup;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
        public static final d Companion = new d();

        /* JADX INFO: renamed from: default, reason: not valid java name */
        private static final Type f2default = new Type();

        static {
        }

        private Type() {
            super(str, i);
        }

        public static jx2 getEntries() {
            return $ENTRIES;
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    public /* synthetic */ MultipleBackupStrategy(Integer num, Integer num2, Integer num3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : num2, (i & 4) != 0 ? null : num3);
    }

    public static /* synthetic */ MultipleBackupStrategy copy$default(MultipleBackupStrategy multipleBackupStrategy, Integer num, Integer num2, Integer num3, int i, Object obj) {
        if ((i & 1) != 0) {
            num = multipleBackupStrategy.typeInt;
        }
        if ((i & 2) != 0) {
            num2 = multipleBackupStrategy.maxNumOfBackups;
        }
        if ((i & 4) != 0) {
            num3 = multipleBackupStrategy.conditionInt;
        }
        return multipleBackupStrategy.copy(num, num2, num3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MultipleBackupStrategy defaultConditionalBackupsStrategy_delegate$lambda$0() {
        Companion.getClass();
        return b.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MultipleBackupStrategy defaultDatedBackupsStrategy_delegate$lambda$0() {
        return new MultipleBackupStrategy(Integer.valueOf(Type.DatedBackups.ordinal()), 2, null, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MultipleBackupStrategy defaultStrategy_delegate$lambda$0() {
        Companion.getClass();
        return (MultipleBackupStrategy) singleBackupStrategy$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MultipleBackupStrategy legacyArchiveStrategy_delegate$lambda$0() {
        return new MultipleBackupStrategy(Integer.valueOf(Type.ConditionalBackup.ordinal()), 2, Integer.valueOf(NewBackupCondition.ApkChanges.ordinal()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MultipleBackupStrategy singleBackupStrategy_delegate$lambda$0() {
        return new MultipleBackupStrategy(Integer.valueOf(Type.SingleBackup.ordinal()), null, null, 6, null);
    }

    public final Integer component1() {
        return this.typeInt;
    }

    public final Integer component2() {
        return this.maxNumOfBackups;
    }

    public final Integer component3() {
        return this.conditionInt;
    }

    public final MultipleBackupStrategy copy(Integer num, Integer num2, Integer num3) {
        return new MultipleBackupStrategy(num, num2, num3);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MultipleBackupStrategy)) {
            return false;
        }
        MultipleBackupStrategy multipleBackupStrategy = (MultipleBackupStrategy) obj;
        return pe4.d(this.typeInt, multipleBackupStrategy.typeInt) && pe4.d(this.maxNumOfBackups, multipleBackupStrategy.maxNumOfBackups) && pe4.d(this.conditionInt, multipleBackupStrategy.conditionInt);
    }

    public final Integer getConditionInt() {
        return this.conditionInt;
    }

    public final Integer getMaxNumOfBackups() {
        return this.maxNumOfBackups;
    }

    public final Integer getTypeInt() {
        return this.typeInt;
    }

    public int hashCode() {
        Integer num = this.typeInt;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.maxNumOfBackups;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.conditionInt;
        return iHashCode2 + (num3 != null ? num3.hashCode() : 0);
    }

    public String toString() {
        return "MultipleBackupStrategy(typeInt=" + this.typeInt + ", maxNumOfBackups=" + this.maxNumOfBackups + ", conditionInt=" + this.conditionInt + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        Integer num = this.typeInt;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num);
        }
        Integer num2 = this.maxNumOfBackups;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num2);
        }
        Integer num3 = this.conditionInt;
        if (num3 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num3);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class Representation {
        private final int maxNumOfBackups;

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class ConditionalBackups extends Representation {
            private final NewBackupCondition condition;
            private final int maxNumOfBackups;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ConditionalBackups(int i, NewBackupCondition newBackupCondition) {
                super(i, null);
                newBackupCondition.getClass();
                this.maxNumOfBackups = i;
                this.condition = newBackupCondition;
            }

            public static /* synthetic */ ConditionalBackups copy$default(ConditionalBackups conditionalBackups, int i, NewBackupCondition newBackupCondition, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = conditionalBackups.maxNumOfBackups;
                }
                if ((i2 & 2) != 0) {
                    newBackupCondition = conditionalBackups.condition;
                }
                return conditionalBackups.copy(i, newBackupCondition);
            }

            public final int component1() {
                return this.maxNumOfBackups;
            }

            public final NewBackupCondition component2() {
                return this.condition;
            }

            public final ConditionalBackups copy(int i, NewBackupCondition newBackupCondition) {
                newBackupCondition.getClass();
                return new ConditionalBackups(i, newBackupCondition);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof ConditionalBackups)) {
                    return false;
                }
                ConditionalBackups conditionalBackups = (ConditionalBackups) obj;
                return this.maxNumOfBackups == conditionalBackups.maxNumOfBackups && this.condition == conditionalBackups.condition;
            }

            public final NewBackupCondition getCondition() {
                return this.condition;
            }

            @Override // org.swiftapps.swiftbackup.settings.MultipleBackupStrategy.Representation
            public int getMaxNumOfBackups() {
                return this.maxNumOfBackups;
            }

            public int hashCode() {
                return this.condition.hashCode() + (Integer.hashCode(this.maxNumOfBackups) * 31);
            }

            public String toString() {
                return "ConditionalBackups(maxNumOfBackups=" + this.maxNumOfBackups + ", condition=" + this.condition + ")";
            }
        }

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class DatedBackups extends Representation {
            private final int maxNumOfBackups;

            public DatedBackups(int i) {
                super(i, null);
                this.maxNumOfBackups = i;
            }

            public static /* synthetic */ DatedBackups copy$default(DatedBackups datedBackups, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = datedBackups.maxNumOfBackups;
                }
                return datedBackups.copy(i);
            }

            public final int component1() {
                return this.maxNumOfBackups;
            }

            public final DatedBackups copy(int i) {
                return new DatedBackups(i);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof DatedBackups) && this.maxNumOfBackups == ((DatedBackups) obj).maxNumOfBackups;
            }

            @Override // org.swiftapps.swiftbackup.settings.MultipleBackupStrategy.Representation
            public int getMaxNumOfBackups() {
                return this.maxNumOfBackups;
            }

            public int hashCode() {
                return Integer.hashCode(this.maxNumOfBackups);
            }

            public String toString() {
                return xs1.h(this.maxNumOfBackups, "DatedBackups(maxNumOfBackups=", ")");
            }
        }

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class SingleBackup extends Representation {
            public static final SingleBackup INSTANCE = new SingleBackup();

            private SingleBackup() {
                super(1, null);
            }

            public boolean equals(Object obj) {
                return this == obj || (obj instanceof SingleBackup);
            }

            public int hashCode() {
                return -584692927;
            }

            public String toString() {
                return "SingleBackup";
            }
        }

        private Representation(int i) {
            this.maxNumOfBackups = i;
        }

        public static /* synthetic */ String displaySubtitle$default(Representation representation, boolean z, int i, Object obj) {
            if (obj != null) {
                g84.j("Super calls with default arguments not supported in this target, function: displaySubtitle");
                return null;
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return representation.displaySubtitle(z);
        }

        public static /* synthetic */ String displayTitle$default(Representation representation, boolean z, int i, Object obj) {
            if (obj != null) {
                g84.j("Super calls with default arguments not supported in this target, function: displayTitle");
                return null;
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return representation.displayTitle(z);
        }

        public final String displaySubtitle(boolean z) {
            int i;
            if (this instanceof SingleBackup) {
                i = R.string.multiple_backups_strategy_single_description;
            } else if (this instanceof ConditionalBackups) {
                i = R.string.multiple_backups_strategy_conditional_description;
            } else {
                if (!(this instanceof DatedBackups)) {
                    q.j();
                    return null;
                }
                i = R.string.multiple_backups_strategy_dated_description;
            }
            if (!z) {
                SwiftApp.Companion companion = SwiftApp.d;
                return dj7.g(i);
            }
            SwiftApp.Companion companion2 = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            Locale locale = Locale.ENGLISH;
            locale.getClass();
            String string = sz8.u(contextC, locale).getString(i);
            string.getClass();
            return string;
        }

        public final String displayTitle(boolean z) {
            int i;
            if (this instanceof SingleBackup) {
                i = R.string.multiple_backups_strategy_single_title;
            } else if (this instanceof ConditionalBackups) {
                i = R.string.multiple_backups_strategy_conditional_title;
            } else {
                if (!(this instanceof DatedBackups)) {
                    q.j();
                    return null;
                }
                i = R.string.multiple_backups_strategy_dated_title;
            }
            if (!z) {
                SwiftApp.Companion companion = SwiftApp.d;
                return dj7.g(i);
            }
            SwiftApp.Companion companion2 = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            Locale locale = Locale.ENGLISH;
            locale.getClass();
            String string = sz8.u(contextC, locale).getString(i);
            string.getClass();
            return string;
        }

        public int getMaxNumOfBackups() {
            return this.maxNumOfBackups;
        }

        public final boolean isMultipleBackups() {
            return !isSingleBackup();
        }

        public final boolean isPremium() {
            if (!isMultipleBackups()) {
                return false;
            }
            MultipleBackupStrategy.Companion.getClass();
            return !equals(f.a(b.b()));
        }

        public final boolean isSingleBackup() {
            return this instanceof SingleBackup;
        }

        public final String preferenceSummary() {
            return displayTitle$default(this, false, 1, null);
        }

        public /* synthetic */ Representation(int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(i);
        }
    }

    public MultipleBackupStrategy(Integer num, Integer num2, Integer num3) {
        this.typeInt = num;
        this.maxNumOfBackups = num2;
        this.conditionInt = num3;
    }

    public MultipleBackupStrategy() {
        this(null, null, null, 7, null);
    }
}
