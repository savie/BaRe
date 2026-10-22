package defpackage;

import android.content.res.AssetManager;
import android.os.Build;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.folders.data.FolderItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sk2 {
    public final Executor a;
    public final x76 b;
    public final byte[] c;
    public final File d;
    public final String e;
    public boolean f = false;
    public tk2[] g;
    public byte[] h;

    public sk2(AssetManager assetManager, Executor executor, x76 x76Var, String str, File file) {
        byte[] bArr;
        this.a = executor;
        this.b = x76Var;
        this.e = str;
        this.d = file;
        int i = Build.VERSION.SDK_INT;
        if (i < 31) {
            switch (i) {
                case 26:
                    bArr = rs9.g;
                    break;
                case 27:
                    bArr = rs9.f;
                    break;
                case 28:
                case 29:
                case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                    bArr = rs9.e;
                    break;
                default:
                    bArr = null;
                    break;
            }
        } else {
            bArr = rs9.d;
        }
        this.c = bArr;
    }

    public final FileInputStream a(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            if (message == null || !message.contains("compressed")) {
                return null;
            }
            this.b.i();
            return null;
        }
    }

    public final void b(final int i, final Serializable serializable) {
        this.a.execute(new Runnable() { // from class: rk2
            @Override // java.lang.Runnable
            public final void run() {
                this.a.b.k(i, serializable);
            }
        });
    }
}
