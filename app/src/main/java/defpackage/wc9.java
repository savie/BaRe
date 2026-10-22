package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.util.Pair;
import android.util.SparseArray;
import android.view.View;
import android.widget.TextView;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.FirebaseAuth;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.security.InvalidAlgorithmParameterException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wc9 implements k58, zo7, jk8, wi8, w23 {
    public static wc9 d;
    public final /* synthetic */ int a;
    public Object b;
    public Object c;

    public wc9(Context context, int i) {
        this.a = i;
        switch (i) {
            case 8:
                ly8.h(context);
                Resources resources = context.getResources();
                this.b = resources;
                this.c = resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue);
                break;
            default:
                this.b = context;
                tc9 tc9Var = new tc9(null);
                this.c = tc9Var;
                context.getContentResolver().registerContentObserver(hb9.a, true, tc9Var);
                break;
        }
    }

    @Override // defpackage.k58
    public void a(boolean z, ro roVar) {
        ae4 ae4Var = (ae4) ((AtomicReference) this.c).get();
        if (ae4Var != null) {
            ae4Var.b(z).addOnSuccessListener(new mb(roVar)).addOnFailureListener(new nb(roVar, 0));
        } else {
            roVar.q(null);
        }
    }

    @Override // defpackage.zo7
    public wi8 b(vb8 vb8Var, xn5 xn5Var, Map map) throws yv1 {
        wi8 wi8VarB = ((b05) this.c).b(vb8Var, xn5Var, map);
        if (wi8VarB != null && wi8VarB.c()) {
            return wi8VarB;
        }
        oe oeVar = (oe) this.b;
        oeVar.getClass();
        Class type = vb8Var.getType();
        if (wi8VarB != null) {
            type = wi8VarB.getType();
        }
        xv1 xv1VarG = oeVar.g(vb8Var, type);
        aw1 aw1VarF = xv1VarG != null ? ((ty3) oeVar.b).f(xv1VarG) : null;
        mc4 mc4Var = (mc4) xn5Var.W();
        if (aw1VarF == null) {
            return wi8VarB;
        }
        Object objB = aw1VarF.b(mc4Var);
        Class type2 = vb8Var.getType();
        if (wi8VarB != null) {
            wi8VarB.setValue(objB);
        }
        gh ghVar = new gh();
        ghVar.c = type2;
        ghVar.a = wi8VarB;
        ghVar.b = objB;
        return ghVar;
    }

    @Override // defpackage.wi8
    public boolean c() {
        return ((wi8) this.b).c();
    }

    @Override // defpackage.zo7
    public boolean d(vb8 vb8Var, Object obj, xn5 xn5Var, Map map) throws yv1 {
        ((b05) this.c).d(vb8Var, obj, xn5Var, map);
        oe oeVar = (oe) this.b;
        oeVar.getClass();
        vb8Var.getType();
        xv1 xv1VarG = oeVar.g(vb8Var, obj.getClass());
        aw1 aw1VarF = xv1VarG != null ? ((ty3) oeVar.b).f(xv1VarG) : null;
        ev5 ev5Var = (ev5) xn5Var.W();
        if (aw1VarF == null) {
            return false;
        }
        aw1VarF.a(ev5Var, obj);
        return true;
    }

    public String e(String str) {
        String str2 = (String) this.c;
        Resources resources = (Resources) this.b;
        int identifier = resources.getIdentifier(str, "string", str2);
        if (identifier == 0) {
            return null;
        }
        return resources.getString(identifier);
    }

    public dp9 f() {
        Integer num = (Integer) this.b;
        if (num == null) {
            m0.h("Key size is not set");
            return null;
        }
        if (((cp9) this.c) != null) {
            return new dp9(num.intValue(), (cp9) this.c);
        }
        m0.h("Variant is not set");
        return null;
    }

    public void g(int i) {
        if (i != 32 && i != 48 && i != 64) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 32-byte, 48-byte and 64-byte AES-SIV keys are supported", Integer.valueOf(i)));
        }
        this.b = Integer.valueOf(i);
    }

    @Override // defpackage.ea6
    public Object get() {
        return new fj6((f10) ((ca6) this.b).get(), (ox1) ((id4) this.c).a);
    }

    @Override // defpackage.wi8
    public int getLength() {
        return ((wi8) this.b).getLength();
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (TextView) this.b;
    }

    @Override // defpackage.wi8
    public Class getType() {
        return (Class) this.c;
    }

    @Override // defpackage.wi8
    public Object getValue() {
        return ((wi8) this.b).getValue();
    }

    public void h(Object obj, Status status) {
        kg3 rf3Var;
        h59 h59Var = (h59) this.b;
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) this.c;
        ly8.i(taskCompletionSource, "completion source cannot be null");
        if (status == null) {
            taskCompletionSource.setResult(obj);
            return;
        }
        if (h59Var.k == null) {
            if (h59Var.j == null) {
                taskCompletionSource.setException(y49.a(status));
                return;
            }
            SparseArray sparseArray = y49.a;
            int i = status.a;
            if (i == 17012 || i == 17007 || i == 17025) {
                Pair pair = (Pair) y49.a.get(i);
                rf3Var = new rf3(y49.b(i), y49.c(pair != null ? (String) pair.second : "An internal error has occurred.", status));
            } else {
                rf3Var = y49.a(status);
            }
            taskCompletionSource.setException(rf3Var);
            return;
        }
        FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(h59Var.c);
        wc9 wc9Var = h59Var.k;
        if (!"reauthenticateWithCredential".equals(h59Var.a())) {
            "reauthenticateWithCredentialWithData".equals(h59Var.a());
        }
        SparseArray sparseArray2 = y49.a;
        firebaseAuth.getClass();
        wc9Var.getClass();
        Pair pair2 = (Pair) y49.a.get(17078);
        String str = (String) pair2.first;
        String str2 = (String) pair2.second;
        List list = (List) wc9Var.c;
        ArrayList<uh5> arrayListA = od2.A(list);
        ArrayList arrayList = new ArrayList();
        for (uh5 uh5Var : arrayListA) {
            if (uh5Var instanceof yz5) {
                arrayList.add((yz5) uh5Var);
            }
        }
        ArrayList<uh5> arrayListA2 = od2.A(list);
        ArrayList arrayList2 = new ArrayList();
        for (uh5 uh5Var2 : arrayListA2) {
            if (uh5Var2 instanceof v88) {
                arrayList2.add((v88) uh5Var2);
            }
        }
        ArrayList<uh5> arrayListA3 = od2.A(list);
        ly8.e((String) wc9Var.b);
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (uh5 uh5Var3 : arrayListA3) {
            if (uh5Var3 instanceof yz5) {
                arrayList3.add((yz5) uh5Var3);
            } else {
                if (!(uh5Var3 instanceof v88)) {
                    c6.f("MultiFactorInfo must be either PhoneMultiFactorInfo or TotpMultiFactorInfo. The factorId of this MultiFactorInfo: ".concat(uh5Var3.n()));
                    return;
                }
                arrayList4.add((v88) uh5Var3);
            }
        }
        ly8.e(firebaseAuth.a.getName());
        taskCompletionSource.setException(new pf3(str, str2));
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0057 A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:9:0x000f, B:11:0x0013, B:18:0x001e, B:20:0x0022, B:21:0x002c, B:34:0x0057, B:35:0x0059, B:24:0x0032, B:26:0x0038, B:30:0x0045, B:32:0x0053), top: B:60:0x000f, inners: #3 }] */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x005a, code lost:
    
        if (r6 == false) goto L59;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String i(java.lang.String r9) {
        /*
            r8 = this;
            java.lang.Object r0 = r8.b
            android.content.Context r0 = (android.content.Context) r0
            r1 = 0
            if (r0 == 0) goto L94
            boolean r2 = defpackage.jb9.b
            if (r2 == 0) goto Lc
            goto L5d
        Lc:
            java.lang.Class<jb9> r2 = defpackage.jb9.class
            monitor-enter(r2)
            boolean r3 = defpackage.jb9.b     // Catch: java.lang.Throwable -> L15
            if (r3 == 0) goto L18
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L15
            goto L5d
        L15:
            r8 = move-exception
            goto L92
        L18:
            r3 = 1
            r4 = r3
        L1a:
            r5 = 2
            r6 = 0
            if (r4 > r5) goto L51
            android.os.UserManager r5 = defpackage.jb9.a     // Catch: java.lang.Throwable -> L15
            if (r5 != 0) goto L2c
            java.lang.Class<android.os.UserManager> r5 = android.os.UserManager.class
            java.lang.Object r5 = r0.getSystemService(r5)     // Catch: java.lang.Throwable -> L15
            android.os.UserManager r5 = (android.os.UserManager) r5     // Catch: java.lang.Throwable -> L15
            defpackage.jb9.a = r5     // Catch: java.lang.Throwable -> L15
        L2c:
            android.os.UserManager r5 = defpackage.jb9.a     // Catch: java.lang.Throwable -> L15
            if (r5 != 0) goto L32
            r6 = r3
            goto L55
        L32:
            boolean r7 = r5.isUserUnlocked()     // Catch: java.lang.Throwable -> L15 java.lang.NullPointerException -> L44
            if (r7 != 0) goto L42
            android.os.UserHandle r7 = android.os.Process.myUserHandle()     // Catch: java.lang.Throwable -> L15 java.lang.NullPointerException -> L44
            boolean r0 = r5.isUserRunning(r7)     // Catch: java.lang.Throwable -> L15 java.lang.NullPointerException -> L44
            if (r0 != 0) goto L51
        L42:
            r6 = r3
            goto L51
        L44:
            r5 = move-exception
            java.lang.String r6 = "DirectBootUtils"
            java.lang.String r7 = "Failed to check if user is unlocked."
            android.util.Log.w(r6, r7, r5)     // Catch: java.lang.Throwable -> L15
            defpackage.jb9.a = r1     // Catch: java.lang.Throwable -> L15
            int r4 = r4 + 1
            goto L1a
        L51:
            if (r6 == 0) goto L55
            defpackage.jb9.a = r1     // Catch: java.lang.Throwable -> L15
        L55:
            if (r6 == 0) goto L59
            defpackage.jb9.b = r3     // Catch: java.lang.Throwable -> L15
        L59:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L15
            if (r6 != 0) goto L5d
            goto L94
        L5d:
            cd r0 = new cd     // Catch: java.lang.NullPointerException -> L77 java.lang.SecurityException -> L79 java.lang.IllegalStateException -> L7b
            r2 = 14
            r0.<init>(r2, r8, r9)     // Catch: java.lang.NullPointerException -> L77 java.lang.SecurityException -> L79 java.lang.IllegalStateException -> L7b
            java.lang.Object r8 = r0.m()     // Catch: java.lang.SecurityException -> L69 java.lang.NullPointerException -> L77 java.lang.IllegalStateException -> L7b
            goto L74
        L69:
            long r2 = android.os.Binder.clearCallingIdentity()     // Catch: java.lang.NullPointerException -> L77 java.lang.SecurityException -> L79 java.lang.IllegalStateException -> L7b
            java.lang.Object r8 = r0.m()     // Catch: java.lang.Throwable -> L7d
            android.os.Binder.restoreCallingIdentity(r2)     // Catch: java.lang.NullPointerException -> L77 java.lang.SecurityException -> L79 java.lang.IllegalStateException -> L7b
        L74:
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.NullPointerException -> L77 java.lang.SecurityException -> L79 java.lang.IllegalStateException -> L7b
            return r8
        L77:
            r8 = move-exception
            goto L82
        L79:
            r8 = move-exception
            goto L82
        L7b:
            r8 = move-exception
            goto L82
        L7d:
            r8 = move-exception
            android.os.Binder.restoreCallingIdentity(r2)     // Catch: java.lang.NullPointerException -> L77 java.lang.SecurityException -> L79 java.lang.IllegalStateException -> L7b
            throw r8     // Catch: java.lang.NullPointerException -> L77 java.lang.SecurityException -> L79 java.lang.IllegalStateException -> L7b
        L82:
            java.lang.String r9 = java.lang.String.valueOf(r9)
            java.lang.String r0 = "Unable to read GServices for: "
            java.lang.String r2 = "GservicesLoader"
            java.lang.String r9 = r0.concat(r9)
            android.util.Log.e(r2, r9, r8)
            return r1
        L92:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L15
            throw r8
        L94:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wc9.i(java.lang.String):java.lang.String");
    }

    @Override // defpackage.wi8
    public void setValue(Object obj) {
        ((wi8) this.b).setValue(obj);
    }

    public String toString() {
        switch (this.a) {
            case 6:
                String string = "[ ";
                if (((ej7) this.b) != null) {
                    for (int i = 0; i < 9; i++) {
                        StringBuilder sbS = dj7.s(string);
                        sbS.append(((ej7) this.b).n[i]);
                        sbS.append(TokenAuthenticationScheme.SCHEME_DELIMITER);
                        string = sbS.toString();
                    }
                }
                StringBuilder sbN = fz5.n(string, "] ");
                sbN.append((ej7) this.b);
                return sbN.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ wc9(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public wc9(int i) {
        this.a = i;
        switch (i) {
            case 2:
                b05 b05Var = new b05();
                this.b = new oe(4);
                this.c = b05Var;
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                break;
            default:
                this.b = null;
                this.c = null;
                break;
        }
    }

    public wc9(String str, List list, ua9 ua9Var) {
        this.a = 9;
        this.b = str;
        this.c = list;
    }

    public wc9(lu5 lu5Var) {
        this.a = 1;
        this.b = lu5Var;
        this.c = new AtomicReference();
        lu5Var.a(new lb(this));
    }

    public wc9(f66 f66Var) {
        this.a = 6;
        this.c = f66Var;
    }
}
