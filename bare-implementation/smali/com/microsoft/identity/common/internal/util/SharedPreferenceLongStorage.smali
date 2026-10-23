.class public final Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;
.super Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->mManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-wide/16 p0, 0x0

    .line 21
    .line 22
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    const-string p0, "name is marked non-null but is null"

    .line 28
    .line 29
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final getAllFilteredByKey(Lcom/microsoft/identity/common/java/util/ported/Predicate;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/util/ported/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;-><init>(Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;Lcom/microsoft/identity/common/java/util/ported/Predicate;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->mManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p2, p1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
