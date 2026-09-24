package defpackage;

import android.os.ParcelFileDescriptor;
import androidx.datastore.core.NativeSharedCounter;
import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v30 extends gs4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ v30(Object obj, int i) {
        super(0);
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.bt3
    public final Object invoke() throws IOException {
        int i = this.a;
        Object[] objArr = 0;
        Object obj = this.b;
        switch (i) {
            case 0:
                return ((zl8) ((os4) obj).getValue()).getViewModelStore();
            case 1:
                zl8 zl8Var = (zl8) ((os4) obj).getValue();
                w24 w24Var = zl8Var instanceof w24 ? (w24) zl8Var : null;
                return w24Var != null ? w24Var.getDefaultViewModelCreationExtras() : m22.b;
            case 2:
                return ((zl8) ((os4) obj).getValue()).getViewModelStore();
            default:
                System.loadLibrary("datastore_shared_counter");
                try {
                    ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open((File) new u30((fi5) obj, 2).invoke(), 939524096);
                    int fd = parcelFileDescriptorOpen.getFd();
                    NativeSharedCounter nativeSharedCounter = xc7.b;
                    if (nativeSharedCounter.nativeTruncateFile(fd) != 0) {
                        throw new IOException("Failed to truncate counter file");
                    }
                    long jNativeCreateSharedCounter = nativeSharedCounter.nativeCreateSharedCounter(fd);
                    if (jNativeCreateSharedCounter < 0) {
                        throw new IOException("Failed to mmap counter file");
                    }
                    xc7 xc7Var = new xc7(jNativeCreateSharedCounter);
                    parcelFileDescriptorOpen.close();
                    return xc7Var;
                } catch (Throwable th) {
                    if (0 != 0) {
                        (objArr == true ? 1 : 0).close();
                    }
                    throw th;
                }
        }
    }
}
