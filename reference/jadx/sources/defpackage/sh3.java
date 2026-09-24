package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sh3 extends ViewGroup.MarginLayoutParams implements nh3 {
    public static final Parcelable.Creator<sh3> CREATOR = new mn0(1);
    public int a;
    public float b;
    public float c;
    public int d;
    public float e;
    public int f;
    public int k;
    public int n;
    public int p;
    public boolean q;

    @Override // defpackage.nh3
    public final int A() {
        return this.n;
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
        return this.d;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // defpackage.nh3
    public final float f() {
        return this.c;
    }

    @Override // defpackage.nh3
    public final int getOrder() {
        return this.a;
    }

    @Override // defpackage.nh3
    public final int h() {
        return this.f;
    }

    @Override // defpackage.nh3
    public final void i(int i) {
        this.f = i;
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
        this.k = i;
    }

    @Override // defpackage.nh3
    public final float r() {
        return this.b;
    }

    @Override // defpackage.nh3
    public final float s() {
        return this.e;
    }

    @Override // defpackage.nh3
    public final int t() {
        return ((ViewGroup.MarginLayoutParams) this).rightMargin;
    }

    @Override // defpackage.nh3
    public final int w() {
        return this.k;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeFloat(this.b);
        parcel.writeFloat(this.c);
        parcel.writeInt(this.d);
        parcel.writeFloat(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.k);
        parcel.writeInt(this.n);
        parcel.writeInt(this.p);
        parcel.writeByte(this.q ? (byte) 1 : (byte) 0);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
    }

    @Override // defpackage.nh3
    public final boolean x() {
        return this.q;
    }

    @Override // defpackage.nh3
    public final int y() {
        return this.p;
    }
}
