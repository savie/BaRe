package defpackage;

import okhttp3.Headers;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class yf8 extends fv3 {
    public final gx5 a;

    public yf8(Headers headers, String str, String str2, String str3, String str4, int i, String str5) {
        super(headers, str, str2, str3);
        this.a = new gx5(i, str5, headers.d("x-amz-checksum-crc32"), headers.d("x-amz-checksum-crc32c"), headers.d("x-amz-checksum-crc64nvme"), headers.d("x-amz-checksum-sha1"), headers.d("x-amz-checksum-sha256"));
    }
}
