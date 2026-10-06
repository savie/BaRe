package com.nimbusds.jose.shaded.gson.internal;

import com.nimbusds.jose.shaded.gson.ReflectionAccessFilter;
import defpackage.e6;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ReflectionAccessFilterHelper {

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class AccessChecker {
        public static final AccessChecker INSTANCE;

        static {
            AccessChecker accessChecker;
            if (JavaVersion.isJava9OrLater()) {
                try {
                    final Method declaredMethod = AccessibleObject.class.getDeclaredMethod("canAccess", Object.class);
                    accessChecker = new AccessChecker() { // from class: com.nimbusds.jose.shaded.gson.internal.ReflectionAccessFilterHelper.AccessChecker.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super();
                        }

                        @Override // com.nimbusds.jose.shaded.gson.internal.ReflectionAccessFilterHelper.AccessChecker
                        public boolean canAccess(AccessibleObject accessibleObject, Object obj) {
                            try {
                                return ((Boolean) declaredMethod.invoke(accessibleObject, obj)).booleanValue();
                            } catch (Exception e) {
                                e6.i("Failed invoking canAccess", e);
                                return false;
                            }
                        }
                    };
                } catch (NoSuchMethodException unused) {
                    accessChecker = null;
                }
            } else {
                accessChecker = null;
            }
            if (accessChecker == null) {
                accessChecker = new AccessChecker() { // from class: com.nimbusds.jose.shaded.gson.internal.ReflectionAccessFilterHelper.AccessChecker.2
                    @Override // com.nimbusds.jose.shaded.gson.internal.ReflectionAccessFilterHelper.AccessChecker
                    public boolean canAccess(AccessibleObject accessibleObject, Object obj) {
                        return true;
                    }
                };
            }
            INSTANCE = accessChecker;
        }

        private AccessChecker() {
        }

        public abstract boolean canAccess(AccessibleObject accessibleObject, Object obj);
    }

    private ReflectionAccessFilterHelper() {
    }

    public static boolean canAccess(AccessibleObject accessibleObject, Object obj) {
        return AccessChecker.INSTANCE.canAccess(accessibleObject, obj);
    }

    public static ReflectionAccessFilter.FilterResult getFilterResult(List<ReflectionAccessFilter> list, Class<?> cls) {
        Iterator<ReflectionAccessFilter> it = list.iterator();
        while (it.hasNext()) {
            ReflectionAccessFilter.FilterResult filterResultCheck = it.next().check(cls);
            if (filterResultCheck != ReflectionAccessFilter.FilterResult.INDECISIVE) {
                return filterResultCheck;
            }
        }
        return ReflectionAccessFilter.FilterResult.ALLOW;
    }

    private static boolean isAndroidType(String str) {
        return str.startsWith("android.") || str.startsWith("androidx.") || isJavaType(str);
    }

    public static boolean isAnyPlatformType(Class<?> cls) {
        String name = cls.getName();
        return isAndroidType(name) || name.startsWith("kotlin.") || name.startsWith("kotlinx.") || name.startsWith("scala.");
    }

    private static boolean isJavaType(String str) {
        return str.startsWith("java.") || str.startsWith("javax.");
    }

    public static boolean isJavaType(Class<?> cls) {
        return isJavaType(cls.getName());
    }

    public static boolean isAndroidType(Class<?> cls) {
        return isAndroidType(cls.getName());
    }
}
