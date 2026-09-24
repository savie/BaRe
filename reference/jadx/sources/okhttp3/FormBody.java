package okhttp3;

import defpackage.ai6;
import defpackage.nw0;
import defpackage.yw0;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class FormBody extends RequestBody {
    public static final MediaType d;
    public final List b;
    public final List c;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Builder {
        public final ArrayList a = new ArrayList();
        public final ArrayList b = new ArrayList();

        public Builder(int i) {
        }

        public final void a(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.a.add(_UrlKt.b(str, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", false, false, false, false, 91));
            this.b.add(_UrlKt.b(str2, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", false, false, false, false, 91));
        }

        public final void b(String str, String str2) {
            str2.getClass();
            this.a.add(_UrlKt.b(str, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", true, false, true, false, 83));
            this.b.add(_UrlKt.b(str2, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", true, false, true, false, 83));
        }

        public final FormBody c() {
            return new FormBody(this.a, this.b);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    static {
        ai6 ai6Var = MediaType.d;
        d = MediaType.Companion.a("application/x-www-form-urlencoded");
    }

    public FormBody(ArrayList arrayList, ArrayList arrayList2) {
        arrayList.getClass();
        arrayList2.getClass();
        this.b = _UtilJvmKt.j(arrayList);
        this.c = _UtilJvmKt.j(arrayList2);
    }

    @Override // okhttp3.RequestBody
    public final long a() {
        return e(null, true);
    }

    @Override // okhttp3.RequestBody
    public final MediaType b() {
        return d;
    }

    @Override // okhttp3.RequestBody
    public final void d(yw0 yw0Var) throws EOFException {
        e(yw0Var, false);
    }

    public final long e(yw0 yw0Var, boolean z) throws EOFException {
        nw0 nw0VarC;
        if (z) {
            nw0VarC = new nw0();
        } else {
            yw0Var.getClass();
            nw0VarC = yw0Var.c();
        }
        List list = this.b;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                nw0VarC.J(38);
            }
            nw0VarC.Z((String) list.get(i));
            nw0VarC.J(61);
            nw0VarC.Z((String) this.c.get(i));
        }
        if (!z) {
            return 0L;
        }
        long j = nw0VarC.b;
        nw0VarC.a();
        return j;
    }
}
