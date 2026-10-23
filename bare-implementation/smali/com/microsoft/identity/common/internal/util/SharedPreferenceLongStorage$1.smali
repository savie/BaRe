.class final Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field nextEntry:Ljava/util/AbstractMap$SimpleEntry;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;Lcom/microsoft/identity/common/java/util/ported/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->mManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->getAllFilteredByKey(Lcom/microsoft/identity/common/java/util/ported/Predicate;)Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->iterator:Ljava/util/Iterator;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/AbstractMap$SimpleEntry;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/AbstractMap$SimpleEntry;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->iterator:Ljava/util/Iterator;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    return v3

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/util/Map$Entry;

    .line 22
    .line 23
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    new-instance v6, Ljava/util/AbstractMap$SimpleEntry;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-direct {v6, v2, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput-object v6, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/AbstractMap$SimpleEntry;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    const/4 v2, 0x0

    .line 52
    iput-object v2, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/AbstractMap$SimpleEntry;

    .line 53
    .line 54
    :goto_0
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/AbstractMap$SimpleEntry;

    .line 55
    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    :cond_2
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/AbstractMap$SimpleEntry;

    .line 65
    .line 66
    if-eqz p0, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move v1, v3

    .line 70
    :goto_1
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/AbstractMap$SimpleEntry;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lm0;->d()V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/AbstractMap$SimpleEntry;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/AbstractMap$SimpleEntry;

    .line 21
    .line 22
    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Removal of elements is not supported"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
