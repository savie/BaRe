.class public abstract Lcom/microsoft/identity/common/java/util/HeaderSerializationUtil;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/google/gson/a;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/gson/a;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v2, v1, [Ljava/lang/reflect/Type;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const-class v4, Ljava/lang/String;

    .line 13
    .line 14
    aput-object v4, v2, v3

    .line 15
    .line 16
    const-class v5, Ljava/util/List;

    .line 17
    .line 18
    invoke-static {v5, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v5, 0x2

    .line 27
    new-array v5, v5, [Ljava/lang/reflect/Type;

    .line 28
    .line 29
    aput-object v4, v5, v3

    .line 30
    .line 31
    aput-object v2, v5, v1

    .line 32
    .line 33
    const-class v1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-static {v1, v5}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Ljava/io/StringReader;

    .line 48
    .line 49
    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/a;->b(Ljava/io/Reader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Ljava/util/HashMap;

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_0
    const-string p0, "jsonIn is marked non-null but is null"

    .line 60
    .line 61
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return-object p0
.end method
