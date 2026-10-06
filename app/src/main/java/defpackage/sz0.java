package defpackage;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.model.provider.CallLogItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sz0 {
    public static final a Companion = new a(null);
    private final List<CallLogItem> items;

    private sz0(List<CallLogItem> list) {
        this.items = list;
    }

    public final List<CallLogItem> getItems() {
        return this.items;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final sz0 wrapList(List<CallLogItem> list) {
            list.getClass();
            return new sz0(list, null);
        }

        private a() {
        }
    }

    public /* synthetic */ sz0(List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(list);
    }
}
