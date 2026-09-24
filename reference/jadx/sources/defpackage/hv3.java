package defpackage;

import okhttp3.Headers;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class hv3 extends fv3 {
    public hv3(Headers headers, String str, String str2, String str3, String str4) {
        super(headers, str, str2, str3);
        if (headers != null) {
            headers.d("x-amz-checksum-crc32");
            headers.d("x-amz-checksum-crc32c");
            headers.d("x-amz-checksum-crc64nvme");
            headers.d("x-amz-checksum-sha1");
            headers.d("x-amz-checksum-sha256");
            headers.d("x-amz-checksum-type");
        }
    }

    public hv3(Headers headers, String str, String str2, String str3, String str4, qw1 qw1Var) {
        super(headers, str, str2, str3);
        if (qw1Var != null) {
            qw1Var.k();
            qw1Var.g();
            qw1Var.b();
            qw1Var.c();
            qw1Var.d();
            qw1Var.e();
            qw1Var.f();
        }
    }

    public hv3(Headers headers, String str, String str2, String str3, String str4, in1 in1Var) {
        super(headers, str, str2, str3);
        if (in1Var != null) {
            in1Var.g();
            in1Var.b();
            in1Var.c();
            in1Var.d();
            in1Var.e();
            in1Var.f();
        }
    }
}
