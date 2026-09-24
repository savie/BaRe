package com.nimbusds.jose.shaded.gson;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum LongSerializationPolicy {
    DEFAULT { // from class: com.nimbusds.jose.shaded.gson.LongSerializationPolicy.1
        @Override // com.nimbusds.jose.shaded.gson.LongSerializationPolicy
        public JsonElement serialize(Long l) {
            return l == null ? JsonNull.INSTANCE : new JsonPrimitive(l);
        }
    },
    STRING { // from class: com.nimbusds.jose.shaded.gson.LongSerializationPolicy.2
        @Override // com.nimbusds.jose.shaded.gson.LongSerializationPolicy
        public JsonElement serialize(Long l) {
            return l == null ? JsonNull.INSTANCE : new JsonPrimitive(l.toString());
        }
    };

    public abstract JsonElement serialize(Long l);
}
