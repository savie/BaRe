package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "ListPartsResult", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class dy4 extends dm0 {

    @at2(name = "Bucket")
    private String f;

    @at2(name = "Key")
    private String g;

    @at2(name = "Initiator")
    private gc4 h;

    @at2(name = "Owner")
    private kv5 i;

    @at2(name = "StorageClass")
    private String j;

    @at2(name = "UploadId", required = false)
    private String k;

    @at2(name = "ChecksumAlgorithm", required = false)
    private String l;

    @at2(name = "ChecksumType", required = false)
    private String m;

    public String f() {
        return this.f;
    }

    public String g() {
        return this.l;
    }

    public String h() {
        return this.m;
    }

    public gc4 i() {
        return this.h;
    }

    public String j() {
        return this.g;
    }

    public kv5 k() {
        return this.i;
    }

    public String l() {
        return this.j;
    }

    public String m() {
        return this.k;
    }

    @Override // defpackage.dm0
    public String toString() {
        String strE = ki8.e(this.f);
        String strE2 = ki8.e(this.g);
        String strE3 = ki8.e(this.h);
        String strE4 = ki8.e(this.i);
        String strE5 = ki8.e(this.j);
        String strE6 = ki8.e(this.k);
        String strE7 = ki8.e(this.l);
        String strE8 = ki8.e(this.m);
        String string = super.toString();
        StringBuilder sbP = u48.p("ListPartsResult{bucketName=", strE, ", objectName=", strE2, ", initiator=");
        xs1.t(sbP, strE3, ", owner=", strE4, ", storageClass=");
        xs1.t(sbP, strE5, ", uploadId=", strE6, ", checksumAlgorithm=");
        xs1.t(sbP, strE7, ", checksumType=", strE8, ", ");
        return dj7.n(sbP, string, "}");
    }
}
