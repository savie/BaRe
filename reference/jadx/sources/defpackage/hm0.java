package defpackage;

import android.os.SystemClock;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.channels.Channels;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hm0 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ hm0(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        switch (this.a) {
            case 0:
                km0 km0Var = (km0) this.b;
                if (km0Var.e > 0) {
                    km0Var.f = SystemClock.uptimeMillis();
                }
                km0Var.setVisibility(0);
                return;
            case 1:
                ((fo0) this.b).d();
                return;
            case 2:
                bq2 bq2Var = ((ky4) this.b).c;
                if (bq2Var != null) {
                    bq2Var.setListSelectionHidden(true);
                    bq2Var.requestLayout();
                    return;
                }
                return;
            case 3:
                synchronized (((zy4) this.b).a) {
                    obj = ((zy4) this.b).f;
                    ((zy4) this.b).f = zy4.k;
                    break;
                }
                ((zy4) this.b).k(obj);
                return;
            default:
                ar8 ar8Var = (ar8) this.b;
                try {
                    try {
                        try {
                            Socket socketD = ar8Var.d();
                            synchronized (ar8Var) {
                                ar8Var.b = socketD;
                                if (ar8Var.a == 5) {
                                    try {
                                        ar8Var.b.close();
                                        ar8Var.b = null;
                                    } catch (IOException e) {
                                        throw new RuntimeException(e);
                                    }
                                } else {
                                    DataInputStream dataInputStream = new DataInputStream(socketD.getInputStream());
                                    OutputStream outputStream = socketD.getOutputStream();
                                    outputStream.write(ar8Var.h.d());
                                    byte[] bArr = new byte[PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT];
                                    ArrayList arrayList = new ArrayList();
                                    boolean z = false;
                                    int i = 0;
                                    while (!z) {
                                        int i2 = dataInputStream.read();
                                        if (i2 == -1) {
                                            throw new br8("Connection closed before handshake was complete");
                                        }
                                        byte b = (byte) i2;
                                        bArr[i] = b;
                                        int i3 = i + 1;
                                        if (b == 10 && bArr[i - 1] == 13) {
                                            String str = new String(bArr, ar8.m);
                                            if (str.trim().equals("")) {
                                                z = true;
                                            } else {
                                                arrayList.add(str.trim());
                                            }
                                            bArr = new byte[PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT];
                                            i = 0;
                                        } else {
                                            if (i3 == 1000) {
                                                throw new br8("Unexpected long line in handshake: " + new String(bArr, ar8.m));
                                            }
                                            i = i3;
                                        }
                                    }
                                    dr drVar = ar8Var.h;
                                    String str2 = (String) arrayList.get(0);
                                    drVar.getClass();
                                    dr.h(str2);
                                    arrayList.remove(0);
                                    HashMap map = new HashMap();
                                    Iterator it = arrayList.iterator();
                                    while (it.hasNext()) {
                                        String[] strArrSplit = ((String) it.next()).split(": ", 2);
                                        String str3 = strArrSplit[0];
                                        Locale locale = Locale.US;
                                        map.put(str3.toLowerCase(locale), strArrSplit[1].toLowerCase(locale));
                                    }
                                    ar8Var.h.getClass();
                                    dr.g(map);
                                    dr8 dr8Var = ar8Var.g;
                                    dr8Var.getClass();
                                    dr8Var.f = Channels.newChannel(outputStream);
                                    ar8Var.f.a = dataInputStream;
                                    ar8Var.a = 3;
                                    ar8Var.g.g.start();
                                    c00 c00Var = ar8Var.c;
                                    ((nr8) c00Var.c).i.execute(new hu0(c00Var, 3));
                                    ar8Var.f.c();
                                }
                                ar8Var.a();
                                return;
                            }
                        } catch (br8 e2) {
                            ar8Var.c.n(e2);
                        }
                    } catch (Throwable th) {
                        ar8Var.c.n(new br8("error while connecting: " + th.getMessage(), th));
                    }
                } catch (Throwable th2) {
                    ar8Var.a();
                    throw th2;
                }
                break;
        }
    }
}
