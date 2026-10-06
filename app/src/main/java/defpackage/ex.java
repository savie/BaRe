package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum ex {
    UNPACK(0.0f, 1, null),
    DECOMPRESS(0.0f, 1, null),
    UNTAR(0.5f),
    UNTAR_DATA(0.5f),
    UNTAR_DEDATA(0.5f);

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    private final float taskProgressRatio;

    /* synthetic */ ex(float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 1.0f : f);
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final float getTaskProgressRatio() {
        return this.taskProgressRatio;
    }

    ex(float f) {
        this.taskProgressRatio = f;
    }
}
