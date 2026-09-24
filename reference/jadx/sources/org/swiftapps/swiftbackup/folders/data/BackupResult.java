package org.swiftapps.swiftbackup.folders.data;

import defpackage.eq3;
import defpackage.pe4;
import defpackage.q63;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class BackupResult {
    private final boolean isSuccess;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Failure extends BackupResult {
        private final String message;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failure(String str) {
            super(false, 1, null);
            str.getClass();
            this.message = str;
        }

        public static /* synthetic */ Failure copy$default(Failure failure, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = failure.message;
            }
            return failure.copy(str);
        }

        public final String component1() {
            return this.message;
        }

        public final Failure copy(String str) {
            str.getClass();
            return new Failure(str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Failure) && pe4.d(this.message, ((Failure) obj).message);
        }

        public final String getMessage() {
            return this.message;
        }

        public int hashCode() {
            return this.message.hashCode();
        }

        public String toString() {
            return eq3.k("Failure(message=", this.message, ")");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class NoChange extends BackupResult {
        public static final NoChange INSTANCE = new NoChange();

        private NoChange() {
            super(true, null);
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof NoChange);
        }

        public int hashCode() {
            return -1722630991;
        }

        public String toString() {
            return "NoChange";
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Success extends BackupResult {
        private final q63 backupFile;
        private final q63 manifestFile;
        private final BackupStats stats;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(q63 q63Var, q63 q63Var2, BackupStats backupStats) {
            super(true, null);
            q63Var.getClass();
            q63Var2.getClass();
            backupStats.getClass();
            this.manifestFile = q63Var;
            this.backupFile = q63Var2;
            this.stats = backupStats;
        }

        public static /* synthetic */ Success copy$default(Success success, q63 q63Var, q63 q63Var2, BackupStats backupStats, int i, Object obj) {
            if ((i & 1) != 0) {
                q63Var = success.manifestFile;
            }
            if ((i & 2) != 0) {
                q63Var2 = success.backupFile;
            }
            if ((i & 4) != 0) {
                backupStats = success.stats;
            }
            return success.copy(q63Var, q63Var2, backupStats);
        }

        public final q63 component1() {
            return this.manifestFile;
        }

        public final q63 component2() {
            return this.backupFile;
        }

        public final BackupStats component3() {
            return this.stats;
        }

        public final Success copy(q63 q63Var, q63 q63Var2, BackupStats backupStats) {
            q63Var.getClass();
            q63Var2.getClass();
            backupStats.getClass();
            return new Success(q63Var, q63Var2, backupStats);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success success = (Success) obj;
            return pe4.d(this.manifestFile, success.manifestFile) && pe4.d(this.backupFile, success.backupFile) && pe4.d(this.stats, success.stats);
        }

        public final q63 getBackupFile() {
            return this.backupFile;
        }

        public final q63 getManifestFile() {
            return this.manifestFile;
        }

        public final BackupStats getStats() {
            return this.stats;
        }

        public int hashCode() {
            return this.stats.hashCode() + ((this.backupFile.a.hashCode() + (this.manifestFile.a.hashCode() * 31)) * 31);
        }

        public String toString() {
            return "Success(stats=" + this.stats + ")";
        }
    }

    public /* synthetic */ BackupResult(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, null);
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    private BackupResult(boolean z) {
        this.isSuccess = z;
    }

    public /* synthetic */ BackupResult(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(z);
    }
}
