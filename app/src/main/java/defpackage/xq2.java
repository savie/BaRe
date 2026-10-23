package defpackage;

import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class xq2 {
    public static final OkHttpClient a;

    static {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builder.a(30L, timeUnit);
        builder.x = _UtilJvmKt.b(30L, timeUnit);
        builder.y = _UtilJvmKt.b(30L, timeUnit);
        a = new OkHttpClient(builder);
    }
}
