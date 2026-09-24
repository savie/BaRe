package defpackage;

import android.content.Context;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class fo7 {
    public static final a Companion = new a(null);

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class b extends fo7 {
        private final long appUsage;
        private final float appUsagePercent;
        private final long totalMemory;
        private final long usedMemory;
        private final int usedPercent;

        public b(long j, long j2, int i, long j3, float f) {
            super(null);
            this.totalMemory = j;
            this.usedMemory = j2;
            this.usedPercent = i;
            this.appUsage = j3;
            this.appUsagePercent = f;
        }

        private final long component1() {
            return this.totalMemory;
        }

        private final long component2() {
            return this.usedMemory;
        }

        private final long component4() {
            return this.appUsage;
        }

        private final float component5() {
            return this.appUsagePercent;
        }

        public static /* synthetic */ b copy$default(b bVar, long j, long j2, int i, long j3, float f, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                j = bVar.totalMemory;
            }
            long j4 = j;
            if ((i2 & 2) != 0) {
                j2 = bVar.usedMemory;
            }
            long j5 = j2;
            if ((i2 & 4) != 0) {
                i = bVar.usedPercent;
            }
            return bVar.copy(j4, j5, i, (i2 & 8) != 0 ? bVar.appUsage : j3, (i2 & 16) != 0 ? bVar.appUsagePercent : f);
        }

        public final int component3() {
            return this.usedPercent;
        }

        public final b copy(long j, long j2, int i, long j3, float f) {
            return new b(j, j2, i, j3, f);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.totalMemory == bVar.totalMemory && this.usedMemory == bVar.usedMemory && this.usedPercent == bVar.usedPercent && this.appUsage == bVar.appUsage && Float.compare(this.appUsagePercent, bVar.appUsagePercent) == 0;
        }

        public final String getFreeMemoryString() {
            p93 p93Var = p93.a;
            return p93.c(Long.valueOf(Math.max(this.totalMemory - this.usedMemory, 0L)));
        }

        public final String getTotalMemoryString() {
            p93 p93Var = p93.a;
            return p93.c(Long.valueOf(this.totalMemory));
        }

        @Override // defpackage.fo7
        public String getUsageString() {
            SwiftApp.Companion companion = SwiftApp.d;
            String string = SwiftApp.Companion.c().getString(R.string.used_storage_text, this.usedPercent + "%");
            string.getClass();
            long j = this.totalMemory - this.usedMemory;
            Context contextC = SwiftApp.Companion.c();
            p93 p93Var = p93.a;
            String string2 = contextC.getString(R.string.free_storage_text, p93.c(Long.valueOf(j)));
            string2.getClass();
            return u48.n(string, " (", dj7.k(string2, " / ", p93.c(Long.valueOf(this.totalMemory))), ")");
        }

        public final String getUsedMemoryString() {
            p93 p93Var = p93.a;
            return p93.c(Long.valueOf(this.usedMemory));
        }

        public final int getUsedPercent() {
            return this.usedPercent;
        }

        public final float getUsedPercentExact() {
            return (this.usedMemory * 100.0f) / this.totalMemory;
        }

        public int hashCode() {
            return Float.hashCode(this.appUsagePercent) + xs1.f(this.appUsage, eq3.d(this.usedPercent, xs1.f(this.usedMemory, Long.hashCode(this.totalMemory) * 31, 31), 31), 31);
        }

        public String toString() {
            long j = this.totalMemory;
            long j2 = this.usedMemory;
            int i = this.usedPercent;
            long j3 = this.appUsage;
            float f = this.appUsagePercent;
            StringBuilder sbT = dj7.t("Normal(totalMemory=", ", usedMemory=", j);
            sbT.append(j2);
            sbT.append(", usedPercent=");
            sbT.append(i);
            fz5.r(sbT, ", appUsage=", j3, ", appUsagePercent=");
            sbT.append(f);
            sbT.append(")");
            return sbT.toString();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class c extends fo7 {
        public static final c INSTANCE = new c();

        private c() {
            super(null);
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof c);
        }

        @Override // defpackage.fo7
        public String getUsageString() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.storage_info_not_provided);
        }

        public int hashCode() {
            return -1886243161;
        }

        public String toString() {
            return "NotAvailable";
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class d extends fo7 {
        private final long appUsage;
        private final float appUsagePercent;
        private final long usedMemory;

        public d(long j, long j2, float f) {
            super(null);
            this.usedMemory = j;
            this.appUsage = j2;
            this.appUsagePercent = f;
        }

        private final long component1() {
            return this.usedMemory;
        }

        private final long component2() {
            return this.appUsage;
        }

        private final float component3() {
            return this.appUsagePercent;
        }

        public static /* synthetic */ d copy$default(d dVar, long j, long j2, float f, int i, Object obj) {
            if ((i & 1) != 0) {
                j = dVar.usedMemory;
            }
            long j3 = j;
            if ((i & 2) != 0) {
                j2 = dVar.appUsage;
            }
            long j4 = j2;
            if ((i & 4) != 0) {
                f = dVar.appUsagePercent;
            }
            return dVar.copy(j3, j4, f);
        }

        public final d copy(long j, long j2, float f) {
            return new d(j, j2, f);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.usedMemory == dVar.usedMemory && this.appUsage == dVar.appUsage && Float.compare(this.appUsagePercent, dVar.appUsagePercent) == 0;
        }

        @Override // defpackage.fo7
        public String getUsageString() {
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            p93 p93Var = p93.a;
            String string = contextC.getString(R.string.used_storage_text, p93.c(Long.valueOf(this.usedMemory)));
            string.getClass();
            return string;
        }

        public final String getUsedMemoryString() {
            p93 p93Var = p93.a;
            return p93.c(Long.valueOf(this.usedMemory));
        }

        public int hashCode() {
            return Float.hashCode(this.appUsagePercent) + xs1.f(this.appUsage, Long.hashCode(this.usedMemory) * 31, 31);
        }

        public String toString() {
            long j = this.usedMemory;
            long j2 = this.appUsage;
            float f = this.appUsagePercent;
            StringBuilder sbT = dj7.t("Unlimited(usedMemory=", ", appUsage=", j);
            sbT.append(j2);
            sbT.append(", appUsagePercent=");
            sbT.append(f);
            sbT.append(")");
            return sbT.toString();
        }
    }

    public /* synthetic */ fo7(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract String getUsageString();

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final fo7 create(ni1 ni1Var) {
            ni1Var.getClass();
            Long l = ni1Var.b;
            Long l2 = ni1Var.a;
            if (l2 != null) {
                return (l == null || l.longValue() == 0) ? new d(l2.longValue(), 0L, 0.0f) : new b(l.longValue(), l2.longValue(), (int) ((l2.longValue() * 100) / l.longValue()), 0L, 0.0f);
            }
            return c.INSTANCE;
        }

        private a() {
        }
    }

    private fo7() {
    }
}
