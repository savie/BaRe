package org.swiftapps.swiftbackup.model;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.be8;
import defpackage.cz4;
import defpackage.d6;
import defpackage.dj7;
import defpackage.eq3;
import defpackage.fz5;
import defpackage.gv7;
import defpackage.io4;
import defpackage.mp6;
import defpackage.p93;
import defpackage.pe4;
import defpackage.q63;
import defpackage.qy5;
import defpackage.ry5;
import defpackage.to5;
import defpackage.u48;
import defpackage.w14;
import defpackage.xs1;
import defpackage.yi5;
import java.text.NumberFormat;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class StorageInfoLocal {
    public static final a Companion = new a(null);

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class b extends StorageInfoLocal {
        public static final b INSTANCE = new b();

        private b() {
            super(null);
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof b);
        }

        public int hashCode() {
            return -2054543763;
        }

        public String toString() {
            return "Error";
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class c extends StorageInfoLocal {
        public static final c INSTANCE = new c();

        private c() {
            super(null);
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof c);
        }

        public int hashCode() {
            return -1210929055;
        }

        public String toString() {
            return "Loading";
        }
    }

    public /* synthetic */ StorageInfoLocal(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Success extends StorageInfoLocal implements Parcelable {
        public static final Parcelable.Creator<Success> CREATOR = new a();
        private final long appUsage;
        private final float appUsagePercent;
        private final long totalMemory;
        private final long usedMemory;
        private final int usedPercent;

        public Success(long j, long j2, int i, long j3, float f) {
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

        public static /* synthetic */ Success copy$default(Success success, long j, long j2, int i, long j3, float f, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                j = success.totalMemory;
            }
            long j4 = j;
            if ((i2 & 2) != 0) {
                j2 = success.usedMemory;
            }
            long j5 = j2;
            if ((i2 & 4) != 0) {
                i = success.usedPercent;
            }
            return success.copy(j4, j5, i, (i2 & 8) != 0 ? success.appUsage : j3, (i2 & 16) != 0 ? success.appUsagePercent : f);
        }

        public final int component3() {
            return this.usedPercent;
        }

        public final long component4() {
            return this.appUsage;
        }

        public final float component5() {
            return this.appUsagePercent;
        }

        public final Success copy(long j, long j2, int i, long j3, float f) {
            return new Success(j, j2, i, j3, f);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success success = (Success) obj;
            return this.totalMemory == success.totalMemory && this.usedMemory == success.usedMemory && this.usedPercent == success.usedPercent && this.appUsage == success.appUsage && Float.compare(this.appUsagePercent, success.appUsagePercent) == 0;
        }

        public final long getAppUsage() {
            return this.appUsage;
        }

        public final float getAppUsagePercent() {
            return this.appUsagePercent;
        }

        public final String getAppUsageString() {
            NumberFormat numberInstance = NumberFormat.getNumberInstance();
            numberInstance.setMaximumFractionDigits(1);
            SwiftApp.Companion companion = SwiftApp.d;
            String string = SwiftApp.Companion.c().getString(R.string.app_usage_storage_text, numberInstance.format(this.appUsagePercent));
            string.getClass();
            p93 p93Var = p93.a;
            return u48.n(string, " (", p93.c(Long.valueOf(this.appUsage)), ")");
        }

        public final String getFreeMemoryString() {
            p93 p93Var = p93.a;
            return p93.c(Long.valueOf(Math.max(this.totalMemory - this.usedMemory, 0L)));
        }

        public final String getTotalMemoryString() {
            p93 p93Var = p93.a;
            return p93.c(Long.valueOf(this.totalMemory));
        }

        public final String getUsageString() {
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
            StringBuilder sbT = dj7.t("Success(totalMemory=", ", usedMemory=", j);
            sbT.append(j2);
            sbT.append(", usedPercent=");
            sbT.append(i);
            fz5.r(sbT, ", appUsage=", j3, ", appUsagePercent=");
            sbT.append(f);
            sbT.append(")");
            return sbT.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeLong(this.totalMemory);
            parcel.writeLong(this.usedMemory);
            parcel.writeInt(this.usedPercent);
            parcel.writeLong(this.appUsage);
            parcel.writeFloat(this.appUsagePercent);
        }

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class a implements Parcelable.Creator {
            @Override // android.os.Parcelable.Creator
            public final Success createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Success(parcel.readLong(), parcel.readLong(), parcel.readInt(), parcel.readLong(), parcel.readFloat());
            }

            @Override // android.os.Parcelable.Creator
            public final Success[] newArray(int i) {
                return new Success[i];
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Success _get_savedStorageInfo_$lambda$0(String str) {
            gv7 gv7Var = w14.a;
            return (Success) w14.c().c(str, Success.class);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final be8 _set_savedStorageInfo_$lambda$0(Success success) {
            gv7 gv7Var = w14.a;
            String strI = w14.c().i(success);
            SharedPreferences.Editor editor = cz4.k;
            if (editor != null) {
                editor.putString("saved_storage_info_local", strI).apply();
                return be8.a;
            }
            pe4.F("editor");
            throw null;
        }

        public static /* synthetic */ StorageInfoLocal create$default(a aVar, q63 q63Var, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = true;
            }
            return aVar.create(q63Var, z);
        }

        public final StorageInfoLocal create(q63 q63Var, boolean z) {
            long jG;
            float f;
            q63Var.getClass();
            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                d6.o();
                return null;
            }
            String str = ry5.u;
            long totalSpace = q63Var.n().getFile().getTotalSpace();
            Long lValueOf = totalSpace > 0 ? Long.valueOf(totalSpace) : null;
            if (lValueOf == null) {
                return b.INSTANCE;
            }
            long jLongValue = lValueOf.longValue();
            Long lC = qy5.c(q63Var);
            if (lC == null) {
                return b.INSTANCE;
            }
            long jLongValue2 = jLongValue - lC.longValue();
            int i = (int) ((100 * jLongValue2) / jLongValue);
            if (z) {
                jG = mp6.g ? p93.g(p93.a, q63Var.v()) : p93.a.f(q63Var.v());
            } else {
                jG = -1;
            }
            long j = jG;
            if (z) {
                f = jLongValue == 0 ? 0.0f : (j / jLongValue) * 100.0f;
            } else {
                f = -1.0f;
            }
            return new Success(jLongValue, jLongValue2, i, j, f);
        }

        public final Success getSavedStorageInfo() {
            String string;
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                string = sharedPreferences.getString("saved_storage_info_local", null);
                if (string == null || string.length() == 0) {
                    return null;
                }
                return (Success) io4.j("StorageInfoLocal", null, true, new to5(string, 9), 2);
            } catch (ClassCastException unused) {
                string = null;
            }
        }

        public final void setSavedStorageInfo(Success success) {
            io4.j("StorageInfoLocal", null, true, new yi5(success, 8), 2);
        }

        private a() {
        }
    }

    private StorageInfoLocal() {
    }
}
