package defpackage;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ft8 {
    public static final a Companion = new a(null);
    private final List<et8> items;

    private ft8(List<et8> list) {
        this.items = list;
    }

    public final List<et8> getItems() {
        return this.items;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ft8 wrapList(List<et8> list) {
            list.getClass();
            return new ft8(list, null);
        }

        private a() {
        }
    }

    public /* synthetic */ ft8(List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(list);
    }
}
