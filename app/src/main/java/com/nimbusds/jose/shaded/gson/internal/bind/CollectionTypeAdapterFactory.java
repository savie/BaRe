package com.nimbusds.jose.shaded.gson.internal.bind;

import com.nimbusds.jose.shaded.gson.Gson;
import com.nimbusds.jose.shaded.gson.TypeAdapter;
import com.nimbusds.jose.shaded.gson.TypeAdapterFactory;
import com.nimbusds.jose.shaded.gson.internal.C$Gson$Types;
import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import com.nimbusds.jose.shaded.gson.reflect.TypeToken;
import com.nimbusds.jose.shaded.gson.stream.JsonReader;
import com.nimbusds.jose.shaded.gson.stream.JsonToken;
import com.nimbusds.jose.shaded.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CollectionTypeAdapterFactory implements TypeAdapterFactory {
    private final ConstructorConstructor constructorConstructor;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Adapter<E> extends TypeAdapter<Collection<E>> {
        private final ObjectConstructor<? extends Collection<E>> constructor;
        private final TypeAdapter<E> elementTypeAdapter;

        public Adapter(TypeAdapter<E> typeAdapter, ObjectConstructor<? extends Collection<E>> objectConstructor) {
            this.elementTypeAdapter = typeAdapter;
            this.constructor = objectConstructor;
        }

        @Override // com.nimbusds.jose.shaded.gson.TypeAdapter
        /* JADX INFO: renamed from: read */
        public Collection<E> read2(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Collection<E> collectionConstruct = this.constructor.construct();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                collectionConstruct.add(this.elementTypeAdapter.read2(jsonReader));
            }
            jsonReader.endArray();
            return collectionConstruct;
        }

        @Override // com.nimbusds.jose.shaded.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, Collection<E> collection) throws IOException {
            if (collection == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginArray();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.elementTypeAdapter.write(jsonWriter, it.next());
            }
            jsonWriter.endArray();
        }
    }

    public CollectionTypeAdapterFactory(ConstructorConstructor constructorConstructor) {
        this.constructorConstructor = constructorConstructor;
    }

    @Override // com.nimbusds.jose.shaded.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Type type = typeToken.getType();
        Class<? super T> rawType = typeToken.getRawType();
        if (!Collection.class.isAssignableFrom(rawType)) {
            return null;
        }
        Type collectionElementType = C$Gson$Types.getCollectionElementType(type, rawType);
        return new Adapter(new TypeAdapterRuntimeTypeWrapper(gson, gson.getAdapter(TypeToken.get(collectionElementType)), collectionElementType), this.constructorConstructor.get(typeToken));
    }
}
