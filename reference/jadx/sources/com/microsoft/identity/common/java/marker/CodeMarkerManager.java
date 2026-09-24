package com.microsoft.identity.common.java.marker;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CodeMarkerManager {
    private final List<Object> codeMarkers = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    abstract class CodeMarkerHolder {
        static final CodeMarkerManager INSTANCE = new CodeMarkerManager();
    }

    public static CodeMarkerManager getInstance() {
        return CodeMarkerHolder.INSTANCE;
    }
}
