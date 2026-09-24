package defpackage;

import dalvik.system.PathClassLoader;
import java.lang.invoke.MethodHandle;
import java.lang.reflect.Executable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vw1 extends PathClassLoader {
    @Override // java.lang.ClassLoader
    public final Class loadClass(String str) {
        if (Object.class.getName().equals(str)) {
            return Object.class;
        }
        try {
            return findClass(str);
        } catch (ClassNotFoundException unused) {
            if (Executable.class.getName().equals(str)) {
                return x34.class;
            }
            if (MethodHandle.class.getName().equals(str)) {
                return z34.class;
            }
            return Class.class.getName().equals(str) ? w34.class : super.loadClass(str);
        }
    }
}
