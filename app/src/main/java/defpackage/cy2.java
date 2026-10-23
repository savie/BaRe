package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "ErrorResponse", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class cy2 implements Serializable {
    private static final long n = 1905162041950251407L;

    @at2(name = "Code")
    protected String a;

    @at2(name = "Message", required = false)
    protected String b;

    @at2(name = "BucketName", required = false)
    protected String c;

    @at2(name = "Key", required = false)
    protected String d;

    @at2(name = "Resource", required = false)
    protected String e;

    @at2(name = "RequestId", required = false)
    protected String f;

    @at2(name = "HostId", required = false)
    protected String k;

    public cy2(@at2(name = "Code") String str, @at2(name = "Message", required = false) String str2, @at2(name = "BucketName", required = false) String str3, @at2(name = "Key", required = false) String str4, @at2(name = "Resource", required = false) String str5, @at2(name = "RequestId", required = false) String str6, @at2(name = "HostId", required = false) String str7) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.k = str7;
    }

    public String a() {
        return this.c;
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.k;
    }

    public String d() {
        return this.b;
    }

    public String e() {
        return this.d;
    }

    public String f() {
        return this.f;
    }

    public String g() {
        return this.e;
    }

    public String h() {
        String strE = ki8.e(this.a);
        String strE2 = ki8.e(this.b);
        String strE3 = ki8.e(this.c);
        String strE4 = ki8.e(this.d);
        String strE5 = ki8.e(this.e);
        String strE6 = ki8.e(this.f);
        String strE7 = ki8.e(this.k);
        StringBuilder sbP = u48.p("code=", strE, ", message=", strE2, ", bucketName=");
        xs1.t(sbP, strE3, ", objectName=", strE4, ", resource=");
        xs1.t(sbP, strE5, ", requestId=", strE6, ", hostId=");
        sbP.append(strE7);
        return sbP.toString();
    }

    public String toString() {
        return eq3.k("ErrorResponse{", h(), "}");
    }

    public cy2() {
    }
}
