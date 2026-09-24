package defpackage;

import android.content.ContentResolver;
import android.content.res.AssetManager;
import android.net.Uri;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h60 implements ra2 {
    public final /* synthetic */ int a;
    public Object b;
    public final Comparable c;
    public final Object d;

    public /* synthetic */ h60(int i, Comparable comparable, Object obj) {
        this.a = i;
        this.d = obj;
        this.c = comparable;
    }

    @Override // defpackage.ra2
    public final void c() {
        switch (this.a) {
            case 0:
                Object obj = this.b;
                if (obj != null) {
                    try {
                        g(obj);
                    } catch (IOException unused) {
                        return;
                    }
                    break;
                }
                break;
            default:
                Object obj2 = this.b;
                if (obj2 != null) {
                    try {
                        g(obj2);
                    } catch (IOException unused2) {
                        return;
                    }
                }
                break;
        }
    }

    @Override // defpackage.ra2
    public final void cancel() {
        int i = this.a;
    }

    @Override // defpackage.ra2
    public final void d(e66 e66Var, qa2 qa2Var) {
        int i = this.a;
        Object obj = this.d;
        Comparable comparable = this.c;
        switch (i) {
            case 0:
                try {
                    Object objI = i((AssetManager) obj, (String) comparable);
                    this.b = objI;
                    qa2Var.f(objI);
                } catch (IOException e) {
                    if (Log.isLoggable("AssetPathFetcher", 3)) {
                        Log.d("AssetPathFetcher", "Failed to load data from asset manager", e);
                    }
                    qa2Var.b(e);
                }
                break;
            default:
                try {
                    Object objH = h((ContentResolver) obj, (Uri) comparable);
                    this.b = objH;
                    qa2Var.f(objH);
                } catch (FileNotFoundException e2) {
                    if (Log.isLoggable("LocalUriFetcher", 3)) {
                        Log.d("LocalUriFetcher", "Failed to open Uri", e2);
                    }
                    qa2Var.b(e2);
                    return;
                }
                break;
        }
    }

    @Override // defpackage.ra2
    public final int e() {
        switch (this.a) {
        }
        return 1;
    }

    public abstract void g(Object obj);

    public abstract Object h(ContentResolver contentResolver, Uri uri);

    public abstract Object i(AssetManager assetManager, String str);

    private final void b() {
    }

    private final void f() {
    }
}
