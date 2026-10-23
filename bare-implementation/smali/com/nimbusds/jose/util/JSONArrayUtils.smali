.class public Lcom/nimbusds/jose/util/JSONArrayUtils;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final GSON:Lcom/nimbusds/jose/shaded/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/nimbusds/jose/shaded/gson/Strictness;->STRICT:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->serializeNulls()Lcom/nimbusds/jose/shaded/gson/GsonBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/nimbusds/jose/shaded/gson/ToNumberPolicy;->LONG_OR_DOUBLE:Lcom/nimbusds/jose/shaded/gson/ToNumberPolicy;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->setObjectToNumberStrategy(Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;)Lcom/nimbusds/jose/shaded/gson/GsonBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->disableHtmlEscaping()Lcom/nimbusds/jose/shaded/gson/GsonBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/gson/GsonBuilder;->create()Lcom/nimbusds/jose/shaded/gson/Gson;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/nimbusds/jose/util/JSONArrayUtils;->GSON:Lcom/nimbusds/jose/shaded/gson/Gson;

    .line 31
    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newJSONArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

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

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "Invalid JSON array"

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    new-array v2, v2, [Ljava/lang/reflect/Type;

    .line 19
    .line 20
    const-class v4, Ljava/lang/Object;

    .line 21
    .line 22
    aput-object v4, v2, v1

    .line 23
    .line 24
    const-class v4, Ljava/util/List;

    .line 25
    .line 26
    invoke-static {v4, v2}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :try_start_0
    sget-object v4, Lcom/nimbusds/jose/util/JSONArrayUtils;->GSON:Lcom/nimbusds/jose/shaded/gson/Gson;

    .line 35
    .line 36
    invoke-virtual {v4, p0, v2}, Lcom/nimbusds/jose/shaded/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    return-object p0

    .line 43
    :catch_0
    const-string p0, "Excessive JSON object and / or array nesting"

    .line 44
    .line 45
    invoke-static {v1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :catch_1
    invoke-static {v1, v3}, Ly5;->e(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_0
    invoke-static {v1, v3}, Ly5;->e(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_1
    const-string p0, "The JSON array string must not be null"

    .line 58
    .line 59
    invoke-static {v1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public static toJSONString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/util/JSONArrayUtils;->GSON:Lcom/nimbusds/jose/shaded/gson/Gson;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/shaded/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
