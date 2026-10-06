package defpackage;

import java.time.ZonedDateTime;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "ListMultipartUploadsResult", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class ox4 {

    @at2(name = "Bucket")
    private String a;

    @at2(name = "EncodingType", required = false)
    private String b;

    @at2(name = "KeyMarker", required = false)
    private String c;

    @at2(name = "UploadIdMarker", required = false)
    private String d;

    @at2(name = "NextKeyMarker", required = false)
    private String e;

    @at2(name = "NextUploadIdMarker", required = false)
    private String f;

    @at2(name = "MaxUploads")
    private int g;

    @at2(name = "IsTruncated", required = false)
    private boolean h;

    @gt2(inline = true, name = "Upload", required = false)
    List<a> i;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Upload", strict = false)
    @jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
    public static class a {

        @at2(name = "Key")
        private String a;

        @at2(name = "UploadId")
        private String b;

        @at2(name = "Initiator")
        private gc4 c;

        @at2(name = "Owner")
        private kv5 d;

        @at2(name = "StorageClass")
        private String e;

        @at2(name = "Initiated")
        private h38.a f;

        @at2(name = "ChecksumAlgorithm", required = false)
        private String g;

        @at2(name = "ChecksumType", required = false)
        private String h;
        private long i;
        private String j = null;

        public long a() {
            return this.i;
        }

        public String b() {
            return this.g;
        }

        public String c() {
            return this.h;
        }

        public ZonedDateTime d() {
            h38.a aVar = this.f;
            if (aVar == null) {
                return null;
            }
            return aVar.b();
        }

        public gc4 e() {
            return this.c;
        }

        public String f() {
            return ki8.g(this.a, this.j);
        }

        public kv5 g() {
            return this.d;
        }

        public void h(long j) {
            this.i = j;
        }

        public void i(String str) {
            this.j = str;
        }

        public String j() {
            return this.e;
        }

        public String k() {
            return this.b;
        }

        public String toString() {
            String strE = ki8.e(this.a);
            String strE2 = ki8.e(this.b);
            String strE3 = ki8.e(this.c);
            String strE4 = ki8.e(this.d);
            String strE5 = ki8.e(this.e);
            String strE6 = ki8.e(this.f);
            String strE7 = ki8.e(this.g);
            String strE8 = ki8.e(this.h);
            String strE9 = ki8.e(Long.valueOf(this.i));
            StringBuilder sbP = u48.p("Upload{objectName=", strE, ", uploadId=", strE2, ", initiator=");
            xs1.t(sbP, strE3, ", owner=", strE4, ", storageClass=");
            xs1.t(sbP, strE5, ", initiated=", strE6, ", checksumAlgorithm=");
            xs1.t(sbP, strE7, ", checksumType=", strE8, ", aggregatedPartSize=");
            return dj7.n(sbP, strE9, "}");
        }
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public boolean c() {
        return this.h;
    }

    public String d() {
        return ki8.g(this.c, this.b);
    }

    public int e() {
        return this.g;
    }

    public String f() {
        return ki8.g(this.e, this.b);
    }

    public String g() {
        return this.f;
    }

    public String h() {
        return this.d;
    }

    public List<a> i() {
        return ki8.f(this.i);
    }

    public String toString() {
        String strE = ki8.e(this.a);
        String strE2 = ki8.e(this.b);
        String strE3 = ki8.e(this.c);
        String strE4 = ki8.e(this.d);
        String strE5 = ki8.e(this.e);
        String strE6 = ki8.e(this.f);
        String strE7 = ki8.e(Integer.valueOf(this.g));
        String strE8 = ki8.e(Boolean.valueOf(this.h));
        String strE9 = ki8.e(this.i);
        StringBuilder sbP = u48.p("ListMultipartUploadsResult{bucketName=", strE, ", encodingType=", strE2, ", keyMarker=");
        xs1.t(sbP, strE3, ", uploadIdMarker=", strE4, ", nextKeyMarker=");
        xs1.t(sbP, strE5, ", nextUploadIdMarker=", strE6, ", maxUploads=");
        xs1.t(sbP, strE7, ", isTruncated=", strE8, ", uploads=");
        return dj7.n(sbP, strE9, "}");
    }
}
