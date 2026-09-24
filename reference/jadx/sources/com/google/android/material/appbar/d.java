package com.google.android.material.appbar;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.e3;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends e3 {
    public static final Parcelable.Creator<d> CREATOR = new c();
    public boolean c;
    public boolean d;
    public int e;
    public float f;
    public boolean k;

    public d(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.c = parcel.readByte() != 0;
        this.d = parcel.readByte() != 0;
        this.e = parcel.readInt();
        this.f = parcel.readFloat();
        this.k = parcel.readByte() != 0;
    }

    @Override // defpackage.e3, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.e);
        parcel.writeFloat(this.f);
        parcel.writeByte(this.k ? (byte) 1 : (byte) 0);
    }
}
