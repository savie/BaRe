package okhttp3.internal.http;

import defpackage.ij7;
import defpackage.nh7;
import defpackage.rf6;
import defpackage.wi7;
import defpackage.yc9;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.UnreadableResponseBody;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http2.ConnectionShutdownException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CallServerInterceptor implements Interceptor {
    public static final CallServerInterceptor a = new CallServerInterceptor();

    /* JADX WARN: Code duplicated, block: B:101:0x0168 A[Catch: IOException -> 0x00f3, TryCatch #5 {IOException -> 0x00f3, blocks: (B:69:0x00e5, B:71:0x00ee, B:74:0x00f6, B:83:0x011f, B:85:0x0128, B:86:0x012b, B:87:0x0144, B:92:0x0150, B:98:0x015e, B:99:0x0165, B:101:0x0168, B:107:0x0179, B:109:0x0193, B:115:0x01dd, B:117:0x01ee, B:124:0x0207, B:127:0x0214, B:128:0x0238, B:119:0x01f8, B:110:0x01b8, B:111:0x01bf, B:113:0x01c2, B:114:0x01c8), top: B:144:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0174  */
    /* JADX WARN: Code duplicated, block: B:106:0x0177 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:112:0x01c0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:113:0x01c2 A[Catch: IOException -> 0x00f3, TryCatch #5 {IOException -> 0x00f3, blocks: (B:69:0x00e5, B:71:0x00ee, B:74:0x00f6, B:83:0x011f, B:85:0x0128, B:86:0x012b, B:87:0x0144, B:92:0x0150, B:98:0x015e, B:99:0x0165, B:101:0x0168, B:107:0x0179, B:109:0x0193, B:115:0x01dd, B:117:0x01ee, B:124:0x0207, B:127:0x0214, B:128:0x0238, B:119:0x01f8, B:110:0x01b8, B:111:0x01bf, B:113:0x01c2, B:114:0x01c8), top: B:144:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x01ee A[Catch: IOException -> 0x00f3, TryCatch #5 {IOException -> 0x00f3, blocks: (B:69:0x00e5, B:71:0x00ee, B:74:0x00f6, B:83:0x011f, B:85:0x0128, B:86:0x012b, B:87:0x0144, B:92:0x0150, B:98:0x015e, B:99:0x0165, B:101:0x0168, B:107:0x0179, B:109:0x0193, B:115:0x01dd, B:117:0x01ee, B:124:0x0207, B:127:0x0214, B:128:0x0238, B:119:0x01f8, B:110:0x01b8, B:111:0x01bf, B:113:0x01c2, B:114:0x01c8), top: B:144:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x01f8 A[Catch: IOException -> 0x00f3, TryCatch #5 {IOException -> 0x00f3, blocks: (B:69:0x00e5, B:71:0x00ee, B:74:0x00f6, B:83:0x011f, B:85:0x0128, B:86:0x012b, B:87:0x0144, B:92:0x0150, B:98:0x015e, B:99:0x0165, B:101:0x0168, B:107:0x0179, B:109:0x0193, B:115:0x01dd, B:117:0x01ee, B:124:0x0207, B:127:0x0214, B:128:0x0238, B:119:0x01f8, B:110:0x01b8, B:111:0x01bf, B:113:0x01c2, B:114:0x01c8), top: B:144:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x0203  */
    /* JADX WARN: Code duplicated, block: B:124:0x0207 A[Catch: IOException -> 0x00f3, TryCatch #5 {IOException -> 0x00f3, blocks: (B:69:0x00e5, B:71:0x00ee, B:74:0x00f6, B:83:0x011f, B:85:0x0128, B:86:0x012b, B:87:0x0144, B:92:0x0150, B:98:0x015e, B:99:0x0165, B:101:0x0168, B:107:0x0179, B:109:0x0193, B:115:0x01dd, B:117:0x01ee, B:124:0x0207, B:127:0x0214, B:128:0x0238, B:119:0x01f8, B:110:0x01b8, B:111:0x01bf, B:113:0x01c2, B:114:0x01c8), top: B:144:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x0241 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:155:0x012b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00da  */
    /* JADX WARN: Code duplicated, block: B:68:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00ee A[Catch: IOException -> 0x00f3, TryCatch #5 {IOException -> 0x00f3, blocks: (B:69:0x00e5, B:71:0x00ee, B:74:0x00f6, B:83:0x011f, B:85:0x0128, B:86:0x012b, B:87:0x0144, B:92:0x0150, B:98:0x015e, B:99:0x0165, B:101:0x0168, B:107:0x0179, B:109:0x0193, B:115:0x01dd, B:117:0x01ee, B:124:0x0207, B:127:0x0214, B:128:0x0238, B:119:0x01f8, B:110:0x01b8, B:111:0x01bf, B:113:0x01c2, B:114:0x01c8), top: B:144:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0116  */
    /* JADX WARN: Code duplicated, block: B:85:0x0128 A[Catch: IOException -> 0x00f3, TryCatch #5 {IOException -> 0x00f3, blocks: (B:69:0x00e5, B:71:0x00ee, B:74:0x00f6, B:83:0x011f, B:85:0x0128, B:86:0x012b, B:87:0x0144, B:92:0x0150, B:98:0x015e, B:99:0x0165, B:101:0x0168, B:107:0x0179, B:109:0x0193, B:115:0x01dd, B:117:0x01ee, B:124:0x0207, B:127:0x0214, B:128:0x0238, B:119:0x01f8, B:110:0x01b8, B:111:0x01bf, B:113:0x01c2, B:114:0x01c8), top: B:144:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x014b  */
    /* JADX WARN: Code duplicated, block: B:90:0x014d  */
    /* JADX WARN: Code duplicated, block: B:92:0x0150 A[Catch: IOException -> 0x00f3, TryCatch #5 {IOException -> 0x00f3, blocks: (B:69:0x00e5, B:71:0x00ee, B:74:0x00f6, B:83:0x011f, B:85:0x0128, B:86:0x012b, B:87:0x0144, B:92:0x0150, B:98:0x015e, B:99:0x0165, B:101:0x0168, B:107:0x0179, B:109:0x0193, B:115:0x01dd, B:117:0x01ee, B:124:0x0207, B:127:0x0214, B:128:0x0238, B:119:0x01f8, B:110:0x01b8, B:111:0x01bf, B:113:0x01c2, B:114:0x01c8), top: B:144:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0158  */
    /* JADX WARN: Code duplicated, block: B:95:0x015a  */
    /* JADX WARN: Code duplicated, block: B:97:0x015d  */
    /* JADX WARN: Code duplicated, block: B:98:0x015e A[Catch: IOException -> 0x00f3, TryCatch #5 {IOException -> 0x00f3, blocks: (B:69:0x00e5, B:71:0x00ee, B:74:0x00f6, B:83:0x011f, B:85:0x0128, B:86:0x012b, B:87:0x0144, B:92:0x0150, B:98:0x015e, B:99:0x0165, B:101:0x0168, B:107:0x0179, B:109:0x0193, B:115:0x01dd, B:117:0x01ee, B:124:0x0207, B:127:0x0214, B:128:0x0238, B:119:0x01f8, B:110:0x01b8, B:111:0x01bf, B:113:0x01c2, B:114:0x01c8), top: B:144:0x00e5 }] */
    @Override // okhttp3.Interceptor
    public final Response a(RealInterceptorChain realInterceptorChain) throws IOException {
        Response.Builder builderE;
        IOException iOException;
        Response.Builder builderE2;
        boolean z;
        Response responseA;
        int i;
        ResponseBody responseBody;
        boolean z2;
        boolean z3;
        Response responseA2;
        Request request;
        boolean z4;
        Response.Builder builder;
        boolean z5;
        final Exchange exchange = realInterceptorChain.d;
        exchange.getClass();
        ExchangeCodec exchangeCodec = exchange.d;
        EventListener eventListener = exchange.b;
        RealCall realCall = exchange.a;
        Request request2 = realInterceptorChain.e;
        RequestBody requestBody = request2.d;
        Headers headers = request2.c;
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z6 = true;
        boolean z7 = HttpMethod.a(request2.b) && requestBody != null;
        boolean zEqualsIgnoreCase = "upgrade".equalsIgnoreCase(headers.d("Connection"));
        try {
            try {
                eventListener.getClass();
                exchangeCodec.b(request2);
                try {
                    if (!zEqualsIgnoreCase) {
                        if (z7) {
                            try {
                                if ("100-continue".equalsIgnoreCase(headers.d("Expect"))) {
                                    try {
                                        try {
                                            exchangeCodec.f();
                                            builderE = exchange.e(true);
                                            try {
                                                eventListener.getClass();
                                                builder = builderE;
                                                z5 = false;
                                            } catch (IOException e) {
                                                e = e;
                                                exchangeCodec = exchangeCodec;
                                                if (e instanceof ConnectionShutdownException) {
                                                    throw e;
                                                }
                                                throw e;
                                            }
                                        } catch (IOException e2) {
                                            eventListener.getClass();
                                            exchange.f(e2);
                                            throw e2;
                                        }
                                    } catch (IOException e3) {
                                        e = e3;
                                        exchangeCodec = exchangeCodec;
                                        builderE = null;
                                    }
                                } else {
                                    z5 = true;
                                    builder = null;
                                }
                                if (builder == null) {
                                    try {
                                        requestBody.getClass();
                                        rf6 rf6Var = new rf6(exchange.b(request2));
                                        requestBody.d(rf6Var);
                                        rf6Var.close();
                                        exchangeCodec = exchangeCodec;
                                    } catch (IOException e4) {
                                        e = e4;
                                        exchangeCodec = exchangeCodec;
                                        z6 = z5;
                                        builderE = builder;
                                        if (e instanceof ConnectionShutdownException) {
                                            throw e;
                                        }
                                        throw e;
                                    }
                                } else {
                                    exchangeCodec = exchangeCodec;
                                    try {
                                        realCall.e(exchange, true, false, null);
                                        if (!(exchange.c().t != null)) {
                                            exchangeCodec.h().f();
                                        }
                                    } catch (IOException e5) {
                                        e = e5;
                                        z6 = z5;
                                        builderE = builder;
                                        if (e instanceof ConnectionShutdownException) {
                                            throw e;
                                        }
                                        throw e;
                                    }
                                }
                                z = z5;
                                builderE = builder;
                                exchangeCodec.a();
                                builderE2 = builderE;
                                iOException = null;
                                while (true) {
                                    responseBody = responseA.k;
                                    if (i != 100 && (102 > i || i >= 200)) {
                                        break;
                                    }
                                    Response.Builder builderE3 = exchange.e(false);
                                    builderE3.getClass();
                                    if (z) {
                                        eventListener.getClass();
                                    }
                                    builderE3.a = request2;
                                    builderE3.e = exchange.c().k;
                                    builderE3.l = jCurrentTimeMillis;
                                    builderE3.m = System.currentTimeMillis();
                                    responseA = builderE3.a();
                                    i = responseA.d;
                                }
                            } catch (IOException e6) {
                                e = e6;
                                exchangeCodec = exchangeCodec;
                                builderE = null;
                                z6 = true;
                                if (e instanceof ConnectionShutdownException) {
                                    throw e;
                                }
                                throw e;
                            }
                            if (builderE2 == null) {
                                try {
                                    builderE2 = exchange.e(false);
                                    builderE2.getClass();
                                    if (z) {
                                        eventListener.getClass();
                                        z = false;
                                    }
                                } catch (IOException e7) {
                                    if (iOException == null) {
                                        throw e7;
                                    }
                                    yc9.a(iOException, e7);
                                    throw iOException;
                                }
                            }
                            builderE2.a = request2;
                            builderE2.e = exchange.c().k;
                            builderE2.l = jCurrentTimeMillis;
                            builderE2.m = System.currentTimeMillis();
                            responseA = builderE2.a();
                            i = responseA.d;
                            eventListener.getClass();
                            if (i == 101) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                if (exchange.c().t != null) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                if (z4) {
                                    throw new ProtocolException("Unexpected 101 code on HTTP/2 connection");
                                }
                            }
                            if (z2 || !"upgrade".equalsIgnoreCase(Response.b("Connection", responseA))) {
                                z3 = false;
                            } else {
                                z3 = true;
                            }
                            if (zEqualsIgnoreCase || !z3) {
                                if (zEqualsIgnoreCase) {
                                    realCall.e(exchange, true, false, null);
                                }
                                RealResponseBody realResponseBodyD = exchange.d(responseA);
                                Response.Builder builderG = responseA.g();
                                builderG.g = realResponseBodyD;
                                builderG.o = new CallServerInterceptor$intercept$1();
                                responseA2 = builderG.a();
                            } else {
                                Response.Builder builderG2 = responseA.g();
                                builderG2.g = new UnreadableResponseBody(responseBody.j(), responseBody.h());
                                exchange.e = true;
                                if (realCall.q) {
                                    throw new IllegalStateException("Check failed.");
                                }
                                realCall.q = true;
                                realCall.e.i();
                                ExchangeCodec.Carrier carrierH = exchangeCodec.h();
                                carrierH.getClass();
                                RealConnection realConnection = (RealConnection) carrierH;
                                realConnection.f.setSoTimeout(0);
                                realConnection.f();
                                builderG2.h = new wi7() { // from class: okhttp3.internal.connection.Exchange$upgradeToSocket$1
                                    public final Exchange.RequestBodySink a;
                                    public final Exchange.ResponseBodySource b;

                                    {
                                        this.a = new Exchange.RequestBodySink(this.c, this.c.d.getSocket().a(), -1L);
                                        this.b = new Exchange.ResponseBodySource(this.c, this.c.d.getSocket().getSource(), -1L);
                                    }

                                    @Override // defpackage.wi7
                                    public final nh7 a() {
                                        return this.a;
                                    }

                                    @Override // defpackage.wi7
                                    public final void cancel() {
                                        this.c.d.cancel();
                                    }

                                    @Override // defpackage.wi7
                                    public final ij7 getSource() {
                                        return this.b;
                                    }
                                };
                                responseA2 = builderG2.a();
                            }
                            request = responseA2.a;
                            request.getClass();
                            if ("close".equalsIgnoreCase(request.c.d("Connection")) || "close".equalsIgnoreCase(Response.b("Connection", responseA2))) {
                                exchangeCodec.h().f();
                            }
                            if ((i == 204 && i != 205) || responseA2.k.h() <= 0) {
                                return responseA2;
                            }
                            throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + responseA2.k.h());
                        }
                        realCall.e(exchange, true, false, null);
                    }
                    exchangeCodec.a();
                    builderE2 = builderE;
                    iOException = null;
                    if (builderE2 == null) {
                        builderE2 = exchange.e(false);
                        builderE2.getClass();
                        if (z) {
                            eventListener.getClass();
                            z = false;
                        }
                    }
                    builderE2.a = request2;
                    builderE2.e = exchange.c().k;
                    builderE2.l = jCurrentTimeMillis;
                    builderE2.m = System.currentTimeMillis();
                    responseA = builderE2.a();
                    i = responseA.d;
                    while (true) {
                        responseBody = responseA.k;
                        if (i != 100) {
                            break;
                        }
                        Response.Builder builderE4 = exchange.e(false);
                        builderE4.getClass();
                        if (z) {
                            eventListener.getClass();
                        }
                        builderE4.a = request2;
                        builderE4.e = exchange.c().k;
                        builderE4.l = jCurrentTimeMillis;
                        builderE4.m = System.currentTimeMillis();
                        responseA = builderE4.a();
                        i = responseA.d;
                    }
                    eventListener.getClass();
                    if (i == 101) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        if (exchange.c().t != null) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (z4) {
                            throw new ProtocolException("Unexpected 101 code on HTTP/2 connection");
                        }
                    }
                    if (z2) {
                        z3 = false;
                    } else {
                        z3 = false;
                    }
                    if (zEqualsIgnoreCase) {
                        if (zEqualsIgnoreCase) {
                            realCall.e(exchange, true, false, null);
                        }
                        RealResponseBody realResponseBodyD2 = exchange.d(responseA);
                        Response.Builder builderG3 = responseA.g();
                        builderG3.g = realResponseBodyD2;
                        builderG3.o = new CallServerInterceptor$intercept$1();
                        responseA2 = builderG3.a();
                    } else {
                        if (zEqualsIgnoreCase) {
                            realCall.e(exchange, true, false, null);
                        }
                        RealResponseBody realResponseBodyD3 = exchange.d(responseA);
                        Response.Builder builderG4 = responseA.g();
                        builderG4.g = realResponseBodyD3;
                        builderG4.o = new CallServerInterceptor$intercept$1();
                        responseA2 = builderG4.a();
                    }
                    request = responseA2.a;
                    request.getClass();
                    if ("close".equalsIgnoreCase(request.c.d("Connection"))) {
                        exchangeCodec.h().f();
                    } else {
                        exchangeCodec.h().f();
                    }
                    if (i == 204) {
                        throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + responseA2.k.h());
                    }
                    throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + responseA2.k.h());
                    return responseA2;
                } catch (IOException e8) {
                    try {
                        exchange.f(e8);
                        throw e8;
                    } catch (IOException e9) {
                        e = e9;
                        z6 = z;
                        if ((e instanceof ConnectionShutdownException) || !exchange.f) {
                            throw e;
                        }
                        Response.Builder builder2 = builderE;
                        iOException = e;
                        builderE2 = builder2;
                        z = z6;
                        if (builderE2 == null) {
                            builderE2 = exchange.e(false);
                            builderE2.getClass();
                            if (z) {
                                eventListener.getClass();
                                z = false;
                            }
                        }
                        builderE2.a = request2;
                        builderE2.e = exchange.c().k;
                        builderE2.l = jCurrentTimeMillis;
                        builderE2.m = System.currentTimeMillis();
                        responseA = builderE2.a();
                        i = responseA.d;
                        while (true) {
                            responseBody = responseA.k;
                            if (i != 100) {
                                break;
                                break;
                            }
                            Response.Builder builderE5 = exchange.e(false);
                            builderE5.getClass();
                            if (z) {
                                eventListener.getClass();
                            }
                            builderE5.a = request2;
                            builderE5.e = exchange.c().k;
                            builderE5.l = jCurrentTimeMillis;
                            builderE5.m = System.currentTimeMillis();
                            responseA = builderE5.a();
                            i = responseA.d;
                        }
                        eventListener.getClass();
                        if (i == 101) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            if (exchange.c().t != null) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (z4) {
                                throw new ProtocolException("Unexpected 101 code on HTTP/2 connection");
                            }
                        }
                        if (z2) {
                            z3 = false;
                        } else {
                            z3 = false;
                        }
                        if (zEqualsIgnoreCase) {
                            if (zEqualsIgnoreCase) {
                                realCall.e(exchange, true, false, null);
                            }
                            RealResponseBody realResponseBodyD4 = exchange.d(responseA);
                            Response.Builder builderG5 = responseA.g();
                            builderG5.g = realResponseBodyD4;
                            builderG5.o = new CallServerInterceptor$intercept$1();
                            responseA2 = builderG5.a();
                        } else {
                            if (zEqualsIgnoreCase) {
                                realCall.e(exchange, true, false, null);
                            }
                            RealResponseBody realResponseBodyD5 = exchange.d(responseA);
                            Response.Builder builderG6 = responseA.g();
                            builderG6.g = realResponseBodyD5;
                            builderG6.o = new CallServerInterceptor$intercept$1();
                            responseA2 = builderG6.a();
                        }
                        request = responseA2.a;
                        request.getClass();
                        if ("close".equalsIgnoreCase(request.c.d("Connection"))) {
                            exchangeCodec.h().f();
                        } else {
                            exchangeCodec.h().f();
                        }
                        if (i == 204) {
                            throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + responseA2.k.h());
                        }
                        throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + responseA2.k.h());
                        return responseA2;
                    }
                }
                z = true;
                builderE = null;
            } catch (IOException e10) {
                e = e10;
            }
        } catch (IOException e11) {
            eventListener.getClass();
            exchange.f(e11);
            throw e11;
        }
    }
}
