package defpackage;

import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class l40 implements wi7 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;

    public l40(bx5 bx5Var) {
        this.a = 2;
        ArrayList arrayList = (ArrayList) bx5Var.a;
        LinkedHashSet linkedHashSet = (LinkedHashSet) bx5Var.d;
        LinkedHashSet linkedHashSet2 = un2.p;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(arrayList);
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            arrayList2.add(un2.q.get((Class) it.next()));
        }
        this.b = arrayList2;
        this.d = new fo8(10);
        this.e = (ArrayList) bx5Var.c;
        ArrayList arrayList3 = (ArrayList) bx5Var.b;
        this.c = arrayList3;
        new ic4(new la(arrayList3, Collections.EMPTY_MAP));
    }

    @Override // defpackage.wi7
    public nh7 a() {
        return (vf2) this.e;
    }

    public void b() {
        int i;
        k40 k40Var = (k40) this.c;
        int i2 = 0;
        while (true) {
            if (i2 >= 8) {
                break;
            }
            int i3 = i2 * 16;
            int i4 = i3 + 1;
            int i5 = i3 + 2;
            int i6 = i3 + 3;
            int i7 = i3 + 4;
            int i8 = i3 + 5;
            int i9 = i3 + 6;
            int i10 = i3 + 7;
            int i11 = i3 + 8;
            int i12 = i3 + 9;
            int i13 = i3 + 10;
            int i14 = i3 + 11;
            int i15 = i3 + 12;
            int i16 = i3 + 13;
            int i17 = i2;
            int i18 = i3 + 14;
            int i19 = i3 + 15;
            long[] jArr = k40Var.a;
            m40.a(jArr, i3, i7, i11, i15);
            m40.a(jArr, i4, i8, i12, i16);
            m40.a(jArr, i5, i9, i13, i18);
            m40.a(jArr, i6, i10, i14, i19);
            m40.a(jArr, i3, i8, i13, i19);
            m40.a(jArr, i4, i9, i14, i15);
            m40.a(jArr, i5, i10, i11, i16);
            m40.a(jArr, i6, i7, i12, i18);
            i2 = i17 + 1;
            k40Var = k40Var;
        }
        k40 k40Var2 = k40Var;
        int i20 = 0;
        for (i = 8; i20 < i; i = 8) {
            int i21 = i20 * 2;
            int i22 = i21 + 1;
            int i23 = i21 + 16;
            int i24 = i21 + 17;
            int i25 = i21 + 32;
            int i26 = i21 + 33;
            int i27 = i21 + 48;
            int i28 = i21 + 49;
            int i29 = i21 + 64;
            int i30 = i21 + 65;
            int i31 = i21 + 80;
            int i32 = i21 + 81;
            int i33 = i21 + 96;
            int i34 = i21 + 97;
            int i35 = i21 + OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS;
            int i36 = i20;
            int i37 = i21 + 113;
            k40 k40Var3 = k40Var2;
            long[] jArr2 = k40Var3.a;
            m40.a(jArr2, i21, i25, i29, i33);
            m40.a(jArr2, i22, i26, i30, i34);
            m40.a(jArr2, i23, i27, i31, i35);
            k40Var2 = k40Var3;
            m40.a(jArr2, i24, i28, i32, i37);
            m40.a(jArr2, i21, i26, i31, i37);
            m40.a(jArr2, i22, i27, i32, i33);
            m40.a(jArr2, i23, i28, i29, i34);
            m40.a(jArr2, i24, i25, i30, i35);
            i20 = i36 + 1;
        }
    }

    public lq9 c() throws GeneralSecurityException {
        jq9 jq9Var = (jq9) this.b;
        if (jq9Var == null) {
            m0.h("HPKE KEM parameter is not set");
            return null;
        }
        hq9 hq9Var = (hq9) this.c;
        if (hq9Var == null) {
            m0.h("HPKE KDF parameter is not set");
            return null;
        }
        gq9 gq9Var = (gq9) this.d;
        if (gq9Var == null) {
            m0.h("HPKE AEAD parameter is not set");
            return null;
        }
        iq9 iq9Var = (iq9) this.e;
        if (iq9Var != null) {
            return new lq9(jq9Var, hq9Var, gq9Var, iq9Var);
        }
        m0.h("HPKE variant is not set");
        return null;
    }

    @Override // defpackage.wi7
    public void cancel() {
        ((Socket) this.b).close();
    }

    @Override // defpackage.wi7
    public ij7 getSource() {
        return (wf2) this.d;
    }

    public String toString() {
        switch (this.a) {
            case 1:
                String string = ((Socket) this.b).toString();
                string.getClass();
                return string;
            case 2:
            default:
                return super.toString();
            case 3:
                StringBuilder sb = new StringBuilder("StreamMap with indices of ");
                sb.append(((int[]) this.b).length);
                sb.append(" folders, offsets of ");
                sb.append(((long[]) this.c).length);
                sb.append(" packed streams, first files of ");
                sb.append(((int[]) this.d).length);
                sb.append(" folders and folder indices for ");
                return xs1.m(sb, ((int[]) this.e).length, " files");
        }
    }

    public /* synthetic */ l40(int i) {
        this.a = i;
    }

    public l40(Socket socket) {
        this.a = 1;
        this.b = socket;
        this.c = new AtomicInteger();
        this.d = new wf2(this);
        this.e = new vf2(this);
    }

    public l40(int[] iArr, long[] jArr, int[] iArr2, int[] iArr3) {
        this.a = 3;
        this.b = iArr;
        this.c = jArr;
        this.d = iArr2;
        this.e = iArr3;
    }
}
