package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "CompleteMultipartUploadResult")
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class in1 extends a61 {

    @at2(name = "Location")
    private String g;

    @at2(name = "Bucket")
    private String h;

    @at2(name = "Key")
    private String i;

    @at2(name = "ETag")
    private String j;

    public String j() {
        return this.h;
    }

    public String k() {
        return this.j;
    }

    public String l() {
        return this.g;
    }

    public String m() {
        return this.i;
    }

    @Override // defpackage.a61
    public String toString() {
        String strE = ki8.e(this.g);
        String strE2 = ki8.e(this.h);
        String strE3 = ki8.e(this.i);
        String strE4 = ki8.e(this.j);
        String strI = super.i();
        StringBuilder sbP = u48.p("CompleteMultipartUploadResult{location=", strE, ", bucket=", strE2, ", object=");
        xs1.t(sbP, strE3, ", etag=", strE4, ", ");
        return dj7.n(sbP, strI, "}");
    }
}
