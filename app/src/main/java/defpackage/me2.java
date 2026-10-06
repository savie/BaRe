package defpackage;

import android.text.TextUtils;
import com.topjohnwu.superuser.ShellUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class me2 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ me2(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private final Object a() {
        Set setUnmodifiableSet;
        Set setUnmodifiableSet2;
        String str;
        ne2 ne2Var = (ne2) this.b;
        synchronized (ne2Var) {
            u34 u34Var = (u34) ne2Var.a.get();
            long jCurrentTimeMillis = System.currentTimeMillis();
            fg2 fg2Var = (fg2) ne2Var.c.get();
            ty3 ty3Var = fg2Var.b;
            synchronized (((HashSet) ty3Var.a)) {
                setUnmodifiableSet = Collections.unmodifiableSet((HashSet) ty3Var.a);
            }
            boolean zIsEmpty = setUnmodifiableSet.isEmpty();
            String string = fg2Var.a;
            if (zIsEmpty) {
                str = string;
                synchronized (u34Var) {
                    String strB = u34Var.b(jCurrentTimeMillis);
                    str.getClass();
                    l46 l46Var = new l46(str);
                    ih4 ih4Var = u34Var.a;
                    rp3 rp3Var = new rp3(u34Var, strB, str, l46Var, 1);
                    ih4Var.getClass();
                }
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(string);
                sb.append(' ');
                synchronized (((HashSet) ty3Var.a)) {
                    setUnmodifiableSet2 = Collections.unmodifiableSet((HashSet) ty3Var.a);
                }
                sb.append(fg2.a(setUnmodifiableSet2));
                string = sb.toString();
                str = string;
                synchronized (u34Var) {
                    String strB2 = u34Var.b(jCurrentTimeMillis);
                    str.getClass();
                    l46 l46Var2 = new l46(str);
                    ih4 ih4Var2 = u34Var.a;
                    rp3 rp3Var2 = new rp3(u34Var, strB2, str, l46Var2, 1);
                    ih4Var2.getClass();
                }
            }
            throw th;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00d6  */
    @Override // java.util.concurrent.Callable
    public final Object call() throws IOException {
        int i;
        int i2;
        switch (this.a) {
            case 0:
                return a();
            default:
                zd7 zd7Var = (zd7) this.b;
                xd7 xd7Var = zd7Var.f;
                yd7 yd7Var = zd7Var.e;
                try {
                    zd7Var.d.exitValue();
                    throw new IOException("Created process has terminated");
                } catch (IllegalThreadStateException unused) {
                    ShellUtils.a(xd7Var);
                    ShellUtils.a(zd7Var.k);
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(xd7Var));
                    try {
                        Charset charset = StandardCharsets.UTF_8;
                        yd7Var.write("echo SHELL_TEST\n".getBytes(charset));
                        yd7Var.flush();
                        String line = bufferedReader.readLine();
                        if (TextUtils.isEmpty(line) || !line.contains("SHELL_TEST")) {
                            throw new IOException("Created process is not a shell");
                        }
                        yd7Var.write("id\n".getBytes(charset));
                        yd7Var.flush();
                        String line2 = bufferedReader.readLine();
                        if (TextUtils.isEmpty(line2) || !line2.contains("uid=0")) {
                            i = 0;
                        } else {
                            synchronized (ji8.class) {
                                ji8.b = 2;
                                yd7Var.write(("cd " + ShellUtils.b(System.getProperty("user.dir")) + "\n").getBytes(charset));
                                yd7Var.flush();
                                i = 1;
                            }
                        }
                        if (i == 1) {
                            yd7Var.write("readlink /proc/self/ns/mnt\n".getBytes(charset));
                            yd7Var.flush();
                            String line3 = bufferedReader.readLine();
                            yd7Var.write("readlink /proc/1/ns/mnt\n".getBytes(charset));
                            yd7Var.flush();
                            String line4 = bufferedReader.readLine();
                            i2 = (TextUtils.isEmpty(line3) || TextUtils.isEmpty(line4) || !TextUtils.equals(line3, line4)) ? i : 2;
                        }
                        bufferedReader.close();
                        return Integer.valueOf(i2);
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                            break;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
        }
    }
}
