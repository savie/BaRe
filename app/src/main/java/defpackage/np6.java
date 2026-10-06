package defpackage;

import android.os.Looper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class np6 {
    public static final a Companion = new a(null);

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class b extends np6 {
        public static final b INSTANCE = new b();
        private static final os4 version$delegate = new gv7(new sm(13));

        private b() {
            super(null);
        }

        private final String getVersion() {
            return (String) version$delegate.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String version_delegate$lambda$0() {
            return mp6.a.b();
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof b);
        }

        @Override // defpackage.np6
        public String getRootAccessValueString() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.granted);
        }

        @Override // defpackage.np6
        public String getRootProviderValueString() {
            String version = getVersion();
            if (version == null || version.length() == 0) {
                version = null;
            }
            if (version != null) {
                return version;
            }
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.unknown);
        }

        public int hashCode() {
            return -613723538;
        }

        public String toString() {
            return "Granted";
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class c extends np6 {
        public static final c INSTANCE = new c();

        private c() {
            super(null);
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof c);
        }

        @Override // defpackage.np6
        public String getRootAccessValueString() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.not_available);
        }

        @Override // defpackage.np6
        public String getRootProviderValueString() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.none);
        }

        public int hashCode() {
            return -872973981;
        }

        public String toString() {
            return "NotAvailable";
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class d extends np6 {
        public static final d INSTANCE = new d();

        private d() {
            super(null);
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof d);
        }

        @Override // defpackage.np6
        public String getRootAccessValueString() {
            return "No root, ADB access via Shizuku";
        }

        @Override // defpackage.np6
        public String getRootProviderValueString() {
            return fz5.j(qe7.a(), "Shizuku v");
        }

        public int hashCode() {
            return -398229489;
        }

        public String toString() {
            return "ShizukuMode";
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class e extends np6 {
        public static final e INSTANCE = new e();

        private e() {
            super(null);
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof e);
        }

        @Override // defpackage.np6
        public String getRootAccessValueString() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.waiting);
        }

        @Override // defpackage.np6
        public String getRootProviderValueString() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.waiting);
        }

        public int hashCode() {
            return 222294528;
        }

        public String toString() {
            return "Waiting";
        }
    }

    public /* synthetic */ np6(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String getRootAccessString() {
        SwiftApp.Companion companion = SwiftApp.d;
        return dj7.k(dj7.g(R.string.access), ": ", getRootAccessValueString());
    }

    public abstract String getRootAccessValueString();

    public final String getRootProviderString() {
        SwiftApp.Companion companion = SwiftApp.d;
        return dj7.k(dj7.g(R.string.root_provider), ": ", getRootProviderValueString());
    }

    public abstract String getRootProviderValueString();

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final np6 create(boolean z) {
            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                d6.o();
                return null;
            }
            if (mp6.d(mp6.a, z, false, 2)) {
                return b.INSTANCE;
            }
            gv7 gv7Var = qe7.a;
            return (le7.f() && qe7.b()) ? d.INSTANCE : c.INSTANCE;
        }

        private a() {
        }
    }

    private np6() {
    }
}
