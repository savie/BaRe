package com.microsoft.identity.deviceregistration.java.protocol.packer;

import com.microsoft.identity.common.java.AuthenticationConstants;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.deviceregistration.java.api.DeviceRegistrationRecord;
import com.microsoft.identity.deviceregistration.java.api.DeviceRegistrationRecordWithAccount;
import com.microsoft.identity.deviceregistration.java.protocol.IDeviceRegistrationProtocol;
import defpackage.aa;
import defpackage.ba;
import defpackage.bn4;
import defpackage.c6;
import defpackage.ca;
import defpackage.d6;
import defpackage.da;
import defpackage.dn4;
import defpackage.ea;
import defpackage.f6;
import defpackage.j26;
import defpackage.kh5;
import defpackage.nh5;
import defpackage.q;
import defpackage.qi4;
import defpackage.s48;
import defpackage.ts3;
import defpackage.yh8;
import defpackage.z9;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class DeviceRegistrationProtocolMoshiSerializer<DeviceRegistrationProtocol extends IDeviceRegistrationProtocol> implements IDeviceRegistrationProtocolSerializer<DeviceRegistrationProtocol> {
    private static final nh5 moshi;
    private final qi4 deviceRegistrationProtocolJsonAdapter;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class UUIDAdapter {
        @ts3
        public UUID fromJson(String str) {
            return UUID.fromString(str);
        }

        @s48
        public String toJson(UUID uuid) {
            return uuid.toString();
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x016e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x0166  */
    static {
        int i;
        Object obj;
        Type type;
        Class cls;
        String str;
        boolean z;
        da caVar;
        Object obj2;
        String str2;
        da aaVar;
        da daVarB;
        boolean z2;
        kh5 kh5Var = new kh5();
        ArrayList arrayList = (ArrayList) kh5Var.b;
        List list = Collections.EMPTY_LIST;
        if (list.contains("com.microsoft.identity.broker4j.workplacejoin.api.DeviceRegistrationRecord")) {
            c6.f("Labels must be unique.");
            return;
        }
        ArrayList arrayList2 = new ArrayList(list);
        arrayList2.add("com.microsoft.identity.broker4j.workplacejoin.api.DeviceRegistrationRecord");
        ArrayList arrayList3 = new ArrayList(list);
        arrayList3.add(DeviceRegistrationRecord.class);
        if (arrayList2.contains("com.microsoft.identity.broker4j.workplacejoin.api.DeviceRegistrationRecordWithAccount")) {
            c6.f("Labels must be unique.");
            return;
        }
        ArrayList arrayList4 = new ArrayList(arrayList2);
        arrayList4.add("com.microsoft.identity.broker4j.workplacejoin.api.DeviceRegistrationRecordWithAccount");
        ArrayList arrayList5 = new ArrayList(arrayList3);
        arrayList5.add(DeviceRegistrationRecordWithAccount.class);
        j26 j26Var = new j26(arrayList4, arrayList5);
        int i2 = kh5Var.a;
        kh5Var.a = i2 + 1;
        arrayList.add(i2, j26Var);
        UUIDAdapter uUIDAdapter = new UUIDAdapter();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        Class<UUIDAdapter> cls2 = UUIDAdapter.class;
        Class<UUIDAdapter> superclass = cls2;
        while (superclass != Object.class) {
            Method[] declaredMethods = superclass.getDeclaredMethods();
            int length = declaredMethods.length;
            int i3 = 0;
            while (i3 < length) {
                Method method = declaredMethods[i3];
                boolean zIsAnnotationPresent = method.isAnnotationPresent(s48.class);
                Class cls3 = Void.TYPE;
                if (zIsAnnotationPresent) {
                    method.setAccessible(true);
                    Type genericReturnType = method.getGenericReturnType();
                    Type[] genericParameterTypes = method.getGenericParameterTypes();
                    Annotation[][] parameterAnnotations = method.getParameterAnnotations();
                    if (genericParameterTypes.length >= 2 && genericParameterTypes[0] == dn4.class && genericReturnType == cls3) {
                        int length2 = genericParameterTypes.length;
                        int i4 = 2;
                        while (true) {
                            if (i4 < length2) {
                                int i5 = length2;
                                Type type2 = genericParameterTypes[i4];
                                i = i3;
                                if ((type2 instanceof ParameterizedType) && ((ParameterizedType) type2).getRawType() == qi4.class) {
                                    i4++;
                                    length2 = i5;
                                    i3 = i;
                                }
                            } else {
                                i = i3;
                                type = qi4.class;
                                str2 = "Unexpected signature for ";
                                aaVar = new z9(genericParameterTypes[1], yh8.e(parameterAnnotations[1]), uUIDAdapter, method, genericParameterTypes.length, 2, true);
                                obj = "Nullable";
                                cls = cls3;
                            }
                            daVarB = ea.b(arrayList6, aaVar.a, aaVar.b);
                            if (daVarB == null) {
                                StringBuilder sb = new StringBuilder("Conflicting @ToJson methods:\n    ");
                                sb.append(daVarB.d);
                                d6.l(sb, r17, aaVar.d);
                                return;
                            }
                            arrayList6.add(aaVar);
                            str = str2;
                        }
                    } else {
                        i = i3;
                    }
                    type = qi4.class;
                    str2 = "Unexpected signature for ";
                    if (genericParameterTypes.length != 1 || genericReturnType == cls3) {
                        d6.e(method, ".\n@ToJson method signatures may have one of the following structures:\n    <any access modifier> void toJson(JsonWriter writer, T value) throws <any>;\n    <any access modifier> void toJson(JsonWriter writer, T value, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R toJson(T value) throws <any>;\n", str2);
                        return;
                    }
                    Set set = yh8.a;
                    Set setE = yh8.e(method.getAnnotations());
                    Set setE2 = yh8.e(parameterAnnotations[0]);
                    Annotation[] annotationArr = parameterAnnotations[0];
                    int length3 = annotationArr.length;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= length3) {
                            z2 = false;
                            break;
                        }
                        int i7 = length3;
                        if (annotationArr[i6].annotationType().getSimpleName().equals("Nullable")) {
                            z2 = true;
                            break;
                        } else {
                            i6++;
                            length3 = i7;
                        }
                    }
                    obj = "Nullable";
                    cls = cls3;
                    aaVar = new aa(genericParameterTypes[0], setE2, uUIDAdapter, method, genericParameterTypes.length, z2, genericParameterTypes, genericReturnType, setE2, setE);
                    daVarB = ea.b(arrayList6, aaVar.a, aaVar.b);
                    if (daVarB == null) {
                        StringBuilder sb2 = new StringBuilder("Conflicting @ToJson methods:\n    ");
                        sb2.append(daVarB.d);
                        d6.l(sb2, r17, aaVar.d);
                        return;
                    }
                    arrayList6.add(aaVar);
                    str = str2;
                } else {
                    arrayList = arrayList;
                    i = i3;
                    obj = "Nullable";
                    type = qi4.class;
                    cls = cls3;
                    str = "Unexpected signature for ";
                    declaredMethods = declaredMethods;
                    length = length;
                }
                if (method.isAnnotationPresent(ts3.class)) {
                    method.setAccessible(true);
                    Type genericReturnType2 = method.getGenericReturnType();
                    Set set2 = yh8.a;
                    Set setE3 = yh8.e(method.getAnnotations());
                    Type[] genericParameterTypes2 = method.getGenericParameterTypes();
                    Annotation[][] parameterAnnotations2 = method.getParameterAnnotations();
                    if (genericParameterTypes2.length >= 1 && genericParameterTypes2[0] == bn4.class && genericReturnType2 != cls) {
                        int length4 = genericParameterTypes2.length;
                        int i8 = 1;
                        while (true) {
                            if (i8 < length4) {
                                Type type3 = genericParameterTypes2[i8];
                                int i9 = length4;
                                if (type3 instanceof ParameterizedType) {
                                    Type rawType = ((ParameterizedType) type3).getRawType();
                                    Type type4 = type;
                                    if (rawType == type4) {
                                        i8++;
                                        type = type4;
                                        length4 = i9;
                                    }
                                }
                                if (genericParameterTypes2.length == 1) {
                                }
                                d6.e(method, ".\n@FromJson method signatures may have one of the following structures:\n    <any access modifier> R fromJson(JsonReader jsonReader) throws <any>;\n    <any access modifier> R fromJson(JsonReader jsonReader, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R fromJson(T value) throws <any>;\n", str);
                                return;
                            }
                            caVar = new ba(genericReturnType2, setE3, uUIDAdapter, method, genericParameterTypes2.length, 1, true);
                            obj2 = "\n    ";
                        }
                    } else {
                        if (genericParameterTypes2.length == 1 || genericReturnType2 == cls) {
                            d6.e(method, ".\n@FromJson method signatures may have one of the following structures:\n    <any access modifier> R fromJson(JsonReader jsonReader) throws <any>;\n    <any access modifier> R fromJson(JsonReader jsonReader, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R fromJson(T value) throws <any>;\n", str);
                            return;
                        }
                        Set setE4 = yh8.e(parameterAnnotations2[0]);
                        Annotation[] annotationArr2 = parameterAnnotations2[0];
                        int length5 = annotationArr2.length;
                        int i10 = 0;
                        while (true) {
                            if (i10 >= length5) {
                                z = false;
                                break;
                            } else {
                                if (annotationArr2[i10].annotationType().getSimpleName().equals(obj)) {
                                    z = true;
                                    break;
                                }
                                i10++;
                            }
                        }
                        obj2 = r17;
                        caVar = new ca(genericReturnType2, setE3, uUIDAdapter, method, genericParameterTypes2.length, z, genericParameterTypes2, genericReturnType2, setE4, setE3);
                    }
                    da daVarB2 = ea.b(arrayList7, caVar.a, caVar.b);
                    if (daVarB2 != null) {
                        StringBuilder sb3 = new StringBuilder("Conflicting @FromJson methods:\n    ");
                        sb3.append(daVarB2.d);
                        d6.l(sb3, obj2, caVar.d);
                        return;
                    }
                    arrayList7.add(caVar);
                }
                i3 = i + 1;
                length = length;
                declaredMethods = declaredMethods;
                superclass = superclass;
                arrayList = arrayList;
                cls2 = cls2;
            }
            superclass = superclass.getSuperclass();
        }
        ArrayList arrayList8 = arrayList;
        Class<UUIDAdapter> cls4 = cls2;
        if (arrayList6.isEmpty() && arrayList7.isEmpty()) {
            c6.f("Expected at least one @ToJson or @FromJson method on ".concat(cls4.getName()));
            return;
        }
        ea eaVar = new ea(arrayList6, arrayList7);
        int i11 = kh5Var.a;
        kh5Var.a = i11 + 1;
        arrayList8.add(i11, eaVar);
        moshi = new nh5(kh5Var);
    }

    public DeviceRegistrationProtocolMoshiSerializer(Class<DeviceRegistrationProtocol> cls) {
        this.deviceRegistrationProtocolJsonAdapter = moshi.a(cls);
    }

    public final DeviceRegistrationProtocol deserialize(byte[] bArr) throws ClientException {
        if (bArr == null) {
            f6.n("serializedProtocol is marked non-null but is null");
            return null;
        }
        try {
            DeviceRegistrationProtocol deviceregistrationprotocol = (DeviceRegistrationProtocol) this.deviceRegistrationProtocolJsonAdapter.b(new String(bArr, AuthenticationConstants.CHARSET_UTF8));
            if (deviceregistrationprotocol != null) {
                return deviceregistrationprotocol;
            }
            Logger.error("DeviceRegistrationProtocolMoshiSerializer:deserialize", "The protocol cannot be unpacked", null);
            q.i("json_parse_failure", "Protocol is null", null);
            return null;
        } catch (IOException e) {
            Logger.error("DeviceRegistrationProtocolMoshiSerializer:deserialize", "Failed to convert json to DeviceRegistrationProtocol", e);
            throw new ClientException("json_parse_failure", e.getMessage(), e);
        }
    }

    public final byte[] serialize(DeviceRegistrationProtocol deviceregistrationprotocol) {
        if (deviceregistrationprotocol != null) {
            return this.deviceRegistrationProtocolJsonAdapter.d(deviceregistrationprotocol).getBytes(AuthenticationConstants.CHARSET_UTF8);
        }
        f6.n("protocol is marked non-null but is null");
        return null;
    }
}
