package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.b90;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c0 implements Parcelable {
    public static final Parcelable.Creator<c0> CREATOR = new b90(4);
    public final boolean G;
    public final String a;
    public final String b;
    public final boolean c;
    public final boolean d;
    public final int e;
    public final int f;
    public final String k;
    public final boolean n;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final int t;
    public final String x;
    public final int y;

    public c0(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readInt() != 0;
        this.d = parcel.readInt() != 0;
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.k = parcel.readString();
        this.n = parcel.readInt() != 0;
        this.p = parcel.readInt() != 0;
        this.q = parcel.readInt() != 0;
        this.r = parcel.readInt() != 0;
        this.t = parcel.readInt();
        this.x = parcel.readString();
        this.y = parcel.readInt();
        this.G = parcel.readInt() != 0;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.a);
        sb.append(" (");
        sb.append(this.b);
        sb.append(")}:");
        if (this.c) {
            sb.append(" fromLayout");
        }
        if (this.d) {
            sb.append(" dynamicContainer");
        }
        int i = this.f;
        if (i != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(i));
        }
        String str = this.k;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(str);
        }
        if (this.n) {
            sb.append(" retainInstance");
        }
        if (this.p) {
            sb.append(" removing");
        }
        if (this.q) {
            sb.append(" detached");
        }
        if (this.r) {
            sb.append(" hidden");
        }
        String str2 = this.x;
        if (str2 != null) {
            sb.append(" targetWho=");
            sb.append(str2);
            sb.append(" targetRequestCode=");
            sb.append(this.y);
        }
        if (this.G) {
            sb.append(" userVisibleHint");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c ? 1 : 0);
        parcel.writeInt(this.d ? 1 : 0);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeString(this.k);
        parcel.writeInt(this.n ? 1 : 0);
        parcel.writeInt(this.p ? 1 : 0);
        parcel.writeInt(this.q ? 1 : 0);
        parcel.writeInt(this.r ? 1 : 0);
        parcel.writeInt(this.t);
        parcel.writeString(this.x);
        parcel.writeInt(this.y);
        parcel.writeInt(this.G ? 1 : 0);
    }

    public c0(o oVar) {
        this.a = oVar.getClass().getName();
        this.b = oVar.mWho;
        this.c = oVar.mFromLayout;
        this.d = oVar.mInDynamicContainer;
        this.e = oVar.mFragmentId;
        this.f = oVar.mContainerId;
        this.k = oVar.mTag;
        this.n = oVar.mRetainInstance;
        this.p = oVar.mRemoving;
        this.q = oVar.mDetached;
        this.r = oVar.mHidden;
        this.t = oVar.mMaxState.ordinal();
        this.x = oVar.mTargetWho;
        this.y = oVar.mTargetRequestCode;
        this.G = oVar.mUserVisibleHint;
    }
}
