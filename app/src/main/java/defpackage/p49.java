package defpackage;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.firebase.FirebaseApp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p49 extends i5 implements dh8 {
    public static final Parcelable.Creator<p49> CREATOR = new u80(11);
    public b69 a;
    public w1a b;
    public String c;
    public String d;
    public ArrayList e;
    public ArrayList f;
    public String k;
    public Boolean n;
    public l59 p;
    public boolean q;
    public ua9 r;
    public u99 t;
    public List x;

    public p49(FirebaseApp firebaseApp, ArrayList arrayList) {
        ly8.h(firebaseApp);
        this.c = firebaseApp.getName();
        this.d = "com.google.firebase.auth.internal.DefaultFirebaseUser";
        this.k = "2";
        u(arrayList);
    }

    @Override // defpackage.dh8
    public final Uri c() {
        return this.b.c();
    }

    @Override // defpackage.dh8
    public final String e() {
        return this.b.c;
    }

    @Override // defpackage.dh8
    public final String l() {
        return this.b.b;
    }

    @Override // defpackage.dh8
    public final String m() {
        return this.b.f;
    }

    public final String n() {
        String str;
        Map map;
        b69 b69Var = this.a;
        if (b69Var == null || (str = b69Var.b) == null || (map = (Map) q99.a(str).b.get("firebase")) == null) {
            return null;
        }
        return (String) map.get("tenant");
    }

    public final boolean q() {
        String str;
        Boolean bool = this.n;
        if (bool == null || bool.booleanValue()) {
            b69 b69Var = this.a;
            if (b69Var != null) {
                Map map = (Map) q99.a(b69Var.b).b.get("firebase");
                str = map != null ? (String) map.get("sign_in_provider") : null;
            } else {
                str = "";
            }
            boolean z = true;
            if (this.e.size() > 1 || (str != null && str.equals("custom"))) {
                z = false;
            }
            this.n = Boolean.valueOf(z);
        }
        return this.n.booleanValue();
    }

    public final synchronized void u(ArrayList arrayList) {
        try {
            ly8.h(arrayList);
            this.e = new ArrayList(arrayList.size());
            this.f = new ArrayList(arrayList.size());
            for (int i = 0; i < arrayList.size(); i++) {
                dh8 dh8Var = (dh8) arrayList.get(i);
                if (dh8Var.l().equals("firebase")) {
                    this.b = (w1a) dh8Var;
                } else {
                    this.f.add(dh8Var.l());
                }
                this.e.add((w1a) dh8Var);
            }
            if (this.b == null) {
                this.b = (w1a) this.e.get(0);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void v(ArrayList arrayList) {
        u99 u99Var;
        if (arrayList.isEmpty()) {
            u99Var = null;
        } else {
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                uh5 uh5Var = (uh5) it.next();
                if (uh5Var instanceof yz5) {
                    arrayList2.add((yz5) uh5Var);
                } else if (uh5Var instanceof v88) {
                    arrayList3.add((v88) uh5Var);
                }
            }
            u99Var = new u99(arrayList2, arrayList3);
        }
        this.t = u99Var;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.v0(parcel, 1, this.a, i);
        yc9.v0(parcel, 2, this.b, i);
        yc9.w0(parcel, 3, this.c);
        yc9.w0(parcel, 4, this.d);
        yc9.z0(parcel, 5, this.e);
        yc9.x0(parcel, 6, this.f);
        yc9.w0(parcel, 7, this.k);
        boolean zQ = q();
        yc9.D0(parcel, 8, 4);
        parcel.writeInt(zQ ? 1 : 0);
        yc9.v0(parcel, 9, this.p, i);
        boolean z = this.q;
        yc9.D0(parcel, 10, 4);
        parcel.writeInt(z ? 1 : 0);
        yc9.v0(parcel, 11, this.r, i);
        yc9.v0(parcel, 12, this.t, i);
        yc9.z0(parcel, 13, this.x);
        yc9.G0(parcel, iF0);
    }
}
