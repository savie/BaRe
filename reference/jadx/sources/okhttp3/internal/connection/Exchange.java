package okhttp3.internal.connection;

import defpackage.ar3;
import defpackage.dj7;
import defpackage.ij7;
import defpackage.l0;
import defpackage.nh7;
import defpackage.nw0;
import defpackage.tf6;
import defpackage.zq3;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.EventListener;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealResponseBody;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Exchange {
    public final RealCall a;
    public final EventListener b;
    public final ExchangeFinder c;
    public final ExchangeCodec d;
    public boolean e;
    public boolean f;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class RequestBodySink extends zq3 {
        public final long b;
        public boolean c;
        public long d;
        public boolean e;
        public boolean f;
        public final /* synthetic */ Exchange k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestBodySink(Exchange exchange, nh7 nh7Var, long j) {
            super(nh7Var);
            nh7Var.getClass();
            this.k = exchange;
            this.b = j;
            this.e = exchange.e;
        }

        public final IOException a(IOException iOException) {
            if (this.c) {
                return iOException;
            }
            this.c = true;
            return Exchange.a(this.k, iOException, 2);
        }

        @Override // defpackage.zq3, defpackage.nh7, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f) {
                return;
            }
            this.f = true;
            long j = this.b;
            if (j != -1 && this.d != j) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                a(null);
            } catch (IOException e) {
                IOException iOExceptionA = a(e);
                iOExceptionA.getClass();
                throw iOExceptionA;
            }
        }

        @Override // defpackage.zq3, defpackage.nh7
        public final void f0(nw0 nw0Var, long j) throws IOException {
            if (this.f) {
                l0.e("closed");
                return;
            }
            long j2 = this.b;
            if (j2 != -1 && this.d + j > j2) {
                StringBuilder sbT = dj7.t("expected ", " bytes but received ", j2);
                sbT.append(this.d + j);
                throw new ProtocolException(sbT.toString());
            }
            try {
                if (this.e) {
                    this.e = false;
                    this.k.b.getClass();
                }
                this.a.f0(nw0Var, j);
                this.d += j;
            } catch (IOException e) {
                IOException iOExceptionA = a(e);
                iOExceptionA.getClass();
                throw iOExceptionA;
            }
        }

        @Override // defpackage.zq3, defpackage.nh7, java.io.Flushable
        public final void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e) {
                IOException iOExceptionA = a(e);
                iOExceptionA.getClass();
                throw iOExceptionA;
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class ResponseBodySource extends ar3 {
        public final long b;
        public long c;
        public boolean d;
        public boolean e;
        public boolean f;
        public final /* synthetic */ Exchange k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResponseBodySource(Exchange exchange, ij7 ij7Var, long j) {
            super(ij7Var);
            ij7Var.getClass();
            this.k = exchange;
            this.b = j;
            this.d = true;
            if (j == 0) {
                a(null);
            }
        }

        @Override // defpackage.ar3, defpackage.ij7
        public final long H(nw0 nw0Var, long j) throws IOException {
            nw0Var.getClass();
            if (this.f) {
                l0.e("closed");
                return 0L;
            }
            try {
                long jH = this.a.H(nw0Var, j);
                boolean z = this.d;
                Exchange exchange = this.k;
                if (z) {
                    this.d = false;
                    exchange.b.getClass();
                }
                if (jH == -1) {
                    a(null);
                    return -1L;
                }
                long j2 = this.c + jH;
                long j3 = this.b;
                if (j3 == -1 || j2 <= j3) {
                    this.c = j2;
                    if (exchange.d.c()) {
                        a(null);
                    }
                    return jH;
                }
                throw new ProtocolException("expected " + j3 + " bytes but received " + j2);
            } catch (IOException e) {
                IOException iOExceptionA = a(e);
                iOExceptionA.getClass();
                throw iOExceptionA;
            }
        }

        public final IOException a(IOException iOException) {
            if (this.e) {
                return iOException;
            }
            this.e = true;
            Exchange exchange = this.k;
            if (iOException == null && this.d) {
                this.d = false;
                exchange.b.getClass();
            }
            return Exchange.a(exchange, iOException, 4);
        }

        @Override // defpackage.ar3, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f) {
                return;
            }
            this.f = true;
            try {
                super.close();
                a(null);
            } catch (IOException e) {
                IOException iOExceptionA = a(e);
                iOExceptionA.getClass();
                throw iOExceptionA;
            }
        }
    }

    public Exchange(RealCall realCall, EventListener eventListener, ExchangeFinder exchangeFinder, ExchangeCodec exchangeCodec) {
        eventListener.getClass();
        exchangeFinder.getClass();
        this.a = realCall;
        this.b = eventListener;
        this.c = exchangeFinder;
        this.d = exchangeCodec;
    }

    public static IOException a(Exchange exchange, IOException iOException, int i) {
        boolean z = (i & 2) == 0;
        boolean z2 = (i & 4) == 0;
        EventListener eventListener = exchange.b;
        RealCall realCall = exchange.a;
        if (iOException != null) {
            exchange.f(iOException);
        }
        if (z2) {
            if (iOException != null) {
                eventListener.getClass();
            } else {
                eventListener.getClass();
            }
        }
        if (z) {
            if (iOException != null) {
                eventListener.getClass();
            } else {
                eventListener.getClass();
            }
        }
        return realCall.e(exchange, z2, z, iOException);
    }

    public final nh7 b(Request request) {
        request.getClass();
        RequestBody requestBody = request.d;
        requestBody.getClass();
        long jA = requestBody.a();
        this.b.getClass();
        return new RequestBodySink(this, this.d.i(request, jA), jA);
    }

    public final RealConnection c() {
        ExchangeCodec.Carrier carrierH = this.d.h();
        RealConnection realConnection = carrierH instanceof RealConnection ? (RealConnection) carrierH : null;
        if (realConnection != null) {
            return realConnection;
        }
        l0.e("no connection for CONNECT tunnels");
        return null;
    }

    public final RealResponseBody d(Response response) throws IOException {
        ExchangeCodec exchangeCodec = this.d;
        try {
            String strB = Response.b("Content-Type", response);
            long jG = exchangeCodec.g(response);
            return new RealResponseBody(strB, jG, new tf6(new ResponseBodySource(this, exchangeCodec.d(response), jG)));
        } catch (IOException e) {
            this.b.getClass();
            f(e);
            throw e;
        }
    }

    public final Response.Builder e(boolean z) throws IOException {
        try {
            Response.Builder builderE = this.d.e(z);
            if (builderE == null) {
                return builderE;
            }
            builderE.n = this;
            return builderE;
        } catch (IOException e) {
            this.b.getClass();
            f(e);
            throw e;
        }
    }

    public final void f(IOException iOException) {
        this.f = true;
        this.d.h().b(this.a, iOException);
    }
}
