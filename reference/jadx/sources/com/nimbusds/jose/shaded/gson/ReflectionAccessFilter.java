package com.nimbusds.jose.shaded.gson;

import com.nimbusds.jose.shaded.gson.internal.ReflectionAccessFilterHelper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface ReflectionAccessFilter {
    public static final ReflectionAccessFilter BLOCK_INACCESSIBLE_JAVA = new ReflectionAccessFilter() { // from class: com.nimbusds.jose.shaded.gson.ReflectionAccessFilter.1
        @Override // com.nimbusds.jose.shaded.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            return ReflectionAccessFilterHelper.isJavaType(cls) ? FilterResult.BLOCK_INACCESSIBLE : FilterResult.INDECISIVE;
        }

        public String toString() {
            return "ReflectionAccessFilter#BLOCK_INACCESSIBLE_JAVA";
        }
    };
    public static final ReflectionAccessFilter BLOCK_ALL_JAVA = new ReflectionAccessFilter() { // from class: com.nimbusds.jose.shaded.gson.ReflectionAccessFilter.2
        @Override // com.nimbusds.jose.shaded.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            return ReflectionAccessFilterHelper.isJavaType(cls) ? FilterResult.BLOCK_ALL : FilterResult.INDECISIVE;
        }

        public String toString() {
            return "ReflectionAccessFilter#BLOCK_ALL_JAVA";
        }
    };
    public static final ReflectionAccessFilter BLOCK_ALL_ANDROID = new ReflectionAccessFilter() { // from class: com.nimbusds.jose.shaded.gson.ReflectionAccessFilter.3
        @Override // com.nimbusds.jose.shaded.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            return ReflectionAccessFilterHelper.isAndroidType(cls) ? FilterResult.BLOCK_ALL : FilterResult.INDECISIVE;
        }

        public String toString() {
            return "ReflectionAccessFilter#BLOCK_ALL_ANDROID";
        }
    };
    public static final ReflectionAccessFilter BLOCK_ALL_PLATFORM = new ReflectionAccessFilter() { // from class: com.nimbusds.jose.shaded.gson.ReflectionAccessFilter.4
        @Override // com.nimbusds.jose.shaded.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            return ReflectionAccessFilterHelper.isAnyPlatformType(cls) ? FilterResult.BLOCK_ALL : FilterResult.INDECISIVE;
        }

        public String toString() {
            return "ReflectionAccessFilter#BLOCK_ALL_PLATFORM";
        }
    };

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum FilterResult {
        ALLOW,
        INDECISIVE,
        BLOCK_INACCESSIBLE,
        BLOCK_ALL
    }

    FilterResult check(Class<?> cls);
}
