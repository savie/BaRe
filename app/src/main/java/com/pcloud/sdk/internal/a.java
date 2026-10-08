package com.pcloud.sdk.internal;

import com.google.gson.internal.Excluder;
import com.google.gson.reflect.TypeToken;
import com.microsoft.identity.client.claims.ClaimsRequest;
import com.pcloud.sdk.internal.networking.serialization.ByteStringTypeAdapter;
import com.pcloud.sdk.internal.networking.serialization.DateTypeAdapter;
import com.pcloud.sdk.internal.networking.serialization.ResolutionDeserializer;
import com.pcloud.sdk.internal.networking.serialization.UnmodifiableListTypeFactory;
import defpackage.bb;
import defpackage.c6;
import defpackage.e11;
import defpackage.eq3;
import defpackage.er1;
import defpackage.gf;
import defpackage.gl6;
import defpackage.hm6;
import defpackage.hy0;
import defpackage.km4;
import defpackage.ks5;
import defpackage.l;
import defpackage.mb;
import defpackage.nf6;
import defpackage.nv5;
import defpackage.of6;
import defpackage.pe;
import defpackage.pf;
import defpackage.qe;
import defpackage.t14;
import defpackage.t5;
import defpackage.tl4;
import defpackage.vf6;
import defpackage.wy3;
import defpackage.y5;
import defpackage.zi6;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import java.util.TreeMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import okhttp3.Authenticator;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements pe {
    public static final String d = eq3.k("----pCloud-SDK-1.11.0-", String.valueOf(UUID.randomUUID()), "----");
    public final com.google.gson.a a;
    public final OkHttpClient b;
    public final HttpUrl c;

    public a(of6 of6Var) {
        TreeMap treeMap = new TreeMap();
        treeMap.put("timeformat", "timestamp");
        Locale locale = Locale.US;
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builder.c(0L, timeUnit);
        builder.y = _UtilJvmKt.b(0L, timeUnit);
        builder.w = _UtilJvmKt.b(0L, timeUnit);
        builder.b(Collections.singletonList(Protocol.HTTP_1_1));
        wy3 wy3Var = new wy3(treeMap);
        ArrayList arrayList = builder.c;
        arrayList.add(wy3Var);
        builder.h = Authenticator.a;
        t5 t5Var = of6Var.a;
        if (t5Var != null) {
            arrayList.add(t5Var);
        }
        this.b = new OkHttpClient(builder);
        t14 t14Var = new t14();
        Excluder excluderClone = t14Var.a.clone();
        excluderClone.a = true;
        t14Var.a = excluderClone;
        RealRemoteEntry.TypeAdapterFactory typeAdapterFactory = new RealRemoteEntry.TypeAdapterFactory();
        ArrayList arrayList2 = t14Var.c;
        arrayList2.add(typeAdapterFactory);
        arrayList2.add(new UnmodifiableListTypeFactory());
        t14Var.c(new RealRemoteEntry.FileEntryDeserializer(), zi6.class);
        t14Var.c(new DateTypeAdapter(), Date.class);
        t14Var.c(new b(), c.class);
        t14Var.c(new vf6(), d.class);
        t14Var.c(new ByteStringTypeAdapter(), hy0.class);
        t14Var.c(ResolutionDeserializer.a, gl6.class);
        this.a = new com.google.gson.a(t14Var);
        this.c = of6Var.b;
    }

    public static void j(String str, String str2) {
        if (str == null || str.isEmpty()) {
            if (str2 == null || str2.isEmpty()) {
                c6.f("Path argument cannot be null or empty.");
            } else {
                c6.f(eq3.k("Path argument `", str2, "` cannot be null or empty."));
            }
        }
    }

    public final ks5 a(String str, String str2, nv5 nv5Var, Date date, e11 e11Var) {
        j(str, null);
        if (str2 == null) {
            c6.f("Filename cannot be null.");
            return null;
        }
        nf6 nf6Var = new nf6(this, e11Var, nv5Var);
        MultipartBody.Builder builder = new MultipartBody.Builder(d);
        builder.c(MultipartBody.g);
        builder.a("file", str2, nf6Var);
        MultipartBody multipartBodyB = builder.b();
        HttpUrl.Builder builderG = this.c.g();
        builderG.c("uploadfile");
        builderG.d("renameifexists", String.valueOf(0));
        builderG.d("nopartial", String.valueOf(1));
        builderG.b("path", str);
        builderG.d("mtime", String.valueOf(date.getTime() / 1000));
        Request.Builder builder2 = new Request.Builder();
        builder2.a = builderG.e();
        builder2.c("POST", multipartBodyB);
        return h(new Request(builder2), new er1(this));
    }

    public final ks5 b(String str) {
        j(str, null);
        FormBody.Builder builder = new FormBody.Builder(0);
        builder.b("path", str);
        FormBody formBodyC = builder.c();
        Request.Builder builderI = i();
        HttpUrl.Builder builderG = this.c.g();
        builderG.c("createfolder");
        builderI.a = builderG.e();
        builderI.c("POST", formBodyC);
        return h(new Request(builderI), new pf(this, 8));
    }

    public final ks5 c(String str) {
        j(str, null);
        Request.Builder builder = new Request.Builder();
        HttpUrl.Builder builderG = this.c.g();
        builderG.c("deletefile");
        builder.a = builderG.e();
        builder.b();
        FormBody.Builder builder2 = new FormBody.Builder(0);
        builder2.b("path", str);
        builder.c("POST", builder2.c());
        return h(new Request(builder), new bb(this, 5));
    }

    public final ks5 d(String str) {
        j(str, null);
        FormBody.Builder builder = new FormBody.Builder(0);
        builder.b("path", str);
        FormBody formBodyC = builder.c();
        Request.Builder builderI = i();
        HttpUrl.Builder builderG = this.c.g();
        builderG.c("deletefolderrecursive");
        builderI.a = builderG.e();
        builderI.c("POST", formBodyC);
        return h(new Request(builderI), new e11(this, 5));
    }

    public final Object e(Response response, Class cls) {
        try {
            if (!response.H) {
                int i = response.d;
                String str = response.c;
                Locale locale = Locale.US;
                throw new l("API returned '" + i + " - " + str + "' HTTP error.");
            }
            try {
                ResponseBody responseBody = response.k;
                Objects.requireNonNull(responseBody);
                tl4 tl4Var = new tl4(new BufferedReader(new InputStreamReader(responseBody.a())));
                try {
                    try {
                        com.google.gson.a aVar = this.a;
                        aVar.getClass();
                        Object objA = aVar.a(tl4Var, TypeToken.get((Type) cls));
                        try {
                            tl4Var.close();
                        } catch (Exception unused) {
                        }
                        try {
                            response.close();
                        } catch (RuntimeException e) {
                            throw e;
                        } catch (Exception unused2) {
                        }
                        return objA;
                    } catch (km4 e2) {
                        throw new IOException("Malformed JSON response.", e2);
                    }
                } catch (Throwable th) {
                    try {
                        tl4Var.close();
                    } catch (Exception unused3) {
                    }
                    throw th;
                }
            } catch (RuntimeException e3) {
                throw e3;
            }
        } catch (Throwable th2) {
            if (response != null) {
                try {
                    response.close();
                } catch (RuntimeException e4) {
                    throw e4;
                } catch (Exception unused4) {
                }
            }
            throw th2;
        }
    }

    public final gf f(Response response, Class cls) throws qe, IOException {
        gf gfVar = (gf) e(response, cls);
        if (gfVar == null) {
            y5.m("API returned an empty response body.");
            return null;
        }
        if (gfVar.c()) {
            return gfVar;
        }
        throw new qe(gfVar.b(), gfVar.a());
    }

    public final ks5 g() {
        Request.Builder builderI = i();
        HttpUrl.Builder builderG = this.c.g();
        builderG.c(ClaimsRequest.USERINFO);
        builderI.a = builderG.e();
        builderI.b();
        return h(new Request(builderI), new mb(this));
    }

    public final ks5 h(Request request, hm6 hm6Var) {
        OkHttpClient okHttpClient = this.b;
        okHttpClient.getClass();
        return new ks5(new RealCall(okHttpClient, request), hm6Var);
    }

    public final Request.Builder i() {
        Request.Builder builder = new Request.Builder();
        HttpUrl httpUrl = this.c;
        httpUrl.getClass();
        builder.a = httpUrl;
        return builder;
    }
}
