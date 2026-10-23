package defpackage;

import android.graphics.Typeface;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.jcraft.jsch.SftpATTRS;
import java.nio.ByteBuffer;
import java.util.List;
import org.swiftapps.swiftbackup.views.SwiftBackupMaterialSwitch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kb2 implements jk8 {
    public final Object a;
    public final Object b;
    public Object c;
    public final Object d;

    public kb2(Typeface typeface, of5 of5Var) {
        int i;
        int i2;
        int i3;
        int i4;
        this.d = typeface;
        this.a = of5Var;
        this.c = new pf5(1024);
        int iA = of5Var.a(6);
        if (iA != 0) {
            int i5 = iA + of5Var.a;
            i = ((ByteBuffer) of5Var.d).getInt(((ByteBuffer) of5Var.d).getInt(i5) + i5);
        } else {
            i = 0;
        }
        this.b = new char[i * 2];
        int iA2 = of5Var.a(6);
        if (iA2 != 0) {
            int i6 = iA2 + of5Var.a;
            i2 = ((ByteBuffer) of5Var.d).getInt(((ByteBuffer) of5Var.d).getInt(i6) + i6);
        } else {
            i2 = 0;
        }
        for (int i7 = 0; i7 < i2; i7++) {
            ad8 ad8Var = new ad8(this, i7);
            nf5 nf5VarB = ad8Var.b();
            int iA3 = nf5VarB.a(4);
            Character.toChars(iA3 != 0 ? ((ByteBuffer) nf5VarB.d).getInt(iA3 + nf5VarB.a) : 0, (char[]) this.b, i7 * 2);
            nf5 nf5VarB2 = ad8Var.b();
            int iA4 = nf5VarB2.a(16);
            if (iA4 != 0) {
                int i8 = iA4 + nf5VarB2.a;
                i3 = ((ByteBuffer) nf5VarB2.d).getInt(((ByteBuffer) nf5VarB2.d).getInt(i8) + i8);
            } else {
                i3 = 0;
            }
            if (!(i3 > 0)) {
                c6.f("invalid metadata codepoint length");
                throw null;
            }
            pf5 pf5Var = (pf5) this.c;
            nf5 nf5VarB3 = ad8Var.b();
            int iA5 = nf5VarB3.a(16);
            if (iA5 != 0) {
                int i9 = iA5 + nf5VarB3.a;
                i4 = ((ByteBuffer) nf5VarB3.d).getInt(((ByteBuffer) nf5VarB3.d).getInt(i9) + i9);
            } else {
                i4 = 0;
            }
            pf5Var.a(ad8Var, 0, i4 - 1);
        }
    }

    public void a(int i, int i2, boolean z, mt3 mt3Var) {
        ((ImageView) this.b).setImageResource(i);
        ((TextView) this.c).setText(i2);
        SwiftBackupMaterialSwitch swiftBackupMaterialSwitch = (SwiftBackupMaterialSwitch) this.d;
        swiftBackupMaterialSwitch.setClickable(false);
        swiftBackupMaterialSwitch.setChecked(z);
        ((ConstraintLayout) this.a).setOnClickListener(new uf1(2, this, mt3Var));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005e, code lost:
    
        if (r7 == r2) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006d, code lost:
    
        if (r7 == r2) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(defpackage.kv1 r7) {
        /*
            r6 = this;
            java.lang.Object r0 = r6.d
            ic2 r0 = (defpackage.ic2) r0
            boolean r1 = r7 instanceof defpackage.gb2
            if (r1 == 0) goto L17
            r1 = r7
            gb2 r1 = (defpackage.gb2) r1
            int r2 = r1.d
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.d = r2
            goto L1c
        L17:
            gb2 r1 = new gb2
            r1.<init>(r6, r7)
        L1c:
            java.lang.Object r7 = r1.b
            int r2 = r1.d
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3b
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            kb2 r6 = r1.a
            defpackage.lg7.H(r7)
            goto L61
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r6)
            return r3
        L35:
            kb2 r6 = r1.a
            defpackage.lg7.H(r7)
            goto L70
        L3b:
            defpackage.lg7.H(r7)
            java.lang.Object r7 = r6.c
            java.util.List r7 = (java.util.List) r7
            yx1 r2 = defpackage.yx1.a
            if (r7 == 0) goto L64
            boolean r7 = r7.isEmpty()
            if (r7 == 0) goto L4d
            goto L64
        L4d:
            sd4 r7 = r0.g()
            jb2 r5 = new jb2
            r5.<init>(r0, r6, r3)
            r1.a = r6
            r1.d = r4
            java.lang.Object r7 = r7.a(r5, r1)
            if (r7 != r2) goto L61
            goto L6f
        L61:
            ga2 r7 = (defpackage.ga2) r7
            goto L72
        L64:
            r1.a = r6
            r1.d = r5
            r7 = 0
            java.lang.Object r7 = defpackage.ic2.f(r0, r7, r1)
            if (r7 != r2) goto L70
        L6f:
            return r2
        L70:
            ga2 r7 = (defpackage.ga2) r7
        L72:
            java.lang.Object r6 = r6.d
            ic2 r6 = (defpackage.ic2) r6
            tr9 r6 = r6.h
            r6.f(r7)
            be8 r6 = defpackage.be8.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.kb2.b(kv1):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public Object c(kv1 kv1Var) throws Throwable {
        tq6 tq6Var;
        kj5 kj5Var;
        Throwable th;
        kj5 kj5Var2;
        kb2 kb2Var;
        if (kv1Var instanceof tq6) {
            tq6Var = (tq6) kv1Var;
            int i = tq6Var.e;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                tq6Var.e = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                tq6Var = new tq6(this, kv1Var);
            }
        } else {
            tq6Var = new tq6(this, kv1Var);
        }
        Object obj = tq6Var.c;
        int i2 = tq6Var.e;
        be8 be8Var = be8.a;
        yx1 yx1Var = yx1.a;
        try {
            if (i2 == 0) {
                lg7.H(obj);
                if (((bn1) this.b).E()) {
                    return be8Var;
                }
                kj5Var = (mj5) this.a;
                tq6Var.a = this;
                tq6Var.b = kj5Var;
                tq6Var.e = 1;
                if (kj5Var.a(tq6Var) != yx1Var) {
                }
                return yx1Var;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                kj5Var2 = tq6Var.b;
                kb2Var = tq6Var.a;
                try {
                    lg7.H(obj);
                    ((bn1) kb2Var.b).G(be8Var);
                    kj5Var2.b(null);
                    return be8Var;
                } catch (Throwable th2) {
                    th = th2;
                    kj5Var2.b(null);
                    throw th;
                }
            }
            kj5 kj5Var3 = tq6Var.b;
            kb2 kb2Var2 = tq6Var.a;
            lg7.H(obj);
            kj5Var = kj5Var3;
            this = kb2Var2;
            if (((bn1) this.b).E()) {
                kj5Var.b(null);
                return be8Var;
            }
            tq6Var.a = this;
            tq6Var.b = kj5Var;
            tq6Var.e = 2;
            if (this.b(tq6Var) != yx1Var) {
                kb2Var = this;
                kj5Var2 = kj5Var;
                ((bn1) kb2Var.b).G(be8Var);
                kj5Var2.b(null);
                return be8Var;
            }
            return yx1Var;
        } catch (Throwable th3) {
            kj5 kj5Var4 = kj5Var;
            th = th3;
            kj5Var2 = kj5Var4;
            kj5Var2.b(null);
            throw th;
        }
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (ConstraintLayout) this.a;
    }

    public kb2(ConstraintLayout constraintLayout, View view, ImageView imageView, TextView textView) {
        this.a = constraintLayout;
        this.b = view;
        this.c = imageView;
        this.d = textView;
    }

    public kb2() {
        this.a = new int[10];
        this.b = new int[10];
        this.c = new int[10];
        this.d = new int[10];
    }

    public kb2(y8 y8Var) {
        this.a = (ConstraintLayout) y8Var.a;
        this.b = (ImageView) y8Var.b;
        this.c = (TextView) y8Var.d;
        this.d = (SwiftBackupMaterialSwitch) y8Var.c;
    }

    public kb2(ic2 ic2Var, List list) {
        this.d = ic2Var;
        this.a = new mj5();
        this.b = ly8.a();
        this.c = el1.v1(list);
    }
}
