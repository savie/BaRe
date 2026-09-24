.class public final Lcom/nimbusds/jose/shaded/gson/Gson;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/shaded/gson/Gson$FutureTypeAdapter;
    }
.end annotation


# static fields
.field static final DEFAULT_COMPLEX_MAP_KEYS:Z = false

.field static final DEFAULT_DATE_PATTERN:Ljava/lang/String;

.field static final DEFAULT_ESCAPE_HTML:Z = true

.field static final DEFAULT_FIELD_NAMING_STRATEGY:Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;

.field static final DEFAULT_FORMATTING_STYLE:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field static final DEFAULT_NUMBER_TO_NUMBER_STRATEGY:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

.field static final DEFAULT_OBJECT_TO_NUMBER_STRATEGY:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

.field static final DEFAULT_SERIALIZE_NULLS:Z = false

.field static final DEFAULT_SPECIALIZE_FLOAT_VALUES:Z = false

.field static final DEFAULT_STRICTNESS:Lcom/nimbusds/jose/shaded/gson/Strictness; = null

.field static final DEFAULT_USE_JDK_UNSAFE:Z = true

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"


# instance fields
.field final builderFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field final builderHierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field final complexMapKeySerialization:Z

.field private final constructorConstructor:Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;

.field final datePattern:Ljava/lang/String;

.field final dateStyle:I

.field final excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

.field final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field final fieldNamingStrategy:Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;

.field final formattingStyle:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

.field final generateNonExecutableJson:Z

.field final htmlSafe:Z

.field final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/nimbusds/jose/shaded/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final jsonAdapterFactory:Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field final longSerializationPolicy:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

.field final numberToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

.field final objectToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

.field final reflectionFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;",
            ">;"
        }
    .end annotation
.end field

.field final serializeNulls:Z

.field final serializeSpecialFloatingPointValues:Z

.field final strictness:Lcom/nimbusds/jose/shaded/gson/Strictness;

.field private final threadLocalAdapterResults:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "*>;",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field final timeStyle:I

.field private final typeTokenCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "*>;",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "*>;>;"
        }
    .end annotation
.end field

