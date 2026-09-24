package defpackage;

import java.util.concurrent.ConcurrentHashMap;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rz implements bt3 {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ rf8 b;
    public final /* synthetic */ ConcurrentHashMap c;
    public final /* synthetic */ kh6 d;
    public final /* synthetic */ long e;
    public final /* synthetic */ kh6 f;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object p;

    public /* synthetic */ rz(a00 a00Var, gz gzVar, rf8 rf8Var, CloudMetadata cloudMetadata, ConcurrentHashMap concurrentHashMap, kh6 kh6Var, long j, kh6 kh6Var2) {
        this.k = a00Var;
        this.n = gzVar;
        this.b = rf8Var;
        this.p = cloudMetadata;
        this.c = concurrentHashMap;
        this.d = kh6Var;
        this.e = j;
        this.f = kh6Var2;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj = this.p;
        Object obj2 = this.n;
        Object obj3 = this.k;
        switch (i) {
            case 0:
                a00 a00Var = (a00) obj3;
                gz gzVar = (gz) obj2;
                CloudMetadata cloudMetadata = (CloudMetadata) obj;
                if (!a00Var.c()) {
                    ConcurrentHashMap concurrentHashMap = this.c;
                    kh6 kh6Var = this.d;
                    long j = this.e;
                    kh6 kh6Var2 = this.f;
                    rf8 rf8Var = this.b;
                    zf8 zf8VarB = a00.b(a00Var, concurrentHashMap, kh6Var, j, kh6Var2, gzVar, rf8Var);
                    if (zf8VarB.a()) {
                        cloudMetadata.updateSharedLibsDetails(zf8VarB.a, Long.valueOf(rf8Var.a()), Long.valueOf(io4.h(a00Var.f.getSharedLibsSizeMirrored())));
                    }
                }
                break;
            default:
                io3 io3Var = (io3) obj3;
                String str = (String) obj2;
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) obj;
                ho3 ho3Var = io3Var.j;
                if (((ho3Var.a == null && ho3Var.c == null) || ho3Var.a()) && !io3Var.i) {
                    go3 go3Var = new go3(concurrentHashMap2, str, this.d, io3Var, this.e, this.f);
                    p93 p93Var = p93.a;
                    rf8 rf8Var2 = this.b;
                    String strC = p93.c(Long.valueOf(rf8Var2.a()));
                    vr6 vr6Var = vr6.INSTANCE;
                    String str2 = rf8Var2.h;
                    vr6.i$default(vr6Var, "FolderUploadTask", eq3.l("Uploading ", str2, " (", strC, ")"), null, 4, null);
                    tb1 tb1Var = tb1.a;
                    ag8 ag8VarD = qb1.c().d(rf8Var2);
                    io3Var.g.add(ag8VarD);
                    String str3 = rf8Var2.f;
                    if (str3 != null && str3.length() != 0) {
                        ag8VarD.getClass();
                        ag8VarD.b = str3;
                    }
                    d7 d7Var = new d7(go3Var, 12);
                    ag8VarD.getClass();
                    ag8VarD.g = d7Var;
                    zf8 zf8VarC = ag8VarD.c();
                    if (zf8VarC.a()) {
                        go3Var.invoke(Long.valueOf(rf8Var2.a()));
                    }
                    if (zf8VarC.c()) {
                        ho3Var.a = dj7.k(io3Var.e.getFolderItem().getDisplayName(), ": ", zf8VarC.b());
                        ho3Var.b = zf8VarC.c;
                    }
                    if (zf8VarC.a()) {
                        vr6.i$default(vr6Var, "FolderUploadTask", xs1.j("Uploaded ", str2), null, 4, null);
                    }
                    if (zf8VarC.a()) {
                        this.c.put(str, zf8VarC);
                    }
                }
                break;
        }
        return be8Var;
    }

    public /* synthetic */ rz(io3 io3Var, String str, rf8 rf8Var, ConcurrentHashMap concurrentHashMap, ConcurrentHashMap concurrentHashMap2, kh6 kh6Var, long j, kh6 kh6Var2) {
        this.k = io3Var;
        this.n = str;
        this.b = rf8Var;
        this.c = concurrentHashMap;
        this.p = concurrentHashMap2;
        this.d = kh6Var;
        this.e = j;
        this.f = kh6Var2;
    }
}
