package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum k99 {
    RESPONSE_CODE_UNSPECIFIED(-999),
    /* JADX INFO: Fake field, exist only in values array */
    SERVICE_TIMEOUT(-3),
    /* JADX INFO: Fake field, exist only in values array */
    FEATURE_NOT_SUPPORTED(-2),
    /* JADX INFO: Fake field, exist only in values array */
    SERVICE_DISCONNECTED(-1),
    /* JADX INFO: Fake field, exist only in values array */
    OK(0),
    /* JADX INFO: Fake field, exist only in values array */
    USER_CANCELED(1),
    /* JADX INFO: Fake field, exist only in values array */
    SERVICE_UNAVAILABLE(2),
    /* JADX INFO: Fake field, exist only in values array */
    BILLING_UNAVAILABLE(3),
    /* JADX INFO: Fake field, exist only in values array */
    ITEM_UNAVAILABLE(4),
    /* JADX INFO: Fake field, exist only in values array */
    DEVELOPER_ERROR(5),
    /* JADX INFO: Fake field, exist only in values array */
    ERROR(6),
    /* JADX INFO: Fake field, exist only in values array */
    ITEM_ALREADY_OWNED(7),
    /* JADX INFO: Fake field, exist only in values array */
    ITEM_NOT_OWNED(8),
    /* JADX INFO: Fake field, exist only in values array */
    EXPIRED_OFFER_TOKEN(11),
    /* JADX INFO: Fake field, exist only in values array */
    NETWORK_ERROR(12);

    public static final bc9 c;
    public final int a;

    static {
        jl4 jl4Var = new jl4(1);
        jl4Var.b = new Object[8];
        jl4Var.c = 0;
        for (k99 k99Var : values()) {
            Integer numValueOf = Integer.valueOf(k99Var.a);
            int i = jl4Var.c + 1;
            Object[] objArr = jl4Var.b;
            int length = objArr.length;
            int i2 = i + i;
            if (i2 > length) {
                if (i2 > length) {
                    length = length + (length >> 1) + 1;
                    if (length < i2) {
                        int iHighestOneBit = Integer.highestOneBit(i2 - 1);
                        length = iHighestOneBit + iHighestOneBit;
                    }
                    if (length < 0) {
                        length = Integer.MAX_VALUE;
                    }
                }
                jl4Var.b = Arrays.copyOf(objArr, length);
            }
            Object[] objArr2 = jl4Var.b;
            int i3 = jl4Var.c;
            int i4 = i3 + i3;
            objArr2[i4] = numValueOf;
            objArr2[i4 + 1] = k99Var;
            jl4Var.c = i3 + 1;
        }
        pa9 pa9Var = (pa9) jl4Var.d;
        if (pa9Var != null) {
            throw pa9Var.a();
        }
        bc9 bc9VarA = bc9.a(jl4Var.c, jl4Var.b, jl4Var);
        pa9 pa9Var2 = (pa9) jl4Var.d;
        if (pa9Var2 != null) {
            throw pa9Var2.a();
        }
        c = bc9VarA;
    }

    k99(int i) {
        this.a = i;
    }
}
