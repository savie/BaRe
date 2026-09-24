package com.nimbusds.jose.util;

import com.nimbusds.jose.shaded.gson.Gson;
import com.nimbusds.jose.shaded.gson.GsonBuilder;
import com.nimbusds.jose.shaded.gson.Strictness;
import com.nimbusds.jose.shaded.gson.ToNumberPolicy;
import com.nimbusds.jose.shaded.gson.reflect.TypeToken;
import defpackage.eq3;
import defpackage.xs1;
import defpackage.y5;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JSONObjectUtils {
    private static final Gson GSON = new GsonBuilder().setStrictness(Strictness.STRICT).serializeNulls().setObjectToNumberStrategy(ToNumberPolicy.LONG_OR_DOUBLE).disableHtmlEscaping().create();

    private JSONObjectUtils() {
    }

    public static Base64URL getBase64URL(Map<String, Object> map, String str) throws ParseException {
        String string = getString(map, str);
        if (string == null) {
            return null;
        }
        return new Base64URL(string);
    }

    public static boolean getBoolean(Map<String, Object> map, String str) throws ParseException {
        Boolean bool = (Boolean) getGeneric(map, str, Boolean.class);
        if (bool != null) {
            return bool.booleanValue();
        }
        y5.e(0, eq3.k("JSON object member ", str, " is missing or null"));
        return false;
    }

    public static double getDouble(Map<String, Object> map, String str) throws ParseException {
        Number number = (Number) getGeneric(map, str, Number.class);
        if (number != null) {
            return number.doubleValue();
        }
        y5.e(0, eq3.k("JSON object member ", str, " is missing or null"));
        return 0.0d;
    }

    public static Date getEpochSecondAsDate(Map<String, Object> map, String str) throws ParseException {
        Number number = (Number) getGeneric(map, str, Number.class);
        if (number == null) {
            return null;
        }
        return com.nimbusds.jwt.util.DateUtils.fromSecondsSinceEpoch(number.longValue());
    }

    public static float getFloat(Map<String, Object> map, String str) throws ParseException {
        Number number = (Number) getGeneric(map, str, Number.class);
        if (number != null) {
            return number.floatValue();
        }
        y5.e(0, eq3.k("JSON object member ", str, " is missing or null"));
        return 0.0f;
    }

    private static <T> T getGeneric(Map<String, Object> map, String str, Class<T> cls) throws ParseException {
        if (map.get(str) == null) {
            return null;
        }
        T t = (T) map.get(str);
        if (cls.isAssignableFrom(t.getClass())) {
            return t;
        }
        y5.e(0, eq3.k("Unexpected type of JSON object member ", str, ""));
        return null;
    }

    public static int getInt(Map<String, Object> map, String str) throws ParseException {
        Number number = (Number) getGeneric(map, str, Number.class);
        if (number != null) {
            return number.intValue();
        }
        y5.e(0, eq3.k("JSON object member ", str, " is missing or null"));
        return 0;
    }

    public static List<Object> getJSONArray(Map<String, Object> map, String str) throws ParseException {
        return (List) getGeneric(map, str, List.class);
    }

    public static Map<String, Object> getJSONObject(Map<String, Object> map, String str) throws ParseException {
        Map<String, Object> map2 = (Map) getGeneric(map, str, Map.class);
        if (map2 == null) {
            return null;
        }
        Iterator<String> it = map2.keySet().iterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof String)) {
                y5.e(0, eq3.k("JSON object member ", str, " not a JSON object"));
                return null;
            }
        }
        return map2;
    }

    public static Map<String, Object>[] getJSONObjectArray(Map<String, Object> map, String str) throws ParseException {
        List<Object> jSONArray = getJSONArray(map, str);
        if (jSONArray == null) {
            return null;
        }
        if (jSONArray.isEmpty()) {
            return new HashMap[0];
        }
        for (Object obj : jSONArray) {
            if (obj != null && (obj instanceof Map)) {
                try {
                    return (Map[]) jSONArray.toArray(new Map[0]);
                } catch (ArrayStoreException unused) {
                }
            }
        }
        y5.e(0, eq3.k("JSON object member ", str, " is not an array of JSON objects"));
        return null;
    }

    public static long getLong(Map<String, Object> map, String str) throws ParseException {
        Number number = (Number) getGeneric(map, str, Number.class);
        if (number != null) {
            return number.longValue();
        }
        y5.e(0, eq3.k("JSON object member ", str, " is missing or null"));
        return 0L;
    }

    public static String getString(Map<String, Object> map, String str) throws ParseException {
        return (String) getGeneric(map, str, String.class);
    }

    public static String[] getStringArray(Map<String, Object> map, String str) throws ParseException {
        List<Object> jSONArray = getJSONArray(map, str);
        if (jSONArray == null) {
            return null;
        }
        try {
            return (String[]) jSONArray.toArray(new String[0]);
        } catch (ArrayStoreException unused) {
            y5.e(0, eq3.k("JSON object member ", str, " is not an array of strings"));
            return null;
        }
    }

    public static List<String> getStringList(Map<String, Object> map, String str) throws ParseException {
        String[] stringArray = getStringArray(map, str);
        if (stringArray == null) {
            return null;
        }
        return Arrays.asList(stringArray);
    }

    public static URI getURI(Map<String, Object> map, String str) throws ParseException {
        String string = getString(map, str);
        if (string == null) {
            return null;
        }
        try {
            return new URI(string);
        } catch (URISyntaxException e) {
            y5.e(0, e.getMessage());
            return null;
        }
    }

    public static Map<String, Object> newJSONObject() {
        return new HashMap();
    }

    public static Map<String, Object> parse(String str, int i) throws ParseException {
        if (str == null) {
            y5.e(0, "The JSON object string must not be null");
            return null;
        }
        if (str.trim().isEmpty()) {
            y5.e(0, "Invalid JSON object");
            return null;
        }
        if (i >= 0 && str.length() > i) {
            y5.e(0, xs1.h(i, "The parsed string is longer than the max accepted size of ", " characters"));
            return null;
        }
        try {
            return (Map) GSON.fromJson(str, TypeToken.getParameterized(Map.class, String.class, Object.class).getType());
        } catch (Exception unused) {
            y5.e(0, "Invalid JSON object");
            return null;
        } catch (StackOverflowError unused2) {
            y5.e(0, "Excessive JSON object and / or array nesting");
            return null;
        }
    }

    @Deprecated
    public static Map<String, Object> parseJSONObject(String str) throws ParseException {
        return parse(str);
    }

    public static String toJSONString(Map<String, ?> map) {
        Gson gson = GSON;
        Objects.requireNonNull(map);
        return gson.toJson(map);
    }

    public static Map<String, Object> parse(String str) throws ParseException {
        return parse(str, -1);
    }
}
