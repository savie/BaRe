.class final Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;
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
        "Ljava/lang/String;",
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

.field nextEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

.field final synthetic val$keyFilter:Lcom/microsoft/identity/common/java/util/ported/Predicate;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;Ljava/util/Map;Lcom/microsoft/identity/common/java/util/ported/Predicate;)V
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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->this$0:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->val$keyFilter:Lcom/microsoft/identity/common/java/util/ported/Predicate;

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->iterator:Ljava/util/Iterator;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->nextEntry:Ljava/util/Map$Entry;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->nextEntry:Ljava/util/Map$Entry;

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
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->iterator:Ljava/util/Iterator;

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
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v5, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->val$keyFilter:Lcom/microsoft/identity/common/java/util/ported/Predicate;

    .line 30
    .line 31
    invoke-interface {v5, v4}, Lcom/microsoft/identity/common/java/util/ported/Predicate;->test(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_4

    .line 36
    .line 37
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->this$0:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 38
    .line 39
    invoke-static {v4}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->access$000(Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;)Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    if-eqz v5, :cond_3

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v5}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    :try_start_0
    invoke-static {v4}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->access$000(Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;)Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    invoke-static {v4}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_4

    .line 71
    .line 72
    new-instance v5, Ljava/util/AbstractMap$SimpleEntry;

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {v5, v2, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iput-object v5, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->nextEntry:Ljava/util/Map$Entry;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    sget v2, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->a:I

    .line 87
    .line 88
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 89
    .line 90
    const-string v2, "SharedPreferencesFileManager:getAllFilteredByKey"

    .line 91
    .line 92
    const-string v4, "Failed to decrypt value"

    .line 93
    .line 94
    const/4 v5, 0x0

    .line 95
    invoke-static {v2, v4, v5}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    iput-object v2, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->nextEntry:Ljava/util/Map$Entry;

    .line 100
    .line 101
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->nextEntry:Ljava/util/Map$Entry;

    .line 102
    .line 103
    if-nez v2, :cond_5

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_1

    .line 110
    .line 111
    :cond_5
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->nextEntry:Ljava/util/Map$Entry;

    .line 112
    .line 113
    if-eqz p0, :cond_6

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    move v1, v3

    .line 117
    :goto_1
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->nextEntry:Ljava/util/Map$Entry;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->hasNext()Z

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
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->nextEntry:Ljava/util/Map$Entry;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;->nextEntry:Ljava/util/Map$Entry;

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
    const-string v0, "Removal is not supported"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
