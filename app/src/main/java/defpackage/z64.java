package defpackage;

import java.io.IOException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Settings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z64 implements bt3 {
    public final /* synthetic */ Http2Connection a;
    public final /* synthetic */ long b;

    public /* synthetic */ z64(Http2Connection http2Connection, long j) {
        this.a = http2Connection;
        this.b = j;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        boolean z;
        Http2Connection http2Connection = this.a;
        long j = this.b;
        Settings settings = Http2Connection.S;
        synchronized (http2Connection) {
            long j2 = http2Connection.x;
            long j3 = http2Connection.t;
            if (j2 < j3) {
                z = true;
            } else {
                http2Connection.t = j3 + 1;
                z = false;
            }
        }
        if (z) {
            ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
            http2Connection.a(errorCode, errorCode, null);
            j = -1;
        } else {
            try {
                http2Connection.P.m(1, 0, false);
            } catch (IOException e) {
                ErrorCode errorCode2 = ErrorCode.PROTOCOL_ERROR;
                http2Connection.a(errorCode2, errorCode2, e);
            }
        }
        return Long.valueOf(j);
    }
}
