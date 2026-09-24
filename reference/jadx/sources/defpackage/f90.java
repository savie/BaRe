package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f90 implements Parcelable {
    public final int a;
    public final String b;
    public final Set c;
    public final List d;
    public final boolean e;
    public static final List f = Collections.unmodifiableList(Arrays.asList("com.android.chrome", "com.chrome.beta", "com.chrome.dev", "org.mozilla.firefox", "org.mozilla.firefox_beta", "org.mozilla.fenix"));
    public static final Parcelable.Creator<f90> CREATOR = new b90(0);

    public f90(Parcel parcel) {
        int i;
        byte b = parcel.readByte();
        if (b == 0) {
            i = 1;
        } else {
            if (b != 1) {
                c6.b();
                throw null;
            }
            i = 2;
        }
        this.a = i;
        this.b = parcel.readString();
        int i2 = parcel.readInt();
        if (i2 > 0) {
            HashSet hashSet = new HashSet(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                hashSet.add(parcel.readString());
            }
            this.c = Collections.unmodifiableSet(hashSet);
        } else {
            this.c = Collections.EMPTY_SET;
        }
        int i4 = parcel.readInt();
        if (i4 > 0) {
            ArrayList arrayList = new ArrayList();
            for (int i5 = 0; i5 < i4; i5++) {
                arrayList.add(parcel.readString());
            }
            this.d = Collections.unmodifiableList(arrayList);
        } else {
            this.d = Collections.EMPTY_LIST;
        }
        this.e = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f90.class != obj.getClass()) {
            return false;
        }
        f90 f90Var = (f90) obj;
        if (this.e == f90Var.e && this.a == f90Var.a && this.b.equals(f90Var.b)) {
            return this.c.equals(f90Var.c);
        }
        return false;
    }

    public final int hashCode() {
        return ((this.c.hashCode() + fz5.g(dj7.A(this.a) * 31, 31, this.b)) * 31) + (this.e ? 1 : 0);
    }

    public final String toString() {
        return "AuthorizationRequest{type=" + dj7.B(this.a) + ", clientId='" + this.b + "', permissions=" + this.c + ", customTabsPackages=" + this.d + ", forceAccessApproval=" + this.e + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte((byte) dj7.A(this.a));
        parcel.writeString(this.b);
        Set set = this.c;
        parcel.writeInt(set.size());
        Iterator it = set.iterator();
        while (it.hasNext()) {
            parcel.writeString((String) it.next());
        }
        List list = this.d;
        parcel.writeInt(list.size());
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            parcel.writeString((String) it2.next());
        }
        parcel.writeByte(this.e ? (byte) 1 : (byte) 0);
    }

    public f90(d90 d90Var) {
        this.a = d90Var.a;
        this.b = d90Var.b;
        this.c = Collections.unmodifiableSet(d90Var.c);
        this.d = Collections.unmodifiableList(d90Var.d);
        this.e = false;
    }
}
