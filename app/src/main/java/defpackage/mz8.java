package defpackage;

import java.util.Collections;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum mz8 {
    /* JADX INFO: Fake field, exist only in values array */
    STORED(0),
    /* JADX INFO: Fake field, exist only in values array */
    UNSHRINKING(1),
    /* JADX INFO: Fake field, exist only in values array */
    EXPANDING_LEVEL_1(2),
    /* JADX INFO: Fake field, exist only in values array */
    EXPANDING_LEVEL_2(3),
    /* JADX INFO: Fake field, exist only in values array */
    EXPANDING_LEVEL_3(4),
    /* JADX INFO: Fake field, exist only in values array */
    EXPANDING_LEVEL_4(5),
    /* JADX INFO: Fake field, exist only in values array */
    IMPLODING(6),
    /* JADX INFO: Fake field, exist only in values array */
    TOKENIZATION(7),
    /* JADX INFO: Fake field, exist only in values array */
    DEFLATED(8),
    /* JADX INFO: Fake field, exist only in values array */
    ENHANCED_DEFLATED(9),
    /* JADX INFO: Fake field, exist only in values array */
    PKWARE_IMPLODING(10),
    /* JADX INFO: Fake field, exist only in values array */
    BZIP2(12),
    /* JADX INFO: Fake field, exist only in values array */
    LZMA(14),
    /* JADX INFO: Fake field, exist only in values array */
    ZSTD_DEPRECATED(20),
    /* JADX INFO: Fake field, exist only in values array */
    ZSTD(93),
    /* JADX INFO: Fake field, exist only in values array */
    XZ(95),
    /* JADX INFO: Fake field, exist only in values array */
    JPEG(96),
    /* JADX INFO: Fake field, exist only in values array */
    WAVPACK(97),
    /* JADX INFO: Fake field, exist only in values array */
    PPMD(98),
    /* JADX INFO: Fake field, exist only in values array */
    AES_ENCRYPTED(99),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(-1);

    public static final Map b = Collections.unmodifiableMap((Map) Stream.of((Object[]) values()).collect(Collectors.toMap(new bu5(1), Function.identity())));
    public final int a;

    mz8(int i) {
        this.a = i;
    }
}
