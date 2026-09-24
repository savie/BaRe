.class public abstract Lcom/microsoft/identity/common/adal/internal/util/JsonExtensions;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static getICacheRecordListFromJsonString(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt14;

    .line 2
    .line 3
    invoke-direct {v0}, Lt14;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/microsoft/identity/common/internal/util/ICacheRecordGsonAdapter;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/util/ICacheRecordGsonAdapter;-><init>()V

    .line 9
    .line 10
    .line 11
    const-class v2, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Ljava/lang/reflect/Type;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object v2, v1, v3

    .line 21
    .line 22
    const-class v2, Ljava/util/List;

    .line 23
    .line 24
    invoke-static {v2, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lcom/google/gson/a;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Lcom/google/gson/a;-><init>(Lt14;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez p0, :cond_0

    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v1, Ljava/io/StringReader;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1, v0}, Lcom/google/gson/a;->b(Ljava/io/Reader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :goto_0
    check-cast p0, Ljava/util/List;

    .line 55
    .line 56
    return-object p0
.end method
