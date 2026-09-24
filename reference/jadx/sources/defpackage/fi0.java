package defpackage;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class fi0 implements z61 {
    public static final fi0 c = new fi0("bike128", 12323);
    public static final fi0 d = new fi0("bike192", 24659);
    public static final fi0 e = new fi0("bike256", 40973);
    public final String a;
    public final int b;

    public fi0(String str, int i) {
        int i2;
        this.a = str;
        this.b = i;
        HashMap map = new HashMap();
        int i3 = i - 2;
        int iNumberOfLeadingZeros = 32 - Integer.numberOfLeadingZeros(i3);
        int iU = lg7.u(-i);
        for (int i4 = 1; i4 < iNumberOfLeadingZeros; i4++) {
            int i5 = 1 << (i4 - 1);
            if (i5 >= 64 && !map.containsKey(Integer.valueOf(i5))) {
                map.put(Integer.valueOf(i5), Integer.valueOf(sl4.x(i, iU, i5)));
            }
            int i6 = 1 << i4;
            if ((i3 & i6) != 0 && (i2 = (i6 - 1) & i3) >= 64 && !map.containsKey(Integer.valueOf(i2))) {
                map.put(Integer.valueOf(i2), Integer.valueOf(sl4.x(i, iU, i2)));
            }
        }
    }
}
