package com.nimbusds.jose;

import com.nimbusds.jose.shaded.jcip.Immutable;
import com.nimbusds.jose.util.JSONObjectUtils;
import java.text.ParseException;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public final class UnprotectedHeader {
    private final Map<String, Object> params;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class Builder {
        private final Map<String, Object> params = JSONObjectUtils.newJSONObject();

        public UnprotectedHeader build() {
            return new UnprotectedHeader(this.params);
        }

        public Builder keyID(String str) {
            this.params.put("kid", str);
            return this;
        }

        public Builder param(String str, Object obj) {
            this.params.put(str, obj);
            return this;
        }
    }

    private UnprotectedHeader(Map<String, Object> map) {
        Objects.requireNonNull(map);
        this.params = map;
    }

    public static UnprotectedHeader parse(Map<String, Object> map) throws ParseException {
        if (map == null) {
            return null;
        }
        Builder builder = new Builder();
        for (String str : map.keySet()) {
            builder = builder.param(str, map.get(str));
        }
        return builder.build();
    }

    public Set<String> getIncludedParams() {
        return this.params.keySet();
    }

    public String getKeyID() {
        return (String) this.params.get("kid");
    }

    public Object getParam(String str) {
        return this.params.get(str);
    }

    public Map<String, Object> toJSONObject() {
        Map<String, Object> mapNewJSONObject = JSONObjectUtils.newJSONObject();
        mapNewJSONObject.putAll(this.params);
        return mapNewJSONObject;
    }
}
