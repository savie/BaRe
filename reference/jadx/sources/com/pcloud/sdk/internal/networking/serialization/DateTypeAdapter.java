package com.pcloud.sdk.internal.networking.serialization;

import com.google.gson.b;
import defpackage.nn4;
import defpackage.tl4;
import java.io.IOException;
import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class DateTypeAdapter extends b {
    @Override // com.google.gson.b
    public final Object read(tl4 tl4Var) {
        if (tl4Var.peek() == 7) {
            return new Date(tl4Var.nextLong() * 1000);
        }
        return null;
    }

    @Override // com.google.gson.b
    public final void write(nn4 nn4Var, Object obj) throws IOException {
        Date date = (Date) obj;
        if (date == null) {
            nn4Var.r();
        } else {
            nn4Var.G(date.getTime());
        }
    }
}
