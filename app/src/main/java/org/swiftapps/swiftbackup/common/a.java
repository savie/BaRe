package org.swiftapps.swiftbackup.common;

import android.net.Uri;
import com.google.gson.b;
import com.google.gson.internal.Excluder;
import defpackage.bt3;
import defpackage.nn4;
import defpackage.t14;
import defpackage.tl4;
import defpackage.v14;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements bt3 {
    @Override // defpackage.bt3
    public final Object invoke() {
        t14 t14Var = new t14();
        t14Var.c(new b() { // from class: org.swiftapps.swiftbackup.common.GsonHelper$UriAdapter
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) {
                tl4Var.getClass();
                Uri uri = Uri.parse(tl4Var.nextString());
                uri.getClass();
                return uri;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                Uri uri = (Uri) obj;
                nn4Var.getClass();
                uri.getClass();
                nn4Var.S(uri.toString());
            }
        }, Uri.class);
        v14 v14Var = new v14[]{new v14()}[0];
        Excluder excluder = t14Var.a;
        Excluder excluderClone = excluder.clone();
        ArrayList arrayList = new ArrayList(excluder.b);
        excluderClone.b = arrayList;
        arrayList.add(v14Var);
        ArrayList arrayList2 = new ArrayList(excluder.c);
        excluderClone.c = arrayList2;
        arrayList2.add(v14Var);
        t14Var.a = excluderClone;
        return new com.google.gson.a(t14Var);
    }
}
