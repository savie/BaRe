package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum u65 implements rq1 {
    USE_ANNOTATIONS(true),
    /* JADX INFO: Fake field, exist only in values array */
    APPLY_DEFAULT_VALUES(true),
    PROPAGATE_TRANSIENT_MARKER(false),
    AUTO_DETECT_CREATORS(true),
    AUTO_DETECT_FIELDS(true),
    AUTO_DETECT_GETTERS(true),
    AUTO_DETECT_IS_GETTERS(true),
    AUTO_DETECT_SETTERS(true),
    REQUIRE_SETTERS_FOR_GETTERS(false),
    /* JADX INFO: Fake field, exist only in values array */
    ALLOW_FINAL_FIELDS_AS_MUTATORS(true),
    INFER_PROPERTY_MUTATORS(true),
    INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES(true),
    ALLOW_IS_GETTERS_FOR_NON_BOOLEAN(false),
    ALLOW_VOID_VALUED_PROPERTIES(false),
    CAN_OVERRIDE_ACCESS_MODIFIERS(true),
    OVERRIDE_PUBLIC_ACCESS_MODIFIERS(true),
    INVERSE_READ_WRITE_ACCESS(false),
    USE_STATIC_TYPING(false),
    /* JADX INFO: Fake field, exist only in values array */
    IGNORE_DUPLICATE_MODULE_REGISTRATIONS(false),
    /* JADX INFO: Fake field, exist only in values array */
    APPLY_DEFAULT_VALUES(true),
    /* JADX INFO: Fake field, exist only in values array */
    REQUIRE_TYPE_ID_FOR_SUBTYPES(true),
    DEFAULT_VIEW_INCLUSION(true),
    SORT_PROPERTIES_ALPHABETICALLY(false),
    SORT_CREATOR_PROPERTIES_FIRST(true),
    SORT_CREATOR_PROPERTIES_BY_DECLARATION_ORDER(false),
    ACCEPT_CASE_INSENSITIVE_PROPERTIES(false),
    /* JADX INFO: Fake field, exist only in values array */
    APPLY_DEFAULT_VALUES(false),
    ACCEPT_CASE_INSENSITIVE_VALUES(false),
    USE_WRAPPER_NAME_AS_PROPERTY_NAME(false),
    USE_STD_BEAN_NAMING(false),
    /* JADX INFO: Fake field, exist only in values array */
    APPLY_DEFAULT_VALUES(false),
    FIX_FIELD_NAME_UPPER_CASE_PREFIX(false),
    /* JADX INFO: Fake field, exist only in values array */
    APPLY_DEFAULT_VALUES(true),
    /* JADX INFO: Fake field, exist only in values array */
    IGNORE_DUPLICATE_MODULE_REGISTRATIONS(true),
    /* JADX INFO: Fake field, exist only in values array */
    APPLY_DEFAULT_VALUES(true),
    BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES(false),
    /* JADX INFO: Fake field, exist only in values array */
    APPLY_DEFAULT_VALUES(true),
    REQUIRE_HANDLERS_FOR_JAVA8_OPTIONALS(true),
    REQUIRE_HANDLERS_FOR_JAVA8_TIMES(true);

    public final boolean a;
    public final long b = 1 << ordinal();

    u65(boolean z) {
        this.a = z;
    }

    @Override // defpackage.rq1
    public final boolean a() {
        return this.a;
    }

    @Override // defpackage.rq1
    public final int b() {
        return (int) this.b;
    }
}
