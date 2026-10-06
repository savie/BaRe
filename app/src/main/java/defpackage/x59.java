package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x59 {
    public final String a;
    public String b;
    public final boolean c;
    public String d;
    public String e;
    public nh f;
    public final String g;
    public final long h;
    public final long i;
    public boolean j;
    public ua9 k;
    public final List l;
    public z59 m;

    public x59(String str, String str2, boolean z, String str3, String str4, nh nhVar, String str5, long j, long j2, ArrayList arrayList, x89 x89Var) {
        this.a = str;
        this.b = str2;
        this.c = z;
        this.d = str3;
        this.e = str4;
        List list = (List) nhVar.b;
        nh nhVar2 = new nh();
        if (list != null) {
            ((List) nhVar2.b).addAll(list);
        }
        this.f = nhVar2;
        this.g = str5;
        this.h = j;
        this.i = j2;
        this.j = false;
        this.k = null;
        this.l = arrayList;
        this.m = x89Var;
    }
}
