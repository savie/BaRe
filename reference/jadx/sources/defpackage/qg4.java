package defpackage;

import java.time.ZonedDateTime;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class qg4 {

    @at2(name = "ETag", required = false)
    private String a;

    @at2(name = "Key")
    private String b;

    @at2(name = "LastModified")
    private h38.a c;

    @at2(name = "Owner", required = false)
    private kv5 d;

    @at2(name = "Size", required = false)
    private long e;

    @at2(name = "StorageClass", required = false)
    private String f;

    @at2(name = "IsLatest", required = false)
    private boolean g;

    @at2(name = "VersionId", required = false)
    private String h;

    @at2(name = "UserMetadata", required = false)
    private b i;

    @at2(name = "UserTags", required = false)
    private String j;

    @gt2(inline = true, name = "ChecksumAlgorithm", required = false)
    private List<String> k;

    @at2(name = "ChecksumType", required = false)
    private String l;

    @at2(name = "RestoreStatus", required = false)
    private a m;
    private boolean n;
    private String o;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "RestoreStatus", strict = false)
    public static class a {

        @at2(name = "IsRestoreInProgress", required = false)
        private Boolean a;

        @at2(name = "RestoreExpiryDate", required = false)
        private h38.a b;

        public a(@at2(name = "IsRestoreInProgress", required = false) Boolean bool, @at2(name = "RestoreExpiryDate", required = false) h38.a aVar) {
            this.a = bool;
            this.b = aVar;
        }

        public Boolean a() {
            return this.a;
        }

        public ZonedDateTime b() {
            h38.a aVar = this.b;
            if (aVar == null) {
                return null;
            }
            return aVar.b();
        }

        public String toString() {
            return eq3.l("RestoreStatus{isRestoreInProgress=", ki8.e(this.a), ", restoreExpiryDate=", ki8.e(this.b), "}");
        }
    }

    public qg4(String str) {
        this.o = null;
        this.b = str;
        this.n = true;
    }

    public List<String> a() {
        return ki8.f(this.k);
    }

    public String b() {
        return this.l;
    }

    public String c() {
        return this.a;
    }

    public boolean d() {
        return this instanceof py4.a;
    }

    public boolean e() {
        return this.n;
    }

    public boolean f() {
        return this.g;
    }

    public ZonedDateTime g() {
        h38.a aVar = this.c;
        if (aVar == null) {
            return null;
        }
        return aVar.b();
    }

    public String h() {
        return ki8.g(this.b, this.o);
    }

    public kv5 i() {
        return this.d;
    }

    public a j() {
        return this.m;
    }

    public void k(String str) {
        this.o = str;
    }

    public long l() {
        return this.e;
    }

    public String m() {
        return this.f;
    }

    public Map<String, String> n() {
        b bVar = this.i;
        if (bVar == null) {
            return null;
        }
        return bVar.a();
    }

    public String o() {
        return this.j;
    }

    public String p() {
        return this.h;
    }

    public String toString() {
        String strE = ki8.e(this.a);
        String strE2 = ki8.e(this.b);
        String strE3 = ki8.e(this.c);
        String strE4 = ki8.e(this.d);
        String strE5 = ki8.e(Long.valueOf(this.e));
        String strE6 = ki8.e(this.f);
        String strE7 = ki8.e(Boolean.valueOf(this.g));
        String strE8 = ki8.e(this.h);
        String strE9 = ki8.e(this.i);
        String strE10 = ki8.e(this.j);
        String strE11 = ki8.e(this.k);
        String strE12 = ki8.e(this.l);
        String strE13 = ki8.e(this.m);
        String strE14 = ki8.e(Boolean.valueOf(this.n));
        String strE15 = ki8.e(this.o);
        StringBuilder sbP = u48.p("etag=", strE, ", objectName=", strE2, ", lastModified=");
        xs1.t(sbP, strE3, ", owner=", strE4, ", size=");
        xs1.t(sbP, strE5, ", storageClass=", strE6, ", isLatest=");
        xs1.t(sbP, strE7, ", versionId=", strE8, ", userMetadata=");
        xs1.t(sbP, strE9, ", userTags=", strE10, ", checksumAlgorithm=");
        xs1.t(sbP, strE11, ", checksumType=", strE12, ", restoreStatus=");
        xs1.t(sbP, strE13, ", isDir=", strE14, ", encodingType=");
        sbP.append(strE15);
        return sbP.toString();
    }

    public qg4() {
        this.n = false;
        this.o = null;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "UserMetadata")
    @xv1(a.class)
    public static class b {
        Map<String, String> a;

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static class a implements aw1 {
            @Override // defpackage.aw1
            public final void a(ev5 ev5Var, Object obj) {
                for (Map.Entry<String, String> entry : ((b) obj).a().entrySet()) {
                    ((cv5) ev5Var.i(entry.getKey())).f = entry.getValue();
                }
                ev5Var.commit();
            }

            @Override // defpackage.aw1
            public final Object b(mc4 mc4Var) {
                HashMap map = new HashMap();
                while (true) {
                    mc4 mc4VarD = mc4Var.d();
                    if (mc4VarD == null) {
                        break;
                    }
                    lc4 lc4Var = (lc4) mc4VarD;
                    map.put(lc4Var.d.getName(), lc4Var.getValue());
                }
                if (map.size() > 0) {
                    return new b(map);
                }
                return null;
            }
        }

        public b(Map<String, String> map) {
            Objects.requireNonNull(map, "User metadata must not be null");
            zy5 zy5Var = ki8.a;
            this.a = Collections.unmodifiableMap(map);
        }

        public Map<String, String> a() {
            return this.a;
        }

        public String toString() {
            return eq3.k("UserMetadata{", ki8.e(this.a), "}");
        }

        public b() {
        }
    }
}
