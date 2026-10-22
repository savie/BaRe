package defpackage;

import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s83 implements ra2 {
    public final File a;
    public final t83 b;
    public Object c;

    public s83(File file, t83 t83Var) {
        this.a = file;
        this.b = t83Var;
    }

    @Override // defpackage.ra2
    public final Class a() {
        return this.b.a();
    }

    @Override // defpackage.ra2
    public final void c() {
        Object obj = this.c;
        if (obj != null) {
            try {
                this.b.b(obj);
            } catch (IOException unused) {
            }
        }
    }

    @Override // defpackage.ra2
    public final void d(e66 e66Var, qa2 qa2Var) {
        try {
            Object objM = this.b.m(this.a);
            this.c = objM;
            qa2Var.f(objM);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable("FileLoader", 3)) {
                Log.d("FileLoader", "Failed to open file", e);
            }
            qa2Var.b(e);
        }
    }

    @Override // defpackage.ra2
    public final int e() {
        return 1;
    }

    @Override // defpackage.ra2
    public final void cancel() {
    }
}
