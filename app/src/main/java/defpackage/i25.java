package defpackage;

import android.content.Context;
import android.util.Pair;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.concurrent.Callable;
import java.util.zip.ZipInputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i25 implements Callable {
    public final /* synthetic */ Context a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;

    public i25(Context context, String str, String str2) {
        this.a = context;
        this.b = str;
        this.c = str2;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0050  */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        Pair pair;
        e25 e25Var;
        g35 g35Var;
        Object obj;
        km5 km5Var;
        Context context = this.a;
        om5 om5Var = zv1.k;
        int i = 0;
        if (om5Var == null) {
            synchronized (om5.class) {
                try {
                    om5Var = zv1.k;
                    if (om5Var == null) {
                        Context applicationContext = context.getApplicationContext();
                        km5 km5Var2 = zv1.l;
                        if (km5Var2 == null) {
                            synchronized (km5.class) {
                                try {
                                    km5Var = zv1.l;
                                    if (km5Var == null) {
                                        km5Var = new km5(new ke(applicationContext, 9), i);
                                        zv1.l = km5Var;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            km5Var2 = km5Var;
                        }
                        om5Var = new om5(km5Var2, new ma2(5));
                        zv1.k = om5Var;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        String str = this.b;
        String str2 = this.c;
        m73 m73Var = m73.ZIP;
        AutoCloseable autoCloseable = null;
        if (str2 == null) {
            e25Var = null;
        } else {
            km5 km5Var3 = (km5) om5Var.a;
            try {
                File fileP = km5Var3.p();
                m73 m73Var2 = m73.JSON;
                File file = new File(fileP, km5.l(str, m73Var2, false));
                if (!file.exists()) {
                    file = new File(km5Var3.p(), km5.l(str, m73Var, false));
                    if (!file.exists()) {
                        file = null;
                    }
                }
                if (file == null) {
                    pair = null;
                } else {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    if (file.getAbsolutePath().endsWith(".zip")) {
                        m73Var2 = m73Var;
                    }
                    file.getAbsolutePath();
                    m15.a();
                    pair = new Pair(m73Var2, fileInputStream);
                }
            } catch (FileNotFoundException unused) {
            }
            if (pair == null) {
                e25Var = null;
            } else {
                m73 m73Var3 = (m73) pair.first;
                InputStream inputStream = (InputStream) pair.second;
                Object obj2 = (m73Var3 == m73Var ? n25.f(new ZipInputStream(inputStream), str) : n25.c(inputStream, str)).a;
                if (obj2 != null) {
                    e25Var = (e25) obj2;
                } else {
                    e25Var = null;
                }
            }
        }
        if (e25Var != null) {
            g35Var = new g35(e25Var);
        } else {
            m15.a();
            m15.a();
            try {
                try {
                    ff2 ff2VarQ = ma2.q(str);
                    HttpURLConnection httpURLConnection = ff2VarQ.a;
                    try {
                        if (httpURLConnection.getResponseCode() / 100 == 2) {
                            i = 1;
                        }
                    } catch (IOException unused2) {
                    }
                    if (i != 0) {
                        g35Var = om5Var.d(str, httpURLConnection.getInputStream(), httpURLConnection.getContentType(), str2);
                        m15.a();
                    } else {
                        g35Var = new g35((Throwable) new IllegalArgumentException(ff2VarQ.a()));
                    }
                    try {
                        ff2VarQ.close();
                    } catch (IOException e) {
                        m15.c("LottieFetchResult close failed ", e);
                    }
                } catch (Exception e2) {
                    g35 g35Var2 = new g35((Throwable) e2);
                    if (0 != 0) {
                        try {
                            autoCloseable.close();
                        } catch (IOException e3) {
                            m15.c("LottieFetchResult close failed ", e3);
                        }
                    }
                    g35Var = g35Var2;
                }
            } catch (Throwable th3) {
                if (0 != 0) {
                    try {
                        autoCloseable.close();
                    } catch (IOException e4) {
                        m15.c("LottieFetchResult close failed ", e4);
                    }
                }
                throw th3;
            }
        }
        String str3 = this.c;
        if (str3 != null && (obj = g35Var.a) != null) {
            f25.b.a.l(str3, (e25) obj);
        }
        return g35Var;
    }
}