.field final useJdkUnsafe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/FormattingStyle;->COMPACT:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

    .line 2
    .line 3
    sput-object v0, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_FORMATTING_STYLE:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_DATE_PATTERN:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/FieldNamingPolicy;->IDENTITY:Lcom/nimbusds/jose/shaded/gson/FieldNamingPolicy;

    .line 9
    .line 10
    sput-object v0, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_FIELD_NAMING_STRATEGY:Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;

    .line 11
    .line 12
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/ToNumberPolicy;->DOUBLE:Lcom/nimbusds/jose/shaded/gson/ToNumberPolicy;

    .line 13
    .line 14
    sput-object v0, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_OBJECT_TO_NUMBER_STRATEGY:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 15
    .line 16
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lcom/nimbusds/jose/shaded/gson/ToNumberPolicy;

    .line 17
    .line 18
    sput-object v0, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_NUMBER_TO_NUMBER_STRATEGY:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 22

    .line 83
    sget-object v1, Lcom/nimbusds/jose/shaded/gson/internal/Excluder;->DEFAULT:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    sget-object v2, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_FIELD_NAMING_STRATEGY:Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;

    .line 84
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v8, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_FORMATTING_STYLE:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

    sget-object v9, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_STRICTNESS:Lcom/nimbusds/jose/shaded/gson/Strictness;

    sget-object v12, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;->DEFAULT:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    sget-object v13, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_DATE_PATTERN:Ljava/lang/String;

    .line 85
    sget-object v16, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 86
    sget-object v19, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_OBJECT_TO_NUMBER_STRATEGY:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    sget-object v20, Lcom/nimbusds/jose/shaded/gson/Gson;->DEFAULT_NUMBER_TO_NUMBER_STRATEGY:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x2

    move-object/from16 v17, v16

    move-object/from16 v18, v16

    move-object/from16 v21, v16

    move-object/from16 v0, p0

    .line 87
    invoke-direct/range {v0 .. v21}, Lcom/nimbusds/jose/shaded/gson/Gson;-><init>(Lcom/nimbusds/jose/shaded/gson/internal/Excluder;Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZLcom/nimbusds/jose/shaded/gson/FormattingStyle;Lcom/nimbusds/jose/shaded/gson/Strictness;ZZLcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/shaded/gson/internal/Excluder;Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZLcom/nimbusds/jose/shaded/gson/FormattingStyle;Lcom/nimbusds/jose/shaded/gson/Strictness;ZZLcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/shaded/gson/internal/Excluder;",
            "Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/nimbusds/jose/shaded/gson/InstanceCreator<",
            "*>;>;ZZZZ",
            "Lcom/nimbusds/jose/shaded/gson/FormattingStyle;",
            "Lcom/nimbusds/jose/shaded/gson/Strictness;",
            "ZZ",
            "Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;",
            ">;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;",
            ">;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;",
            ">;",
            "Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;",
            "Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;",
            ">;)V"
        }
    .end annotation

    move/from16 v1, p10

    move/from16 v2, p11

    move-object/from16 v3, p21

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v4, Ljava/lang/ThreadLocal;

    invoke-direct {v4}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v4, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->threadLocalAdapterResults:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->typeTokenCache:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 5
    iput-object p2, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->fieldNamingStrategy:Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;

    .line 6
    iput-object p3, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->instanceCreators:Ljava/util/Map;

    .line 7
    new-instance v4, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;

    invoke-direct {v4, p3, v2, v3}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    iput-object v4, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->constructorConstructor:Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;

    .line 8
    iput-boolean p4, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->serializeNulls:Z

    .line 9
    iput-boolean p5, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->complexMapKeySerialization:Z

    .line 10
    iput-boolean p6, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->generateNonExecutableJson:Z

    move/from16 p3, p7

    .line 11
    iput-boolean p3, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->htmlSafe:Z

    move-object/from16 p3, p8

    .line 12
    iput-object p3, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->formattingStyle:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

    move-object/from16 p3, p9

    .line 13
    iput-object p3, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->strictness:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 14
    iput-boolean v1, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->serializeSpecialFloatingPointValues:Z

    .line 15
    iput-boolean v2, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->useJdkUnsafe:Z

    move-object/from16 p3, p12

    .line 16
    iput-object p3, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->longSerializationPolicy:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    move-object/from16 v2, p13

    .line 17
    iput-object v2, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->datePattern:Ljava/lang/String;

    move/from16 v2, p14

    .line 18
    iput v2, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->dateStyle:I

    move/from16 v2, p15

    .line 19
    iput v2, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->timeStyle:I

    move-object/from16 v2, p16

    .line 20
    iput-object v2, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->builderFactories:Ljava/util/List;

    move-object/from16 v2, p17

    .line 21
    iput-object v2, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->builderHierarchyFactories:Ljava/util/List;

    move-object/from16 v2, p19

    .line 22
    iput-object v2, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->objectToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    move-object/from16 v5, p20

    .line 23
    iput-object v5, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->numberToNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 24
    iput-object v3, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->reflectionFilters:Ljava/util/List;

    .line 25
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 26
    sget-object v7, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {v2}, Lcom/nimbusds/jose/shaded/gson/internal/bind/ObjectTypeAdapter;->getFactory(Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p18

    .line 29
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    sget-object v2, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v2, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v2, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v2, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v2, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {p3}, Lcom/nimbusds/jose/shaded/gson/Gson;->longAdapter(Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    move-result-object p3

    .line 36
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/lang/Long;

    invoke-static {v2, v7, p3}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    const-class v2, Ljava/lang/Double;

    .line 38
    invoke-direct {p0, v1}, Lcom/nimbusds/jose/shaded/gson/Gson;->doubleAdapter(Z)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    move-result-object v7

    .line 39
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v2, v7}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    move-result-object v2

    .line 40
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-class v2, Ljava/lang/Float;

    .line 42
    invoke-direct {p0, v1}, Lcom/nimbusds/jose/shaded/gson/Gson;->floatAdapter(Z)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    move-result-object v1

    .line 43
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v2, v1}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    move-result-object v1

    .line 44
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {v5}, Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter;->getFactory(Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v1, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v1, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p3}, Lcom/nimbusds/jose/shaded/gson/Gson;->atomicLongAdapter(Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const-class v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 50
    invoke-static {p3}, Lcom/nimbusds/jose/shaded/gson/Gson;->atomicLongArrayAdapter(Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    move-result-object p3

    .line 51
    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-class p3, Ljava/math/BigDecimal;

    sget-object v1, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    invoke-static {p3, v1}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const-class p3, Ljava/math/BigInteger;

    sget-object v1, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    invoke-static {p3, v1}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const-class p3, Lcom/nimbusds/jose/shaded/gson/internal/LazilyParsedNumber;

    sget-object v1, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->LAZILY_PARSED_NUMBER:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 59
    invoke-static {p3, v1}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    move-result-object p3

    .line 60
    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->CURRENCY_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter;->DEFAULT_STYLE_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-boolean p3, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTypesSupport;->SUPPORTS_SQL_TYPES:Z

    if-eqz p3, :cond_0

    .line 71
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTypesSupport;->TIME_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTypesSupport;->DATE_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/CollectionTypeAdapterFactory;

    invoke-direct {p3, v4}, Lcom/nimbusds/jose/shaded/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;)V

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {p3, v4, p5}, Lcom/nimbusds/jose/shaded/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;Z)V

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance p3, Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-direct {p3, v4}, Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;)V

    iput-object p3, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->jsonAdapterFactory:Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 79
    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/internal/bind/ReflectiveTypeAdapterFactory;

    move-object p6, p1

    move-object p5, p2

    move-object/from16 p7, p3

    move-object p3, v0

    move-object/from16 p8, v3

    move-object p4, v4

    invoke-direct/range {p3 .. p8}, Lcom/nimbusds/jose/shaded/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;Lcom/nimbusds/jose/shaded/gson/internal/Excluder;Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;Ljava/util/List;)V

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->factories:Ljava/util/List;

    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->peek()Lcom/nimbusds/jose/shaded/gson/stream/JsonToken;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object p1, Lcom/nimbusds/jose/shaded/gson/stream/JsonToken;->END_DOCUMENT:Lcom/nimbusds/jose/shaded/gson/stream/JsonToken;

    .line 8
    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;

    .line 13
    .line 14
    const-string p1, "JSON document was not fully consumed."

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
    :try_end_0
    .catch Lcom/nimbusds/jose/shaded/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Lcom/nimbusds/jose/shaded/gson/JsonIOException;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/shaded/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :catch_1
    move-exception p0

    .line 28
    new-instance p1, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method private static atomicLongAdapter(Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/Gson$4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/gson/Gson$4;-><init>(Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;->nullSafe()Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static atomicLongArrayAdapter(Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/Gson$5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/gson/Gson$5;-><init>(Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;->nullSafe()Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static checkValidFloatingPoint(D)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method private doubleAdapter(Z)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/shaded/gson/Gson$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/shaded/gson/Gson$1;-><init>(Lcom/nimbusds/jose/shaded/gson/Gson;)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method private floatAdapter(Z)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/shaded/gson/Gson$2;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/shaded/gson/Gson$2;-><init>(Lcom/nimbusds/jose/shaded/gson/Gson;)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method private static longAdapter(Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;",
            ")",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;->DEFAULT:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->LONG:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p0, Lcom/nimbusds/jose/shaded/gson/Gson$3;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/Gson$3;-><init>()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public excluder()Lcom/nimbusds/jose/shaded/gson/internal/Excluder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->excluder:Lcom/nimbusds/jose/shaded/gson/internal/Excluder;

    .line 2
    .line 3
    return-object p0
.end method

.method public fieldNamingStrategy()Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->fieldNamingStrategy:Lcom/nimbusds/jose/shaded/gson/FieldNamingStrategy;

    .line 2
    .line 3
    return-object p0
.end method

.method public fromJson(Lcom/nimbusds/jose/shaded/gson/JsonElement;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/shaded/gson/JsonElement;",
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_0
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonTreeReader;-><init>(Lcom/nimbusds/jose/shaded/gson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->fromJson(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fromJson(Lcom/nimbusds/jose/shaded/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/shaded/gson/JsonElement;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    .line 119
    invoke-static {p2}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nimbusds/jose/shaded/gson/Gson;->fromJson(Lcom/nimbusds/jose/shaded/gson/JsonElement;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    .line 120
    invoke-static {p2}, Lcom/nimbusds/jose/shaded/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fromJson(Lcom/nimbusds/jose/shaded/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/shaded/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    .line 121
    invoke-static {p2}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->fromJson(Lcom/nimbusds/jose/shaded/gson/JsonElement;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fromJson(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;",
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonIOException;,
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    .line 1
    const-string v0, "AssertionError (GSON 2.12.1): "

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->getStrictness()Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->strictness:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->getStrictness()Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lcom/nimbusds/jose/shaded/gson/Strictness;->LEGACY_STRICT:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 20
    .line 21
    if-ne v2, v3, :cond_1

    .line 22
    .line 23
    sget-object v2, Lcom/nimbusds/jose/shaded/gson/Strictness;->LENIENT:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->peek()Lcom/nimbusds/jose/shaded/gson/stream/JsonToken;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->getAdapter(Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;->read(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_5

    .line 46
    :catch_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception p0

    .line 49
    goto :goto_2

    .line 50
    :catch_2
    move-exception p0

    .line 51
    goto :goto_3

    .line 52
    :catch_3
    move-exception p0

    .line 53
    goto :goto_4

    .line 54
    :goto_1
    :try_start_2
    new-instance p2, Ljava/lang/AssertionError;

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p2, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw p2

    .line 76
    :goto_2
    new-instance p2, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;

    .line 77
    .line 78
    invoke-direct {p2, p0}, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p2

    .line 82
    :goto_3
    new-instance p2, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;

    .line 83
    .line 84
    invoke-direct {p2, p0}, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :catch_4
    move-exception p0

    .line 89
    const/4 v2, 0x1

    .line 90
    :goto_4
    if-eqz v2, :cond_2

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x0

    .line 96
    return-object p0

    .line 97
    :cond_2
    :try_start_3
    new-instance p2, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;

    .line 98
    .line 99
    invoke-direct {p2, p0}, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    :goto_5
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 104
    .line 105
    .line 106
    throw p0
.end method

.method public fromJson(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonIOException;,
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    .line 116
    invoke-static {p2}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->fromJson(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fromJson(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonIOException;,
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;

    move-result-object p1

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->fromJson(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    .line 115
    invoke-static {p0, p1}, Lcom/nimbusds/jose/shaded/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)V

    return-object p0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;,
            Lcom/nimbusds/jose/shaded/gson/JsonIOException;
        }
    .end annotation

    .line 110
    invoke-static {p2}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nimbusds/jose/shaded/gson/Gson;->fromJson(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    .line 111
    invoke-static {p2}, Lcom/nimbusds/jose/shaded/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonIOException;,
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    .line 112
    invoke-static {p2}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->fromJson(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fromJson(Ljava/lang/String;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v0, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->fromJson(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    .line 117
    invoke-static {p2}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nimbusds/jose/shaded/gson/Gson;->fromJson(Ljava/lang/String;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    .line 118
    invoke-static {p2}, Lcom/nimbusds/jose/shaded/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    .line 107
    invoke-static {p2}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->fromJson(Ljava/lang/String;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter(Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-string v0, "type must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->typeTokenCache:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->threadLocalAdapterResults:Ljava/lang/ThreadLocal;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->threadLocalAdapterResults:Ljava/lang/ThreadLocal;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_2
    const/4 v1, 0x0

    .line 49
    :goto_0
    :try_start_0
    new-instance v2, Lcom/nimbusds/jose/shaded/gson/Gson$FutureTypeAdapter;

    .line 50
    .line 51
    invoke-direct {v2}, Lcom/nimbusds/jose/shaded/gson/Gson$FutureTypeAdapter;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->factories:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x0

    .line 64
    move-object v5, v4

    .line 65
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_4

    .line 70
    .line 71
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 76
    .line 77
    invoke-interface {v5, p0, p1}, Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;->create(Lcom/nimbusds/jose/shaded/gson/Gson;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    if-eqz v5, :cond_3

    .line 82
    .line 83
    invoke-virtual {v2, v5}, Lcom/nimbusds/jose/shaded/gson/Gson$FutureTypeAdapter;->setDelegate(Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 93
    .line 94
    iget-object v2, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->threadLocalAdapterResults:Ljava/lang/ThreadLocal;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 97
    .line 98
    .line 99
    :cond_5
    if-eqz v5, :cond_7

    .line 100
    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->typeTokenCache:Ljava/util/concurrent/ConcurrentMap;

    .line 104
    .line 105
    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    return-object v5

    .line 109
    :cond_7
    const-string p0, "GSON (2.12.1) cannot handle "

    .line 110
    .line 111
    invoke-static {p1, p0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v4

    .line 115
    :goto_2
    if-eqz v1, :cond_8

    .line 116
    .line 117
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->threadLocalAdapterResults:Ljava/lang/ThreadLocal;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    .line 120
    .line 121
    .line 122
    :cond_8
    throw p1
.end method

.method public getAdapter(Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 123
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/gson/Gson;->getAdapter(Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getDelegateAdapter(Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;",
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-string v0, "skipPast must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "type must not be null"

    .line 7
    .line 8
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->jsonAdapterFactory:Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 12
    .line 13
    invoke-virtual {v0, p2, p1}, Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->isClassJsonAdapterFactory(Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->jsonAdapterFactory:Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->factories:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    if-ne v2, p1, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;->create(Lcom/nimbusds/jose/shaded/gson/Gson;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_3
    if-nez v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->getAdapter(Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_4
    const-string p0, "GSON cannot serialize or deserialize "

    .line 61
    .line 62
    invoke-static {p2, p0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    return-object p0
.end method

.method public htmlSafe()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->htmlSafe:Z

    .line 2
    .line 3
    return p0
.end method

.method public newBuilder()Lcom/nimbusds/jose/shaded/gson/GsonBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;-><init>(Lcom/nimbusds/jose/shaded/gson/Gson;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public newJsonReader(Ljava/io/Reader;)Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;
    .locals 1

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->strictness:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lcom/nimbusds/jose/shaded/gson/Strictness;->LEGACY_STRICT:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public newJsonWriter(Ljava/io/Writer;)Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->generateNonExecutableJson:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, ")]}\'\n"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->formattingStyle:Lcom/nimbusds/jose/shaded/gson/FormattingStyle;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setFormattingStyle(Lcom/nimbusds/jose/shaded/gson/FormattingStyle;)V

    .line 18
    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->htmlSafe:Z

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->strictness:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    sget-object p1, Lcom/nimbusds/jose/shaded/gson/Strictness;->LEGACY_STRICT:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 32
    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->serializeNulls:Z

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public serializeNulls()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->serializeNulls:Z

    .line 2
    .line 3
    return p0
.end method

.method public toJson(Lcom/nimbusds/jose/shaded/gson/JsonElement;)Ljava/lang/String;
    .locals 1

    .line 119
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/nimbusds/jose/shaded/gson/Gson;->toJson(Lcom/nimbusds/jose/shaded/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 117
    sget-object p1, Lcom/nimbusds/jose/shaded/gson/JsonNull;->INSTANCE:Lcom/nimbusds/jose/shaded/gson/JsonNull;

    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/gson/Gson;->toJson(Lcom/nimbusds/jose/shaded/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nimbusds/jose/shaded/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 109
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 110
    invoke-virtual {p0, p1, p2, v0}, Lcom/nimbusds/jose/shaded/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toJson(Lcom/nimbusds/jose/shaded/gson/JsonElement;Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonIOException;
        }
    .end annotation

    .line 125
    const-string v0, "AssertionError (GSON 2.12.1): "

    invoke-virtual {p2}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->getStrictness()Lcom/nimbusds/jose/shaded/gson/Strictness;

    move-result-object v1

    .line 126
    invoke-virtual {p2}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    .line 127
    invoke-virtual {p2}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    .line 128
    iget-boolean v4, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v4}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 129
    iget-boolean v4, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, v4}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 130
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->strictness:Lcom/nimbusds/jose/shaded/gson/Strictness;

    if-eqz p0, :cond_0

    .line 131
    invoke-virtual {p2, p0}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p2}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->getStrictness()Lcom/nimbusds/jose/shaded/gson/Strictness;

    move-result-object p0

    sget-object v4, Lcom/nimbusds/jose/shaded/gson/Strictness;->LEGACY_STRICT:Lcom/nimbusds/jose/shaded/gson/Strictness;

    if-ne p0, v4, :cond_1

    .line 133
    sget-object p0, Lcom/nimbusds/jose/shaded/gson/Strictness;->LENIENT:Lcom/nimbusds/jose/shaded/gson/Strictness;

    invoke-virtual {p2, p0}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 134
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/nimbusds/jose/shaded/gson/internal/Streams;->write(Lcom/nimbusds/jose/shaded/gson/JsonElement;Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {p2, v1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 136
    invoke-virtual {p2, v2}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 137
    invoke-virtual {p2, v3}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 138
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 140
    new-instance p1, Lcom/nimbusds/jose/shaded/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/nimbusds/jose/shaded/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :goto_1
    invoke-virtual {p2, v1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 142
    invoke-virtual {p2, v2}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 143
    invoke-virtual {p2, v3}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 144
    throw p0
.end method

.method public toJson(Lcom/nimbusds/jose/shaded/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonIOException;
        }
    .end annotation

    .line 122
    :try_start_0
    invoke-static {p2}, Lcom/nimbusds/jose/shaded/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;

    move-result-object p2

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->toJson(Lcom/nimbusds/jose/shaded/gson/JsonElement;Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 124
    new-instance p1, Lcom/nimbusds/jose/shaded/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/nimbusds/jose/shaded/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonIOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    return-void

    .line 113
    :cond_0
    sget-object p1, Lcom/nimbusds/jose/shaded/gson/JsonNull;->INSTANCE:Lcom/nimbusds/jose/shaded/gson/JsonNull;

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->toJson(Lcom/nimbusds/jose/shaded/gson/JsonElement;Ljava/lang/Appendable;)V

    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonIOException;
        }
    .end annotation

    .line 1
    const-string v0, "AssertionError (GSON 2.12.1): "

    .line 2
    .line 3
    invoke-static {p2}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->getAdapter(Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p3}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->getStrictness()Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->strictness:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p3, v2}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p3}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->getStrictness()Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Lcom/nimbusds/jose/shaded/gson/Strictness;->LEGACY_STRICT:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 28
    .line 29
    if-ne v2, v3, :cond_1

    .line 30
    .line 31
    sget-object v2, Lcom/nimbusds/jose/shaded/gson/Strictness;->LENIENT:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 32
    .line 33
    invoke-virtual {p3, v2}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->isHtmlSafe()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p3}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->getSerializeNulls()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget-boolean v4, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->htmlSafe:Z

    .line 45
    .line 46
    invoke-virtual {p3, v4}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 47
    .line 48
    .line 49
    iget-boolean p0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->serializeNulls:Z

    .line 50
    .line 51
    invoke-virtual {p3, p0}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 52
    .line 53
    .line 54
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;->write(Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, v2}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, v3}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception p0

    .line 70
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 71
    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :catch_1
    move-exception p0

    .line 93
    new-instance p1, Lcom/nimbusds/jose/shaded/gson/JsonIOException;

    .line 94
    .line 95
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/shaded/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :goto_1
    invoke-virtual {p3, v1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, v2}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, v3}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 106
    .line 107
    .line 108
    throw p0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonIOException;
        }
    .end annotation

    .line 114
    :try_start_0
    invoke-static {p3}, Lcom/nimbusds/jose/shaded/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/nimbusds/jose/shaded/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;

    move-result-object p3

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Lcom/nimbusds/jose/shaded/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 116
    new-instance p1, Lcom/nimbusds/jose/shaded/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/nimbusds/jose/shaded/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toJsonTree(Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/nimbusds/jose/shaded/gson/JsonNull;->INSTANCE:Lcom/nimbusds/jose/shaded/gson/JsonNull;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/nimbusds/jose/shaded/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 1

    .line 15
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 16
    invoke-virtual {p0, p1, p2, v0}, Lcom/nimbusds/jose/shaded/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;)V

    .line 17
    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/JsonTreeWriter;->get()Lcom/nimbusds/jose/shaded/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{serializeNulls:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->serializeNulls:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",factories:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->factories:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",instanceCreators:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/Gson;->constructorConstructor:Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, "}"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
