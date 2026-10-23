package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ro6 implements mt3 {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ lh6 b;

    public /* synthetic */ ro6(lh6 lh6Var) {
        this.b = lh6Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        lh6 lh6Var = this.b;
        switch (i) {
            case 0:
                qy6 qy6Var = (qy6) obj;
                qy6Var.getClass();
                long j = qy6Var.a;
                long j2 = qy6Var.b;
                long j3 = qy6Var.c;
                long j4 = qy6Var.d;
                long j5 = qy6Var.e;
                long j6 = qy6Var.f;
                long j7 = qy6Var.g;
                long j8 = qy6Var.h;
                long j9 = qy6Var.i;
                long j10 = qy6Var.j;
                StringBuilder sbT = dj7.t("native_file_size=", " native_index_offset=", j);
                sbT.append(j2);
                fz5.r(sbT, " native_index_size=", j3, " native_header_ms=");
                sbT.append(j4);
                fz5.r(sbT, " native_payload_ms=", j5, " native_producer_ms=");
                sbT.append(j6);
                fz5.r(sbT, " native_encryption_ms=", j7, " native_index_footer_ms=");
                sbT.append(j8);
                fz5.r(sbT, " native_total_ms=", j9, " crypto_setup_ms=");
                sbT.append(j10);
                lh6Var.a = sbT.toString();
                return be8Var;
            default:
                zy6 zy6Var = (zy6) obj;
                zy6Var.getClass();
                List list = zy6Var.a;
                String string = null;
                if (!list.isEmpty()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("extract_warning_count=" + list.size());
                    sb.append('\n');
                    int i2 = 0;
                    for (Object obj2 : list) {
                        int i3 = i2 + 1;
                        if (i2 < 0) {
                            fl1.F0();
                            throw null;
                        }
                        sb.append("extract_warning_");
                        sb.append(i2);
                        sb.append('=');
                        sb.append((String) obj2);
                        sb.append('\n');
                        i2 = i3;
                    }
                    string = nq7.J0(sb.toString()).toString();
                }
                lh6Var.a = string;
                return be8Var;
        }
    }

    public /* synthetic */ ro6(lh6 lh6Var, fp6 fp6Var) {
        this.b = lh6Var;
    }
}
