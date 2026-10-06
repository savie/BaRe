package com.nimbusds.jose.util;

import com.nimbusds.jose.shaded.gson.Gson;
import com.nimbusds.jose.shaded.gson.GsonBuilder;
import com.nimbusds.jose.shaded.gson.Strictness;
import com.nimbusds.jose.shaded.gson.ToNumberPolicy;
import com.nimbusds.jose.shaded.gson.reflect.TypeToken;
import defpackage.y5;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JSONArrayUtils {
    private static final Gson GSON = new GsonBuilder().setStrictness(Strictness.STRICT).serializeNulls().setObjectToNumberStrategy(ToNumberPolicy.LONG_OR_DOUBLE).disableHtmlEscaping().create();

    private JSONArrayUtils() {
    }

    public static List<Object> newJSONArray() {
        return new ArrayList();
    }

    public static List<Object> parse(String str) throws ParseException {
        if (str == null) {
            y5.e(0, "The JSON array string must not be null");
            return null;
        }
        if (str.trim().isEmpty()) {
            y5.e(0, "Invalid JSON array");
            return null;
        }
        try {
            return (List) GSON.fromJson(str, TypeToken.getParameterized(List.class, Object.class).getType());
        } catch (Exception unused) {
            y5.e(0, "Invalid JSON array");
            return null;
        } catch (StackOverflowError unused2) {
            y5.e(0, "Excessive JSON object and / or array nesting");
            return null;
        }
    }

    public static String toJSONString(List<?> list) {
        Gson gson = GSON;
        Objects.requireNonNull(list);
        return gson.toJson(list);
    }
}
