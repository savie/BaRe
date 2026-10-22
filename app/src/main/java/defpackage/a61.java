package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "Checksum", strict = false)
public class a61 {

    @at2(name = "ChecksumCRC32", required = false)
    private String a;

    @at2(name = "ChecksumCRC32C", required = false)
    private String b;

    @at2(name = "ChecksumCRC64NVME", required = false)
    private String c;

    @at2(name = "ChecksumSHA1", required = false)
    private String d;

    @at2(name = "ChecksumSHA256", required = false)
    private String e;

    @at2(name = "ChecksumType", required = false)
    private String f;

    public a61(a61 a61Var) {
        this.a = a61Var.a;
        this.b = a61Var.b;
        this.c = a61Var.c;
        this.d = a61Var.d;
        this.e = a61Var.e;
        this.f = a61Var.f;
    }

    private void a(v64.c cVar, String str, String str2) {
        if (str2 == null || str2.isEmpty()) {
            return;
        }
        cVar.i("x-amz-checksum-algorithm-" + str, str2);
        cVar.i("x-amz-checksum-algorithm", str);
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.c;
    }

    public String e() {
        return this.d;
    }

    public String f() {
        return this.e;
    }

    public String g() {
        return this.f;
    }

    public v64.c h() {
        v64.c cVar = new v64.c();
        a(cVar, "crc32", this.a);
        a(cVar, "crc32c", this.b);
        a(cVar, "crc64nvme", this.c);
        a(cVar, "sha1", this.d);
        a(cVar, "sha256", this.e);
        return cVar;
    }

    public String i() {
        String strE = ki8.e(this.a);
        String strE2 = ki8.e(this.b);
        String strE3 = ki8.e(this.c);
        String strE4 = ki8.e(this.d);
        String strE5 = ki8.e(this.e);
        String strE6 = ki8.e(this.f);
        StringBuilder sbP = u48.p("checksumCRC32=", strE, ", checksumCRC32C=", strE2, ", checksumCRC64NVME=");
        xs1.t(sbP, strE3, ", checksumSHA1=", strE4, ", checksumSHA256=");
        return eq3.n(sbP, strE5, ", checksumType=", strE6);
    }

    public String toString() {
        return eq3.k("Checksum{", i(), "}");
    }

    public a61(@at2(name = "ChecksumCRC32", required = false) String str, @at2(name = "ChecksumCRC32C", required = false) String str2, @at2(name = "ChecksumCRC64NVME", required = false) String str3, @at2(name = "ChecksumSHA1", required = false) String str4, @at2(name = "ChecksumSHA256", required = false) String str5, @at2(name = "ChecksumType", required = false) String str6) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
    }

    public a61() {
    }
}
