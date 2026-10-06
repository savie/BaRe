package com.nimbusds.jose.shaded.gson;

import com.nimbusds.jose.shaded.gson.internal.NonNullElementWrapperList;
import defpackage.fz5;
import defpackage.l0;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class JsonArray extends JsonElement implements Iterable<JsonElement> {
    private final ArrayList<JsonElement> elements;

    public JsonArray() {
        this.elements = new ArrayList<>();
    }

    private JsonElement getAsSingleElement() {
        int size = this.elements.size();
        if (size == 1) {
            return this.elements.get(0);
        }
        l0.e(fz5.j(size, "Array must have size 1, but has size "));
        return null;
    }

    public void add(Boolean bool) {
        this.elements.add(bool == null ? JsonNull.INSTANCE : new JsonPrimitive(bool));
    }

    public void addAll(JsonArray jsonArray) {
        this.elements.addAll(jsonArray.elements);
    }

    public List<JsonElement> asList() {
        return new NonNullElementWrapperList(this.elements);
    }

    public boolean contains(JsonElement jsonElement) {
        return this.elements.contains(jsonElement);
    }

    @Override // com.nimbusds.jose.shaded.gson.JsonElement
    public JsonArray deepCopy() {
        if (this.elements.isEmpty()) {
            return new JsonArray();
        }
        JsonArray jsonArray = new JsonArray(this.elements.size());
        Iterator<JsonElement> it = this.elements.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().deepCopy());
        }
        return jsonArray;
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof JsonArray) && ((JsonArray) obj).elements.equals(this.elements);
        }
        return true;
    }

    public JsonElement get(int i) {
        return this.elements.get(i);
    }

    @Override // com.nimbusds.jose.shaded.gson.JsonElement
    public BigDecimal getAsBigDecimal() {
        return getAsSingleElement().getAsBigDecimal();
    }

    @Override // com.nimbusds.jose.shaded.gson.JsonElement
    public BigInteger getAsBigInteger() {
        return getAsSingleElement().getAsBigInteger();
    }

    @Override // com.nimbusds.jose.shaded.gson.JsonElement
    public boolean getAsBoolean() {
        return getAsSingleElement().getAsBoolean();
    }

    @Override // com.nimbusds.jose.shaded.gson.JsonElement
    public byte getAsByte() {
        return getAsSingleElement().getAsByte();
    }

    @Override // com.nimbusds.jose.shaded.gson.JsonElement
    @Deprecated
    public char getAsCharacter() {
        return getAsSingleElement().getAsCharacter();
    }

    @Override // com.nimbusds.jose.shaded.gson.JsonElement
    public double getAsDouble() {
        return getAsSingleElement().getAsDouble();
    }

    @Override // com.nimbusds.jose.shaded.gson.JsonElement
    public float getAsFloat() {
        return getAsSingleElement().getAsFloat();
    }

    @Override // com.nimbusds.jose.shaded.gson.JsonElement
    public int getAsInt() {
        return getAsSingleElement().getAsInt();
    }

    @Override // com.nimbusds.jose.shaded.gson.JsonElement
    public long getAsLong() {
        return getAsSingleElement().getAsLong();
    }

    @Override // com.nimbusds.jose.shaded.gson.JsonElement
    public Number getAsNumber() {
        return getAsSingleElement().getAsNumber();
    }

    @Override // com.nimbusds.jose.shaded.gson.JsonElement
    public short getAsShort() {
        return getAsSingleElement().getAsShort();
    }

    @Override // com.nimbusds.jose.shaded.gson.JsonElement
    public String getAsString() {
        return getAsSingleElement().getAsString();
    }

    public int hashCode() {
        return this.elements.hashCode();
    }

    public boolean isEmpty() {
        return this.elements.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<JsonElement> iterator() {
        return this.elements.iterator();
    }

    public JsonElement remove(int i) {
        return this.elements.remove(i);
    }

    public JsonElement set(int i, JsonElement jsonElement) {
        ArrayList<JsonElement> arrayList = this.elements;
        if (jsonElement == null) {
            jsonElement = JsonNull.INSTANCE;
        }
        return arrayList.set(i, jsonElement);
    }

    public int size() {
        return this.elements.size();
    }

    public boolean remove(JsonElement jsonElement) {
        return this.elements.remove(jsonElement);
    }

    public JsonArray(int i) {
        this.elements = new ArrayList<>(i);
    }

    public void add(Character ch) {
        this.elements.add(ch == null ? JsonNull.INSTANCE : new JsonPrimitive(ch));
    }

    public void add(Number number) {
        this.elements.add(number == null ? JsonNull.INSTANCE : new JsonPrimitive(number));
    }

    public void add(String str) {
        this.elements.add(str == null ? JsonNull.INSTANCE : new JsonPrimitive(str));
    }

    public void add(JsonElement jsonElement) {
        if (jsonElement == null) {
            jsonElement = JsonNull.INSTANCE;
        }
        this.elements.add(jsonElement);
    }
}
