package defpackage;

import android.content.Context;
import com.jcraft.jsch.FileChannelFactory;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.text.ParseException;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentSkipListMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y5 implements er5, kt4, za8, FileChannelFactory {
    public final /* synthetic */ int a;

    public static /* synthetic */ void d(int i, Object obj, Object obj2) {
        throw new IllegalArgumentException("Cannot create TypeBindings for class " + obj + obj2 + i);
    }

    public static /* synthetic */ void e(int i, String str) throws ParseException {
        throw new ParseException(str, i);
    }

    public static /* synthetic */ void f(Object obj, Object obj2, String str) {
        throw new NumberFormatException(str + obj + obj2);
    }

    public static /* synthetic */ void g(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    public static /* synthetic */ void h(String str) throws hf8 {
        throw new hf8(str);
    }

    public static /* synthetic */ void i(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void j(String str, Throwable th) throws qz6 {
        throw new qz6(str, th);
    }

    public static /* synthetic */ void k(Throwable th) {
        throw new RuntimeException(th);
    }

    public static /* synthetic */ void l(Object obj, String str) {
        throw new IllegalArgumentException((str + obj).toString());
    }

    public static /* synthetic */ void m(String str) throws IOException {
        throw new IOException(str);
    }

    @Override // defpackage.kt4
    public String a(Context context) {
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.television")) {
            return "tv";
        }
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
            return "watch";
        }
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            return "auto";
        }
        return context.getPackageManager().hasSystemFeature("android.hardware.type.embedded") ? "embedded" : "";
    }

    @Override // defpackage.er5
    public Object construct() {
        switch (this.a) {
            case 3:
                return new ConcurrentSkipListMap();
            default:
                return new TreeSet();
        }
    }

    @Override // com.jcraft.jsch.FileChannelFactory
    public FileChannel open(String str) {
        return new RandomAccessFile(str, "rw").getChannel();
    }

    @Override // defpackage.za8
    public void b(Exception exc) {
    }
}
