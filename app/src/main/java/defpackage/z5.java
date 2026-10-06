package defpackage;

import android.content.Context;
import android.util.Log;
import com.google.firebase.FirebaseCommonRegistrar;
import com.jcraft.jsch.FileChannelFactory;
import com.jcraft.jsch.SftpException;
import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z5 implements ObjectConstructor, er5, o98, kt4, FileChannelFactory {
    public final /* synthetic */ int a;

    public static /* synthetic */ void c(int i, String str) {
        throw new IllegalArgumentException(str + i);
    }

    public static /* synthetic */ void d(Object obj, Object obj2, String str) {
        throw new IllegalArgumentException(str + obj + obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void e(String str, int i, int i2, Object obj) {
        throw new IllegalArgumentException(str + ((char) i) + ((Object) "' with value ") + i + ((Object) " at index ") + i2 + ((Object) " in '") + obj + ((Object) "'"));
    }

    public static /* synthetic */ void f(String str, int i, Object obj) throws qz6 {
        throw new qz6(str + obj + ((Object) "': ") + i, null);
    }

    public static /* synthetic */ void g(String str, long j, Object obj, int i, Object obj2) {
        throw new IllegalArgumentException(str + j + obj + i + obj2);
    }

    public static /* synthetic */ void h(Throwable th) throws SftpException {
        throw new SftpException(4, th.toString(), th);
    }

    public static /* synthetic */ void i(Object obj, Object obj2, String str) throws IOException {
        throw new IOException(str + obj + obj2);
    }

    @Override // defpackage.kt4
    public String a(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName != null ? FirebaseCommonRegistrar.a(installerPackageName) : "";
    }

    @Override // defpackage.o98, defpackage.kw6
    public Object apply(Object obj) {
        String strC = x87.b.c((w87) obj);
        strC.getClass();
        Log.d("FirebaseSessions", "Session Event Type: SESSION_START");
        byte[] bytes = strC.getBytes(f51.a);
        bytes.getClass();
        return bytes;
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public Object construct() {
        switch (this.a) {
            case 4:
                return ConstructorConstructor.lambda$newDefaultImplementationConstructor$9();
            default:
                return new TreeMap();
        }
    }

    @Override // com.jcraft.jsch.FileChannelFactory
    public FileChannel open(String str) {
        return new RandomAccessFile(str, "rw").getChannel();
    }

    public /* synthetic */ z5(int i) {
        this.a = i;
    }
}
