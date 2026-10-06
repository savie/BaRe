package com.nimbusds.jose.shaded.gson.internal.bind;

import com.nimbusds.jose.shaded.gson.JsonArray;
import com.nimbusds.jose.shaded.gson.JsonElement;
import com.nimbusds.jose.shaded.gson.JsonNull;
import com.nimbusds.jose.shaded.gson.JsonObject;
import com.nimbusds.jose.shaded.gson.JsonPrimitive;
import com.nimbusds.jose.shaded.gson.TypeAdapter;
import com.nimbusds.jose.shaded.gson.internal.LazilyParsedNumber;
import com.nimbusds.jose.shaded.gson.stream.JsonReader;
import com.nimbusds.jose.shaded.gson.stream.JsonToken;
import com.nimbusds.jose.shaded.gson.stream.JsonWriter;
import defpackage.b6;
import defpackage.y5;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class JsonElementTypeAdapter extends TypeAdapter<JsonElement> {
    static final JsonElementTypeAdapter ADAPTER = new JsonElementTypeAdapter();

    /* JADX INFO: renamed from: com.nimbusds.jose.shaded.gson.internal.bind.JsonElementTypeAdapter$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$gson$stream$JsonToken;

        static {
            int[] iArr = new int[JsonToken.values().length];
            $SwitchMap$com$google$gson$stream$JsonToken = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private JsonElementTypeAdapter() {
    }

    private JsonElement readTerminal(JsonReader jsonReader, JsonToken jsonToken) throws IOException {
        int i = AnonymousClass1.$SwitchMap$com$google$gson$stream$JsonToken[jsonToken.ordinal()];
        if (i == 3) {
            return new JsonPrimitive(jsonReader.nextString());
        }
        if (i == 4) {
            return new JsonPrimitive(new LazilyParsedNumber(jsonReader.nextString()));
        }
        if (i == 5) {
            return new JsonPrimitive(Boolean.valueOf(jsonReader.nextBoolean()));
        }
        if (i == 6) {
            jsonReader.nextNull();
            return JsonNull.INSTANCE;
        }
        y5.g(jsonToken, "Unexpected token: ");
        return null;
    }

    private JsonElement tryBeginNesting(JsonReader jsonReader, JsonToken jsonToken) throws IOException {
        int i = AnonymousClass1.$SwitchMap$com$google$gson$stream$JsonToken[jsonToken.ordinal()];
        if (i == 1) {
            jsonReader.beginArray();
            return new JsonArray();
        }
        if (i != 2) {
            return null;
        }
        jsonReader.beginObject();
        return new JsonObject();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.nimbusds.jose.shaded.gson.TypeAdapter
    /* JADX INFO: renamed from: read */
    public JsonElement read2(JsonReader jsonReader) throws IOException {
        if (jsonReader instanceof JsonTreeReader) {
            return ((JsonTreeReader) jsonReader).nextJsonElement();
        }
        JsonToken jsonTokenPeek = jsonReader.peek();
        JsonElement jsonElementTryBeginNesting = tryBeginNesting(jsonReader, jsonTokenPeek);
        if (jsonElementTryBeginNesting == null) {
            return readTerminal(jsonReader, jsonTokenPeek);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (jsonReader.hasNext()) {
                String strNextName = jsonElementTryBeginNesting instanceof JsonObject ? jsonReader.nextName() : null;
                JsonToken jsonTokenPeek2 = jsonReader.peek();
                JsonElement jsonElementTryBeginNesting2 = tryBeginNesting(jsonReader, jsonTokenPeek2);
                boolean z = jsonElementTryBeginNesting2 != null;
                if (jsonElementTryBeginNesting2 == null) {
                    jsonElementTryBeginNesting2 = readTerminal(jsonReader, jsonTokenPeek2);
                }
                if (jsonElementTryBeginNesting instanceof JsonArray) {
                    ((JsonArray) jsonElementTryBeginNesting).add(jsonElementTryBeginNesting2);
                } else {
                    ((JsonObject) jsonElementTryBeginNesting).add(strNextName, jsonElementTryBeginNesting2);
                }
                if (z) {
                    arrayDeque.addLast(jsonElementTryBeginNesting);
                    jsonElementTryBeginNesting = jsonElementTryBeginNesting2;
                }
            } else {
                if (jsonElementTryBeginNesting instanceof JsonArray) {
                    jsonReader.endArray();
                } else {
                    jsonReader.endObject();
                }
                if (arrayDeque.isEmpty()) {
                    return jsonElementTryBeginNesting;
                }
                jsonElementTryBeginNesting = (JsonElement) arrayDeque.removeLast();
            }
        }
    }

    @Override // com.nimbusds.jose.shaded.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, JsonElement jsonElement) throws IOException {
        if (jsonElement == null || jsonElement.isJsonNull()) {
            jsonWriter.nullValue();
            return;
        }
        if (jsonElement.isJsonPrimitive()) {
            JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
            if (asJsonPrimitive.isNumber()) {
                jsonWriter.value(asJsonPrimitive.getAsNumber());
                return;
            } else if (asJsonPrimitive.isBoolean()) {
                jsonWriter.value(asJsonPrimitive.getAsBoolean());
                return;
            } else {
                jsonWriter.value(asJsonPrimitive.getAsString());
                return;
            }
        }
        if (jsonElement.isJsonArray()) {
            jsonWriter.beginArray();
            Iterator<JsonElement> it = jsonElement.getAsJsonArray().iterator();
            while (it.hasNext()) {
                write(jsonWriter, it.next());
            }
            jsonWriter.endArray();
            return;
        }
        if (!jsonElement.isJsonObject()) {
            b6.e(jsonElement.getClass(), "Couldn't write ");
            return;
        }
        jsonWriter.beginObject();
        for (Map.Entry<String, JsonElement> entry : jsonElement.getAsJsonObject().entrySet()) {
            jsonWriter.name(entry.getKey());
            write(jsonWriter, entry.getValue());
        }
        jsonWriter.endObject();
    }
}
