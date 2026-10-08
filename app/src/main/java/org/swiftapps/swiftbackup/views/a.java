package org.swiftapps.swiftbackup.views;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[SwiftSegmentedCardGroup.a.values().length];
        try {
            iArr[SwiftSegmentedCardGroup.a.Single.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[SwiftSegmentedCardGroup.a.Top.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[SwiftSegmentedCardGroup.a.Middle.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[SwiftSegmentedCardGroup.a.Bottom.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        a = iArr;
    }
}
