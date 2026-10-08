package androidx.fragment.app;

import android.util.Log;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import defpackage.bs3;
import defpackage.c6;
import defpackage.d6;
import defpackage.ds3;
import defpackage.eq3;
import defpackage.g84;
import defpackage.h15;
import defpackage.l0;
import defpackage.m0;
import defpackage.sr3;
import defpackage.st4;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements sr3 {
    public final ArrayList a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public boolean g;
    public boolean h;
    public String i;
    public int j;
    public CharSequence k;
    public int l;
    public CharSequence m;
    public ArrayList n;
    public ArrayList o;
    public boolean p;
    public ArrayList q;
    public final z r;
    public boolean s;
    public int t;

    public a(z zVar) {
        zVar.H();
        t tVar = zVar.w;
        if (tVar != null) {
            tVar.e.getClassLoader();
        }
        this.a = new ArrayList();
        this.h = true;
        this.p = false;
        this.t = -1;
        this.r = zVar;
    }

    @Override // defpackage.sr3
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (z.K(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.g) {
            return true;
        }
        this.r.d.add(this);
        return true;
    }

    public final void b(ds3 ds3Var) {
        this.a.add(ds3Var);
        ds3Var.d = this.b;
        ds3Var.e = this.c;
        ds3Var.f = this.d;
        ds3Var.g = this.e;
    }

    public final void c(int i) {
        if (this.g) {
            if (z.K(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            ArrayList arrayList = this.a;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ds3 ds3Var = (ds3) arrayList.get(i2);
                o oVar = ds3Var.b;
                if (oVar != null) {
                    oVar.mBackStackNesting += i;
                    if (z.K(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + ds3Var.b + " to " + ds3Var.b.mBackStackNesting);
                    }
                }
            }
        }
    }

    public final void d() {
        ArrayList arrayList = this.a;
        int size = arrayList.size() - 1;
        while (size >= 0) {
            ds3 ds3Var = (ds3) arrayList.get(size);
            if (ds3Var.c) {
                if (ds3Var.a == 8) {
                    ds3Var.c = false;
                    arrayList.remove(size - 1);
                    size--;
                } else {
                    int i = ds3Var.b.mContainerId;
                    ds3Var.a = 2;
                    ds3Var.c = false;
                    for (int i2 = size - 1; i2 >= 0; i2--) {
                        ds3 ds3Var2 = (ds3) arrayList.get(i2);
                        if (ds3Var2.c && ds3Var2.b.mContainerId == i) {
                            arrayList.remove(i2);
                            size--;
                        }
                    }
                }
            }
            size--;
        }
    }

    public final void e() {
        f(false, true);
    }

    public final int f(boolean z, boolean z2) {
        if (this.s) {
            l0.e("commit already called");
            return 0;
        }
        if (z.K(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new h15());
            h("  ", printWriter, true);
            printWriter.close();
        }
        this.s = true;
        boolean z3 = this.g;
        z zVar = this.r;
        if (z3) {
            this.t = zVar.k.getAndIncrement();
        } else {
            this.t = -1;
        }
        if (z2) {
            zVar.x(this, z);
        }
        return this.t;
    }

    public final void g(int i, o oVar, String str, int i2) {
        String str2 = oVar.mPreviousWho;
        if (str2 != null) {
            bs3.c(oVar, str2);
        }
        Class<?> cls = oVar.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            m0.f(cls.getCanonicalName(), " must be a public static class to be  properly recreated from instance state.", "Fragment ");
            return;
        }
        if (str != null) {
            String str3 = oVar.mTag;
            if (str3 != null && !str.equals(str3)) {
                StringBuilder sb = new StringBuilder("Can't change tag of fragment ");
                sb.append(oVar);
                sb.append(": was ");
                l0.e(eq3.n(sb, oVar.mTag, " now ", str));
                return;
            }
            oVar.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                d6.k("Can't add fragment ", oVar, " with tag ", str, " to container view with no id");
                return;
            }
            int i3 = oVar.mFragmentId;
            if (i3 != 0 && i3 != i) {
                StringBuilder sb2 = new StringBuilder("Can't change container ID of fragment ");
                sb2.append(oVar);
                int i4 = oVar.mFragmentId;
                sb2.append(": was ");
                sb2.append(i4);
                sb2.append(" now ");
                sb2.append(i);
                throw new IllegalStateException(sb2.toString());
            }
            oVar.mFragmentId = i;
            oVar.mContainerId = i;
        }
        b(new ds3(i2, oVar));
        oVar.mFragmentManager = this.r;
    }

    public final void h(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.i);
            printWriter.print(" mIndex=");
            printWriter.print(this.t);
            printWriter.print(" mCommitted=");
            printWriter.println(this.s);
            if (this.f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f));
            }
            if (this.b != 0 || this.c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.c));
            }
            if (this.d != 0 || this.e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.e));
            }
            if (this.j != 0 || this.k != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.k);
            }
            if (this.l != 0 || this.m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.m);
            }
        }
        ArrayList arrayList = this.a;
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ds3 ds3Var = (ds3) arrayList.get(i);
            switch (ds3Var.a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + ds3Var.a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(TokenAuthenticationScheme.SCHEME_DELIMITER);
            printWriter.println(ds3Var.b);
            if (z) {
                if (ds3Var.d != 0 || ds3Var.e != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(ds3Var.d));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(ds3Var.e));
                }
                if (ds3Var.f != 0 || ds3Var.g != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(ds3Var.f));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(ds3Var.g));
                }
            }
        }
    }

    public final void i(o oVar) {
        z zVar = oVar.mFragmentManager;
        if (zVar == null || zVar == this.r) {
            b(new ds3(3, oVar));
            return;
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + oVar.toString() + " is already attached to a FragmentManager.");
    }

    public final void j(int i, o oVar) {
        if (i != 0) {
            g(i, oVar, null, 2);
        } else {
            c6.f("Must use non-zero containerViewId");
        }
    }

    public final void k(o oVar, st4 st4Var) {
        z zVar = oVar.mFragmentManager;
        z zVar2 = this.r;
        if (zVar != zVar2) {
            g84.k(zVar2, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager ");
            return;
        }
        if (st4Var == st4.b && oVar.mState > -1) {
            d6.e(st4Var, " after the Fragment has been created", "Cannot set maximum Lifecycle to ");
            return;
        }
        if (st4Var == st4.a) {
            d6.e(st4Var, ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.", "Cannot set maximum Lifecycle to ");
            return;
        }
        ds3 ds3Var = new ds3();
        ds3Var.a = 10;
        ds3Var.b = oVar;
        ds3Var.c = false;
        ds3Var.h = oVar.mMaxState;
        ds3Var.i = st4Var;
        b(ds3Var);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.t >= 0) {
            sb.append(" #");
            sb.append(this.t);
        }
        if (this.i != null) {
            sb.append(TokenAuthenticationScheme.SCHEME_DELIMITER);
            sb.append(this.i);
        }
        sb.append("}");
        return sb.toString();
    }
}
