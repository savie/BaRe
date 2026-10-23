.class public final Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/nimbusds/jose/shaded/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final reflectionFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final useJdkUnsafe:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/nimbusds/jose/shaded/gson/InstanceCreator<",
            "*>;>;Z",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->useJdkUnsafe:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->reflectionFilters:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newDefaultConstructor$6(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newDefaultImplementationConstructor$15()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c(Lcom/nimbusds/jose/shaded/gson/InstanceCreator;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$get$0(Lcom/nimbusds/jose/shaded/gson/InstanceCreator;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static checkInstantiable(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: "

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Abstract classes can\'t be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p0, "\nSee "

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, "r8-abstract-class"

    .line 48
    .line 49
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/TroubleshootingGuide;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_1
    const/4 p0, 0x0

    .line 62
    return-object p0
.end method

.method public static synthetic d(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newSpecialCollectionConstructor$5(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newDefaultConstructor$8(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newDefaultConstructor$7(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newSpecialCollectionConstructor$4(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newDefaultImplementationConstructor$13()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic i(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$get$3(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/nimbusds/jose/shaded/gson/InstanceCreator;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$get$1(Lcom/nimbusds/jose/shaded/gson/InstanceCreator;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newDefaultImplementationConstructor$9()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic l(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$get$2(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$get$0(Lcom/nimbusds/jose/shaded/gson/InstanceCreator;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/nimbusds/jose/shaded/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$get$1(Lcom/nimbusds/jose/shaded/gson/InstanceCreator;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/nimbusds/jose/shaded/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$get$2(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/JsonIOException;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method private static synthetic lambda$get$3(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/JsonIOException;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method private static synthetic lambda$newDefaultConstructor$6(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/JsonIOException;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method private static synthetic lambda$newDefaultConstructor$7(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/JsonIOException;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method private static synthetic lambda$newDefaultConstructor$8(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 5

    .line 1
    const-string v0, "\' with no args"

    .line 2
    .line 3
    const-string v1, "Failed to invoke constructor \'"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/reflect/ReflectionHelper;->createExceptionForUnexpectedIllegalAccess(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    throw p0

    .line 17
    :catch_1
    move-exception v3

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p0, v0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :catch_2
    move-exception v2

    .line 46
    new-instance v3, Ljava/lang/RuntimeException;

    .line 47
    .line 48
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-direct {v3, p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw v3
.end method

.method private static synthetic lambda$newDefaultImplementationConstructor$10()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic lambda$newDefaultImplementationConstructor$11()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic lambda$newDefaultImplementationConstructor$12()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic lambda$newDefaultImplementationConstructor$13()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic lambda$newDefaultImplementationConstructor$14()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic lambda$newDefaultImplementationConstructor$15()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic lambda$newDefaultImplementationConstructor$16()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic lambda$newDefaultImplementationConstructor$17()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic lambda$newDefaultImplementationConstructor$9()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic lambda$newSpecialCollectionConstructor$4(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Invalid EnumSet type: "

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v3, 0x0

    .line 16
    aget-object v0, v0, v3

    .line 17
    .line 18
    instance-of v3, v0, Ljava/lang/Class;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    check-cast v0, Ljava/lang/Class;

    .line 23
    .line 24
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    invoke-static {p0, v2}, Lf6;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_1
    invoke-static {p0, v2}, Lf6;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v1
.end method

.method private static synthetic lambda$newSpecialCollectionConstructor$5(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Invalid EnumMap type: "

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v3, 0x0

    .line 16
    aget-object v0, v0, v3

    .line 17
    .line 18
    instance-of v3, v0, Ljava/lang/Class;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    new-instance p0, Ljava/util/EnumMap;

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Class;

    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    invoke-static {p0, v2}, Lf6;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_1
    invoke-static {p0, v2}, Lf6;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method

.method private static synthetic lambda$newUnsafeAllocator$18(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/internal/UnsafeAllocator;->INSTANCE:Lcom/nimbusds/jose/shaded/gson/internal/UnsafeAllocator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/shaded/gson/internal/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const-string v1, "Unable to create instance of "

    .line 10
    .line 11
    const-string v2, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."

    .line 12
    .line 13
    invoke-static {p0, v1, v2}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0, v0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method private static synthetic lambda$newUnsafeAllocator$19(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/JsonIOException;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public static synthetic m()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newDefaultImplementationConstructor$16()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic n(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newUnsafeAllocator$18(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static newDefaultConstructor(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$FilterResult;)Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;",
            "Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$FilterResult;",
            ")",
            "Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    sget-object v2, Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$FilterResult;->ALLOW:Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$FilterResult;

    .line 18
    .line 19
    if-eq p1, v2, :cond_2

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/nimbusds/jose/shaded/gson/internal/ReflectionAccessFilterHelper;->canAccess(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    sget-object v1, Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$FilterResult;->BLOCK_ALL:Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$FilterResult;

    .line 28
    .line 29
    if-ne p1, v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string p1, "Unable to invoke no-args constructor of "

    .line 43
    .line 44
    const-string v0, "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter."

    .line 45
    .line 46
    invoke-static {p0, p1, v0}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance p1, Ler1;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Ler1;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_2
    :goto_0
    if-ne p1, v2, :cond_3

    .line 57
    .line 58
    invoke-static {v0}, Lcom/nimbusds/jose/shaded/gson/internal/reflect/ReflectionHelper;->tryMakeAccessible(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    new-instance p1, Ltt1;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-direct {p1, p0, v0}, Ltt1;-><init>(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_3
    new-instance p0, Lfs;

    .line 72
    .line 73
    const/4 p1, 0x3

    .line 74
    invoke-direct {p0, v0, p1}, Lfs;-><init>(Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :catch_0
    return-object v1
.end method

.method private static newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/Collection;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    const-class p0, Ljava/util/SortedSet;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    new-instance p0, Lz5;

    .line 18
    .line 19
    const/4 p1, 0x4

    .line 20
    invoke-direct {p0, p1}, Lz5;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const-class p0, Ljava/util/Set;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    const/4 v0, 0x3

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    new-instance p0, Lb6;

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lb6;-><init>(I)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_1
    const-class p0, Ljava/util/Queue;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    new-instance p0, Lc6;

    .line 48
    .line 49
    invoke-direct {p0, v0}, Lc6;-><init>(I)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_2
    new-instance p0, Ld6;

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_3
    const-class v0, Ljava/util/Map;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_8

    .line 66
    .line 67
    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    new-instance p0, Le6;

    .line 76
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_4
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    new-instance p0, Lf6;

    .line 90
    .line 91
    const/4 p1, 0x6

    .line 92
    invoke-direct {p0, p1}, Lf6;-><init>(I)V

    .line 93
    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_5
    const-class v0, Ljava/util/SortedMap;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    new-instance p0, Ll0;

    .line 105
    .line 106
    const/4 p1, 0x5

    .line 107
    invoke-direct {p0, p1}, Ll0;-><init>(I)V

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_6
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    .line 112
    .line 113
    if-eqz p1, :cond_7

    .line 114
    .line 115
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 116
    .line 117
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const/4 p1, 0x0

    .line 122
    aget-object p0, p0, p1

    .line 123
    .line 124
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    const-class p1, Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-nez p0, :cond_7

    .line 139
    .line 140
    new-instance p0, Lm0;

    .line 141
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    .line 144
    .line 145
    return-object p0

    .line 146
    :cond_7
    new-instance p0, Lx5;

    .line 147
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    .line 150
    .line 151
    return-object p0

    .line 152
    :cond_8
    const/4 p0, 0x0

    .line 153
    return-object p0
.end method

.method private static newSpecialCollectionConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/EnumSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Le11;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p1, p0, v0}, Le11;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    const-class v0, Ljava/util/EnumMap;

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    new-instance p1, Lfs;

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-direct {p1, p0, v0}, Lfs;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method private newUnsafeAllocator(Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-boolean p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->useJdkUnsafe:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lgb;

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-direct {p0, p1, v0}, Lgb;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "Unable to create instance of "

    .line 13
    .line 14
    const-string v0, "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem."

    .line 15
    .line 16
    invoke-static {p1, p0, v0}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    array-length p1, p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    const-string p1, " Or adjust your R8 configuration to keep the no-args constructor of the class."

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_1
    new-instance p1, Lrn1;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-direct {p1, p0, v0}, Lrn1;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    return-object p1
.end method

.method public static synthetic o()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newDefaultImplementationConstructor$12()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic p()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newDefaultImplementationConstructor$17()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic q()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newDefaultImplementationConstructor$11()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic r(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newUnsafeAllocator$19(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newDefaultImplementationConstructor$10()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic t()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->lambda$newDefaultImplementationConstructor$14()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public get(Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/nimbusds/jose/shaded/gson/InstanceCreator;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance p0, Lno1;

    .line 20
    .line 21
    invoke-direct {p0, v1, v0}, Lno1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/nimbusds/jose/shaded/gson/InstanceCreator;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    new-instance p0, Ljq0;

    .line 37
    .line 38
    invoke-direct {p0, v2, v1, v0}, Ljq0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    invoke-static {v0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->newSpecialCollectionConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->reflectionFilters:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {v1, p1}, Lcom/nimbusds/jose/shaded/gson/internal/ReflectionAccessFilterHelper;->getFilterResult(Ljava/util/List;Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$FilterResult;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {p1, v1}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->newDefaultConstructor(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$FilterResult;)Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    return-object v3

    .line 62
    :cond_3
    invoke-static {v0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_4
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->checkInstantiable(Ljava/lang/Class;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    new-instance p0, Ltt1;

    .line 76
    .line 77
    invoke-direct {p0, v0, v2}, Ltt1;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_5
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$FilterResult;->ALLOW:Lcom/nimbusds/jose/shaded/gson/ReflectionAccessFilter$FilterResult;

    .line 82
    .line 83
    if-ne v1, v0, :cond_6

    .line 84
    .line 85
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_6
    const-string p0, "Unable to create instance of "

    .line 91
    .line 92
    const-string v0, "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection."

    .line 93
    .line 94
    invoke-static {p1, p0, v0}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    new-instance p1, Le11;

    .line 99
    .line 100
    const/4 v0, 0x2

    .line 101
    invoke-direct {p1, p0, v0}, Le11;-><init>(Ljava/lang/Object;I)V

    .line 102
    .line 103
    .line 104
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
