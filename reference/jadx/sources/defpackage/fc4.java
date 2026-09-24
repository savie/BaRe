package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "InitiateMultipartUploadResult", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class fc4 {

    @at2(name = "Bucket")
    private String a;

    @at2(name = "Key")
    private String b;

    @at2(name = "UploadId")
    private String c;

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public String toString() {
        String strE = ki8.e(this.a);
        String strE2 = ki8.e(this.b);
        return dj7.n(u48.p("InitiateMultipartUploadResult{bucketName=", strE, ", objectName=", strE2, ", uploadId="), ki8.e(this.c), "}");
    }
}
