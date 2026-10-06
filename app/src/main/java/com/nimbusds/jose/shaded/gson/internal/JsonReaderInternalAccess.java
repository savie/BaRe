package com.nimbusds.jose.shaded.gson.internal;

import com.nimbusds.jose.shaded.gson.stream.JsonReader;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class JsonReaderInternalAccess {
    public static volatile JsonReaderInternalAccess INSTANCE;

    public abstract void promoteNameToValue(JsonReader jsonReader) throws IOException;
}
