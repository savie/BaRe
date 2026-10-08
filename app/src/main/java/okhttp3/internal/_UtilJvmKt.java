package okhttp3.internal;

import defpackage.d6;
import defpackage.f51;
import defpackage.f6;
import defpackage.g84;
import defpackage.ij7;
import defpackage.nq7;
import defpackage.nw0;
import defpackage.ov2;
import defpackage.pe4;
import defpackage.u48;
import defpackage.zw0;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.internal.http2.Header;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class _UtilJvmKt {
    public static final TimeZone a;
    public static final String b;

    static {
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        timeZone.getClass();
        a = timeZone;
        b = nq7.r0(nq7.q0(OkHttpClient.class.getName(), "okhttp3."), "Client");
    }

    public static final boolean a(HttpUrl httpUrl, HttpUrl httpUrl2) {
        httpUrl.getClass();
        httpUrl2.getClass();
        return pe4.d(httpUrl.d, httpUrl2.d) && httpUrl.e == httpUrl2.e && pe4.d(httpUrl.a, httpUrl2.a);
    }

    public static final int b(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        if (j < 0) {
            g84.f("timeout".concat(" < 0"));
            return 0;
        }
        long millis = timeUnit.toMillis(j);
        if (millis > 2147483647L) {
            f6.g("timeout".concat(" too large"));
            return 0;
        }
        if (millis != 0 || j <= 0) {
            return (int) millis;
        }
        f6.g("timeout".concat(" too small"));
        return 0;
    }

    public static final void c(Socket socket) {
        socket.getClass();
        try {
            socket.close();
        } catch (AssertionError e) {
            throw e;
        } catch (RuntimeException e2) {
            if (!pe4.d(e2.getMessage(), "bio == null")) {
                throw e2;
            }
        } catch (Exception unused) {
        }
    }

    public static final String d(String str, Object... objArr) {
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        return String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
    }

    public static final long e(Response response) {
        String strD = response.f.d("Content-Length");
        if (strD == null) {
            return -1L;
        }
        byte[] bArr = _UtilCommonKt.a;
        try {
            return Long.parseLong(strD);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static final Charset f(zw0 zw0Var, Charset charset) {
        zw0Var.getClass();
        charset.getClass();
        int iY = zw0Var.y(_UtilCommonKt.b);
        if (iY == -1) {
            return charset;
        }
        if (iY == 0) {
            return f51.a;
        }
        if (iY == 1) {
            return f51.b;
        }
        if (iY == 2) {
            Charset charset2 = f51.a;
            Charset charset3 = f51.f;
            if (charset3 != null) {
                return charset3;
            }
            Charset charsetForName = Charset.forName("UTF-32LE");
            charsetForName.getClass();
            f51.f = charsetForName;
            return charsetForName;
        }
        if (iY == 3) {
            return f51.c;
        }
        if (iY != 4) {
            d6.n();
            return null;
        }
        Charset charset4 = f51.a;
        Charset charset5 = f51.g;
        if (charset5 != null) {
            return charset5;
        }
        Charset charsetForName2 = Charset.forName("UTF-32BE");
        charsetForName2.getClass();
        f51.g = charsetForName2;
        return charsetForName2;
    }

    public static final boolean g(ij7 ij7Var, int i) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        timeUnit.getClass();
        long jNanoTime = System.nanoTime();
        long jC = ij7Var.d().e() ? ij7Var.d().c() - jNanoTime : Long.MAX_VALUE;
        ij7Var.d().d(Math.min(jC, timeUnit.toNanos(i)) + jNanoTime);
        try {
            nw0 nw0Var = new nw0();
            while (ij7Var.H(nw0Var, 8192L) != -1) {
                nw0Var.a();
            }
            if (jC == Long.MAX_VALUE) {
                ij7Var.d().a();
                return true;
            }
            ij7Var.d().d(jNanoTime + jC);
            return true;
        } catch (InterruptedIOException unused) {
            if (jC == Long.MAX_VALUE) {
                ij7Var.d().a();
                return false;
            }
            ij7Var.d().d(jNanoTime + jC);
            return false;
        } catch (Throwable th) {
            if (jC == Long.MAX_VALUE) {
                ij7Var.d().a();
            } else {
                ij7Var.d().d(jNanoTime + jC);
            }
            throw th;
        }
    }

    public static final Headers h(List list) {
        Headers.Builder builder = new Headers.Builder();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Header header = (Header) it.next();
            _HeadersCommonKt.a(builder, header.a.w(), header.b.w());
        }
        return builder.b();
    }

    public static final String i(HttpUrl httpUrl, boolean z) {
        httpUrl.getClass();
        int i = httpUrl.e;
        String strJ = httpUrl.d;
        if (nq7.Z(strJ, ":", false)) {
            strJ = u48.j(']', "[", strJ);
        }
        if (!z && i == HttpUrl.Companion.a(httpUrl.a)) {
            return strJ;
        }
        return strJ + ':' + i;
    }

    public static final List j(List list) {
        list.getClass();
        if (list.isEmpty()) {
            return ov2.a;
        }
        if (list.size() == 1) {
            List listSingletonList = Collections.singletonList(list.get(0));
            listSingletonList.getClass();
            return listSingletonList;
        }
        Object[] array = list.toArray();
        array.getClass();
        List listAsList = Arrays.asList(array);
        listAsList.getClass();
        List listUnmodifiableList = Collections.unmodifiableList(listAsList);
        listUnmodifiableList.getClass();
        return listUnmodifiableList;
    }

    public static final List k(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            return ov2.a;
        }
        if (objArr.length == 1) {
            List listSingletonList = Collections.singletonList(objArr[0]);
            listSingletonList.getClass();
            return listSingletonList;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        objArr2.getClass();
        List listAsList = Arrays.asList(objArr2);
        listAsList.getClass();
        List listUnmodifiableList = Collections.unmodifiableList(listAsList);
        listUnmodifiableList.getClass();
        return listUnmodifiableList;
    }
}
