package defpackage;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.o;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ce9 extends o implements bu4 {
    public static final WeakHashMap b = new WeakHashMap();
    public final va9 a = new va9();

    @Override // defpackage.bu4
    public final void a(String str, vt4 vt4Var) {
        this.a.a(str, vt4Var);
    }

    @Override // defpackage.bu4
    public final vt4 b(Class cls, String str) {
        return (vt4) cls.cast(this.a.a.get(str));
    }

    @Override // androidx.fragment.app.o
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator it = this.a.a.values().iterator();
        while (it.hasNext()) {
            ((vt4) it.next()).dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // androidx.fragment.app.o
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Iterator it = this.a.a.values().iterator();
        while (it.hasNext()) {
            ((vt4) it.next()).onActivityResult(i, i2, intent);
        }
    }

    @Override // androidx.fragment.app.o
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a.b(bundle);
    }

    @Override // androidx.fragment.app.o
    public final void onDestroy() {
        super.onDestroy();
        va9 va9Var = this.a;
        va9Var.b = 5;
        Iterator it = va9Var.a.values().iterator();
        while (it.hasNext()) {
            ((vt4) it.next()).onDestroy();
        }
    }

    @Override // androidx.fragment.app.o
    public final void onResume() {
        super.onResume();
        va9 va9Var = this.a;
        va9Var.b = 3;
        Iterator it = va9Var.a.values().iterator();
        while (it.hasNext()) {
            ((vt4) it.next()).onResume();
        }
    }

    @Override // androidx.fragment.app.o
    public final void onSaveInstanceState(Bundle bundle) {
        this.a.c(bundle);
    }

    @Override // androidx.fragment.app.o
    public final void onStart() {
        super.onStart();
        va9 va9Var = this.a;
        va9Var.b = 2;
        Iterator it = va9Var.a.values().iterator();
        while (it.hasNext()) {
            ((vt4) it.next()).onStart();
        }
    }

    @Override // androidx.fragment.app.o
    public final void onStop() {
        super.onStop();
        va9 va9Var = this.a;
        va9Var.b = 4;
        Iterator it = va9Var.a.values().iterator();
        while (it.hasNext()) {
            ((vt4) it.next()).onStop();
        }
    }
}
