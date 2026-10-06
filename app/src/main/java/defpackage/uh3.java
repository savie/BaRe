package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uh3 extends qg6 implements nh3 {
    public static final Parcelable.Creator<uh3> CREATOR = new f9(1);
    public float e;
    public float f;
    public int k;
    public float n;
    public int p;
    public int q;
    public int r;
    public int t;
    public boolean x;

    @Override // defpackage.nh3
    public final int A() {
        return this.r;
    }

    @Override // defpackage.nh3
    public final int a() {
        return ((ViewGroup.MarginLayoutParams) this).height;
    }

    @Override // defpackage.nh3
    public final int b() {
        return ((ViewGroup.MarginLayoutParams) this).width;
    }

    @Override // defpackage.nh3
    public final int d() {
        return this.k;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // defpackage.nh3
    public final float f() {
        return this.f;
    }

    @Override // defpackage.nh3
    public final int getOrder() {
        return 1;
    }

    @Override // defpackage.nh3
    public final int h() {
        return this.p;
    }

    @Override // defpackage.nh3
    public final void i(int i) {
        this.p = i;
    }

    @Override // defpackage.nh3
    public final int j() {
        return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
    }

    @Override // defpackage.nh3
    public final int k() {
        return ((ViewGroup.MarginLayoutParams) this).leftMargin;
    }

    @Override // defpackage.nh3
    public final int o() {
        return ((ViewGroup.MarginLayoutParams) this).topMargin;
    }

    @Override // defpackage.nh3
    public final void p(int i) {
        this.q = i;
    }

    @Override // defpackage.nh3
    public final float r() {
        return this.e;
    }

    @Override // defpackage.nh3
    public final float s() {
        return this.n;
    }

    @Override // defpackage.nh3
    public final int t() {
        return ((ViewGroup.MarginLayoutParams) this).rightMargin;
    }

    @Override // defpackage.nh3
    public final int w() {
        return this.q;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.e);
        parcel.writeFloat(this.f);
        parcel.writeInt(this.k);
        parcel.writeFloat(this.n);
        parcel.writeInt(this.p);
        parcel.writeInt(this.q);
        parcel.writeInt(this.r);
        parcel.writeInt(this.t);
        parcel.writeByte(this.x ? (byte) 1 : (byte) 0);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
    }

    @Override // defpackage.nh3
    public final boolean x() {
        return this.x;
    }

    @Override // defpackage.nh3
    public final int y() {
        return this.t;
    }
}
