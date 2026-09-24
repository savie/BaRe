package defpackage;

import android.app.Activity;
import android.content.Context;
import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bp0 implements jk8, cz2, un5 {
    public static bp0 d;
    public Object a;
    public Object b;
    public Object c;

    public bp0(Context context) throws rm5 {
        this.c = null;
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(context);
        this.a = defaultAdapter;
        if (defaultAdapter == null) {
            throw new rm5("NFC unavailable on this device", false);
        }
        this.b = new ke(defaultAdapter, 10);
    }

    public void a(Activity activity, bq4 bq4Var, vz0 vz0Var) throws rm5 {
        if (!((NfcAdapter) this.a).isEnabled()) {
            throw new rm5("Please activate NFC_TRANSPORT", true);
        }
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        ke keVar = (ke) this.b;
        final l02 l02Var = new l02(vz0Var, bq4Var, executorServiceNewSingleThreadExecutor);
        ((NfcAdapter) keVar.b).disableReaderMode(activity);
        Bundle bundle = new Bundle();
        bundle.putInt("presence", 50);
        ((NfcAdapter) keVar.b).enableReaderMode(activity, new NfcAdapter.ReaderCallback() { // from class: sm5
            @Override // android.nfc.NfcAdapter.ReaderCallback
            public final void onTagDiscovered(Tag tag) {
                l02 l02Var2 = l02Var;
                vz0 vz0Var2 = (vz0) l02Var2.a;
                bq4 bq4Var2 = (bq4) l02Var2.b;
                vz0Var2.invoke(new um5(tag, bq4Var2.a, (ExecutorService) l02Var2.c));
            }
        }, 3, bundle);
        this.c = executorServiceNewSingleThreadExecutor;
    }

    public boolean b(int i, et1 et1Var, ot1 ot1Var) {
        ap0 ap0Var = (ap0) this.b;
        int[] iArr = ot1Var.p0;
        int[] iArr2 = ot1Var.t;
        ap0Var.a = iArr[0];
        ap0Var.b = iArr[1];
        ap0Var.c = ot1Var.q();
        ap0Var.d = ot1Var.k();
        ap0Var.i = false;
        ap0Var.j = i;
        boolean z = ap0Var.a == 3;
        boolean z2 = ap0Var.b == 3;
        boolean z3 = z && ot1Var.W > 0.0f;
        boolean z4 = z2 && ot1Var.W > 0.0f;
        if (z3 && iArr2[0] == 4) {
            ap0Var.a = 1;
        }
        if (z4 && iArr2[1] == 4) {
            ap0Var.b = 1;
        }
        et1Var.b(ot1Var, ap0Var);
        ot1Var.O(ap0Var.e);
        ot1Var.L(ap0Var.f);
        ot1Var.E = ap0Var.h;
        ot1Var.I(ap0Var.g);
        ap0Var.j = 0;
        return ap0Var.i;
    }

    public void c(TextView textView, String str) {
        SpannableStringBuilder spannableStringBuilderE = e(str);
        List list = (List) this.c;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((r4) it.next()).d(textView, spannableStringBuilderE);
        }
        textView.setText(spannableStringBuilderE, TextView.BufferType.SPANNABLE);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((r4) it2.next()).b(textView);
        }
    }

    public void d(pt1 pt1Var, int i, int i2, int i3) {
        pt1Var.getClass();
        int i4 = pt1Var.b0;
        int i5 = pt1Var.c0;
        pt1Var.b0 = 0;
        pt1Var.c0 = 0;
        pt1Var.O(i2);
        pt1Var.L(i3);
        if (i4 < 0) {
            pt1Var.b0 = 0;
        } else {
            pt1Var.b0 = i4;
        }
        if (i5 < 0) {
            pt1Var.c0 = 0;
        } else {
            pt1Var.c0 = i5;
        }
        pt1 pt1Var2 = (pt1) this.c;
        pt1Var2.t0 = i;
        pt1Var2.U();
    }

    public SpannableStringBuilder e(String str) {
        List list = (List) this.c;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((r4) it.next()).getClass();
        }
        l40 l40Var = (l40) this.a;
        if (str == null) {
            f6.n("input must not be null");
            return null;
        }
        un2 un2Var = new un2((ArrayList) l40Var.b, (fo8) l40Var.d, (ArrayList) l40Var.c);
        int i = 0;
        while (true) {
            int length = str.length();
            int i2 = i;
            while (true) {
                if (i2 >= length) {
                    i2 = -1;
                    break;
                }
                char cCharAt = str.charAt(i2);
                if (cCharAt == '\n' || cCharAt == '\r') {
                    break;
                }
                i2++;
            }
            if (i2 == -1) {
                break;
            }
            un2Var.i(str.substring(i, i2));
            i = i2 + 1;
            if (i < str.length() && str.charAt(i2) == '\r' && str.charAt(i) == '\n') {
                i = i2 + 2;
            }
        }
        if (str.length() > 0 && (i == 0 || i < str.length())) {
            un2Var.i(str.substring(i));
        }
        un2Var.f(un2Var.n);
        la laVar = new la(un2Var.k, un2Var.m);
        un2Var.j.getClass();
        ic4 ic4Var = new ic4(laVar);
        Iterator it2 = un2Var.o.iterator();
        while (it2.hasNext()) {
            ((g3) it2.next()).g(ic4Var);
        }
        pn2 pn2Var = un2Var.l.a;
        Iterator it3 = ((ArrayList) l40Var.e).iterator();
        if (it3.hasNext()) {
            throw eq3.h(it3);
        }
        Iterator it4 = list.iterator();
        while (it4.hasNext()) {
            ((r4) it4.next()).c();
        }
        c00 c00Var = (c00) this.b;
        bs2 bs2Var = new bs2((j75) c00Var.c, new di4(1), new wj7(), Collections.unmodifiableMap((HashMap) ((om5) c00Var.b).a), new ns0(7));
        bs2Var.i(pn2Var);
        Iterator it5 = list.iterator();
        while (it5.hasNext()) {
            ((r4) it5.next()).a(bs2Var);
        }
        wj7 wj7Var = (wj7) bs2Var.d;
        uj7 uj7Var = new uj7(wj7Var.a);
        for (tj7 tj7Var : wj7Var.b) {
            uj7Var.setSpan(tj7Var.a, tj7Var.b, tj7Var.c, tj7Var.d);
        }
        return (!TextUtils.isEmpty(uj7Var) || TextUtils.isEmpty(str)) ? uj7Var : new SpannableStringBuilder(str);
    }

    public void f(pt1 pt1Var) {
        ArrayList arrayList = (ArrayList) this.a;
        arrayList.clear();
        int size = pt1Var.q0.size();
        for (int i = 0; i < size; i++) {
            ot1 ot1Var = (ot1) pt1Var.q0.get(i);
            int[] iArr = ot1Var.p0;
            if (iArr[0] == 3 || iArr[1] == 3) {
                arrayList.add(ot1Var);
            }
        }
        pt1Var.s0.a = true;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (TextInputLayout) this.a;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003d  */
    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    /* JADX WARN: Code duplicated, block: B:17:0x004a  */
    /* JADX WARN: Code duplicated, block: B:20:0x0052 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x0054  */
    /* JADX WARN: Code duplicated, block: B:22:0x0059  */
    /* JADX WARN: Code duplicated, block: B:26:0x0050 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:28:0x005f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x005f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x0037 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x0037 A[SYNTHETIC] */
    @Override // defpackage.un5
    public hk5 h(nb4 nb4Var, hk5 hk5Var, boolean z) {
        int iCompare;
        int iCompare2;
        qn5 qn5VarG = (qn5) this.c;
        if (qn5VarG == null) {
            qn5VarG = ((ib) this.b).g();
        }
        yf1 yf1Var = (yf1) this.a;
        vq vqVar = (vq) yf1Var.c;
        np1 np1VarG = ((np1) vqVar.b).g((gy5) yf1Var.b);
        qn5<hk5> qn5VarK = np1VarG.k(gy5.d);
        hk5 hk5Var2 = null;
        if (qn5VarK != null) {
            for (hk5 hk5Var3 : qn5VarK) {
                if (z) {
                    iCompare = nb4Var.compare(hk5Var, hk5Var3);
                } else {
                    iCompare = nb4Var.compare(hk5Var3, hk5Var);
                }
                if (iCompare <= 0) {
                    if (hk5Var2 == null) {
                        if (z) {
                            iCompare2 = nb4Var.compare(hk5Var2, hk5Var3);
                        } else {
                            iCompare2 = nb4Var.compare(hk5Var3, hk5Var2);
                        }
                        if (iCompare2 < 0) {
                        }
                    }
                    hk5Var2 = hk5Var3;
                }
            }
        } else if (qn5VarG != null) {
            qn5VarK = np1VarG.e(qn5VarG);
            while (r3.hasNext()) {
                if (z) {
                    iCompare = nb4Var.compare(hk5Var, hk5Var3);
                } else {
                    iCompare = nb4Var.compare(hk5Var3, hk5Var);
                }
                if (iCompare <= 0) {
                    if (hk5Var2 == null) {
                        if (z) {
                            iCompare2 = nb4Var.compare(hk5Var2, hk5Var3);
                        } else {
                            iCompare2 = nb4Var.compare(hk5Var3, hk5Var2);
                        }
                        if (iCompare2 < 0) {
                        }
                    }
                    hk5Var2 = hk5Var3;
                }
            }
        }
        return hk5Var2;
    }

    @Override // defpackage.cz2
    public bz2 next() {
        bz2 bz2Var = (bz2) this.c;
        if (bz2Var != null) {
            this.c = null;
            return bz2Var;
        }
        tn5 tn5Var = (tn5) this.a;
        Node node = (Node) tn5Var.peek();
        if (node == null) {
            return new vn2();
        }
        Node parentNode = node.getParentNode();
        yn5 yn5Var = (yn5) this.b;
        Node node2 = (Node) yn5Var.c();
        if (parentNode != node2) {
            if (node2 != null) {
                yn5Var.pop();
            }
            return new vn2();
        }
        tn5Var.poll();
        if (node.getNodeType() != 1) {
            return new yn2(node);
        }
        yn5Var.add(node);
        xn2 xn2Var = new xn2(node);
        if (xn2Var.isEmpty()) {
            NamedNodeMap attributes = xn2Var.a.getAttributes();
            int length = attributes.getLength();
            for (int i = 0; i < length; i++) {
                wn2 wn2Var = new wn2(attributes.item(i));
                if (!wn2Var.f()) {
                    xn2Var.add(wn2Var);
                }
            }
        }
        return xn2Var;
    }

    @Override // defpackage.cz2
    public bz2 peek() {
        if (((bz2) this.c) == null) {
            this.c = next();
        }
        return (bz2) this.c;
    }

    public /* synthetic */ bp0(Object obj, Object obj2, Object obj3) {
        this.a = obj;
        this.b = obj2;
        this.c = obj3;
    }

    public bp0() {
        this.a = new int[16];
        this.b = new int[16];
        this.c = new int[16];
    }
}
