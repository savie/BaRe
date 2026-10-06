package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "AccessControlPolicy", strict = false)
public class r5 {

    @at2(name = "Owner", required = false)
    private kv5 a;

    @at2(name = "AccessControlList", required = false)
    private q5 b;

    public r5(@at2(name = "Owner", required = false) kv5 kv5Var, @at2(name = "AccessControlList", required = false) q5 q5Var) {
        this.a = kv5Var;
        this.b = q5Var;
    }

    public q5 a() {
        return this.b;
    }

    public String b() {
        List<q5.a> listA;
        int size;
        q5 q5Var = this.b;
        if (q5Var != null && (size = (listA = q5Var.a()).size()) >= 1 && size <= 3) {
            for (q5.a aVar : listA) {
                if (aVar != null) {
                    String strC = aVar.c();
                    if (aVar.d() == q5.c.FULL_CONTROL && size == 1 && "".equals(strC)) {
                        return "private";
                    }
                    if (aVar.d() == q5.c.READ && size == 2) {
                        if ("http://acs.amazonaws.com/groups/global/AuthenticatedUsers".equals(strC)) {
                            return "authenticated-read";
                        }
                        if ("http://acs.amazonaws.com/groups/global/AllUsers".equals(strC)) {
                            return "public-read";
                        }
                        if (this.a.b() != null && aVar.b() != null && this.a.b().equals(aVar.b())) {
                            return "bucket-owner-read";
                        }
                    } else if (aVar.d() == q5.c.WRITE && size == 3 && "http://acs.amazonaws.com/groups/global/AllUsers".equals(strC)) {
                        return "public-read-write";
                    }
                }
            }
        }
        return "";
    }

    public ti5 c() {
        if (this.b == null) {
            return null;
        }
        y24 y24Var = new y24();
        for (q5.a aVar : this.b.a()) {
            if (aVar != null) {
                String str = "id=" + aVar.b();
                if (aVar.d() == q5.c.READ) {
                    y24Var.g("X-Amz-Grant-Read", str);
                } else if (aVar.d() == q5.c.WRITE) {
                    y24Var.g("X-Amz-Grant-Write", str);
                } else if (aVar.d() == q5.c.READ_ACP) {
                    y24Var.g("X-Amz-Grant-Read-Acp", str);
                } else if (aVar.d() == q5.c.WRITE_ACP) {
                    y24Var.g("X-Amz-Grant-Write-Acp", str);
                } else if (aVar.d() == q5.c.FULL_CONTROL) {
                    y24Var.g("X-Amz-Grant-Full-Control", str);
                }
            }
        }
        return y24Var;
    }

    public kv5 d() {
        return this.a;
    }

    public String toString() {
        return eq3.l("AccessControlPolicy(owner=", ki8.e(this.a), ", accessControlList=", ki8.e(this.b), ")");
    }
}
