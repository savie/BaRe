package com.microsoft.identity.common.java.util;

import com.google.gson.a;
import com.google.gson.b;
import com.google.gson.internal.Excluder;
import com.google.gson.reflect.TypeToken;
import com.microsoft.identity.common.java.commands.parameters.IHasExtraParameters;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsTokenRequest;
import defpackage.nn4;
import defpackage.t14;
import defpackage.tl4;
import defpackage.xb8;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ObjectMapper {
    public static final a GSON;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public class UnknownParamTypeAdapterFactory implements xb8 {
        @Override // defpackage.xb8
        public final <T> b create(a aVar, TypeToken<T> typeToken) {
            final b bVarF = aVar.f(this, typeToken);
            if (IHasExtraParameters.class.isAssignableFrom(typeToken.getRawType())) {
                return new b() { // from class: com.microsoft.identity.common.java.util.ObjectMapper.UnknownParamTypeAdapterFactory.1
                    @Override // com.google.gson.b
                    public final Object read(final tl4 tl4Var) throws IOException {
                        final LinkedHashMap linkedHashMap = new LinkedHashMap();
                        Object obj = bVarF.read(new tl4(new Reader() { // from class: com.microsoft.identity.common.java.util.ObjectMapper.UnknownParamTypeAdapterFactory.1.1
                            @Override // java.io.Reader
                            public final int read(char[] cArr, int i, int i2) throws IOException {
                                return 0;
                            }

                            @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
                            public final void close() throws IOException {
                            }
                        }) { // from class: com.microsoft.identity.common.java.util.ObjectMapper.UnknownParamTypeAdapterFactory.1.2
                            String lastName = null;

                            @Override // defpackage.tl4
                            public final void beginArray() throws IOException {
                                tl4Var.beginArray();
                            }

                            @Override // defpackage.tl4
                            public final void beginObject() throws IOException {
                                tl4Var.beginObject();
                            }

                            @Override // defpackage.tl4, java.io.Closeable, java.lang.AutoCloseable
                            public final void close() throws IOException {
                                tl4Var.close();
                            }

                            @Override // defpackage.tl4
                            public final void endArray() throws IOException {
                                tl4Var.endArray();
                            }

                            @Override // defpackage.tl4
                            public final void endObject() throws IOException {
                                tl4Var.endObject();
                            }

                            @Override // defpackage.tl4
                            public final String getPath() {
                                return tl4Var.getPath();
                            }

                            @Override // defpackage.tl4
                            public final boolean hasNext() throws IOException {
                                return tl4Var.hasNext();
                            }

                            @Override // defpackage.tl4
                            public final boolean nextBoolean() throws IOException {
                                return tl4Var.nextBoolean();
                            }

                            @Override // defpackage.tl4
                            public final double nextDouble() throws IOException {
                                return tl4Var.nextDouble();
                            }

                            @Override // defpackage.tl4
                            public final int nextInt() throws IOException {
                                return tl4Var.nextInt();
                            }

                            @Override // defpackage.tl4
                            public final long nextLong() throws IOException {
                                return tl4Var.nextLong();
                            }

                            @Override // defpackage.tl4
                            public final String nextName() throws IOException {
                                String strNextName = tl4Var.nextName();
                                this.lastName = strNextName;
                                return strNextName;
                            }

                            @Override // defpackage.tl4
                            public final void nextNull() throws IOException {
                                tl4Var.nextNull();
                            }

                            @Override // defpackage.tl4
                            public final String nextString() throws IOException {
                                return tl4Var.nextString();
                            }

                            @Override // defpackage.tl4
                            public final int peek() throws IOException {
                                return tl4Var.peek();
                            }

                            @Override // defpackage.tl4
                            public final void skipValue() throws IOException {
                                tl4 tl4Var2 = tl4Var;
                                if (tl4Var2.peek() != 6) {
                                    tl4Var2.skipValue();
                                    return;
                                }
                                linkedHashMap.put(this.lastName, tl4Var2.nextString());
                            }

                            @Override // defpackage.tl4
                            public final String toString() {
                                return tl4Var.toString();
                            }
                        });
                        ((IHasExtraParameters) obj).setExtraParameters(Collections.unmodifiableMap(linkedHashMap).entrySet());
                        return obj;
                    }

                    @Override // com.google.gson.b
                    public final void write(nn4 nn4Var, Object obj) throws IOException {
                        bVarF.write(nn4Var, obj);
                    }
                };
            }
            return null;
        }
    }

    static {
        t14 t14Var = new t14();
        t14Var.c.add(new UnknownParamTypeAdapterFactory());
        GSON = new a(t14Var);
    }

    public static String serializeExposedFieldsOfObjectToJsonString(Object obj) {
        t14 t14Var = new t14();
        Excluder excluderClone = t14Var.a.clone();
        excluderClone.a = true;
        t14Var.a = excluderClone;
        return new a(t14Var).i(obj);
    }

    public static String serializeObjectToFormUrlEncoded(MicrosoftStsTokenRequest microsoftStsTokenRequest) throws UnsupportedEncodingException {
        TreeMap treeMap = (TreeMap) new a().b(new StringReader(GSON.i(microsoftStsTokenRequest)), TypeToken.get(TypeToken.getParameterized(TreeMap.class, String.class, String.class).getType()));
        Iterable<Map.Entry<String, String>> extraParameters = microsoftStsTokenRequest.getExtraParameters();
        if (extraParameters != null) {
            for (Map.Entry<String, String> entry : extraParameters) {
                if (entry.getKey() != null) {
                    treeMap.put(entry.getKey(), entry.getValue());
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = treeMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            sb.append(URLEncoder.encode((String) entry2.getKey(), "UTF-8"));
            sb.append('=');
            sb.append(URLEncoder.encode((String) entry2.getValue(), "UTF-8"));
            if (it.hasNext()) {
                sb.append('&');
            }
        }
        return sb.toString();
    }
}
