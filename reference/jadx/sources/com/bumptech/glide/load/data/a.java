package com.bumptech.glide.load.data;

import android.os.ParcelFileDescriptor;
import defpackage.za2;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements za2 {
    public final ParcelFileDescriptorRewinder$InternalRewinder a;

    public a(ParcelFileDescriptor parcelFileDescriptor) {
        this.a = new ParcelFileDescriptorRewinder$InternalRewinder(parcelFileDescriptor);
    }

    public final ParcelFileDescriptor a() {
        return this.a.rewind();
    }

    @Override // defpackage.za2
    public final Object l() {
        return this.a.rewind();
    }

    @Override // defpackage.za2
    public final void c() {
    }
}
