package defpackage;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import okhttp3.MediaType;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class uo1 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ uo1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((vo1) obj).q = (List) obj2;
                break;
            case 1:
                ((y02) obj).i = (jx7) obj2;
                break;
            case 2:
                ((yr5) obj).h = (v64.c) obj2;
                break;
            case 3:
                xb6.n((xb6) obj, (MediaType) obj2);
                break;
            case 4:
                om6.j((om6) obj, (pm6) obj2);
                break;
            case 5:
                t67.o((t67) obj, (gv5) obj2);
                break;
            case 6:
                u97.a.z((Map) obj2, (u97) obj);
                break;
            case 7:
                ((LinkedList) obj2).addLast((gb7) obj);
                break;
            default:
                bg8.w((bg8) obj, (Iterable) obj2);
                break;
        }
    }
}
