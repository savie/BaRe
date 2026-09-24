.class Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1;
.super Lcom/google/gson/b;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/b;"
    }
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/google/gson/b;


# direct methods
.method public constructor <init>(Lcom/google/gson/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1;->val$adapter:Lcom/google/gson/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final read(Ltl4;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltl4;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$1;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$1;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;

    .line 12
    .line 13
    invoke-direct {v2, v1, p1, v0}, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;-><init>(Ljava/io/Reader;Ltl4;Ljava/util/LinkedHashMap;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1;->val$adapter:Lcom/google/gson/b;

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lcom/google/gson/b;->read(Ltl4;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    move-object p1, p0

    .line 23
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/IHasExtraParameters;

    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/IHasExtraParameters;->setExtraParameters(Ljava/lang/Iterable;)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method public final write(Lnn4;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnn4;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1;->val$adapter:Lcom/google/gson/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/b;->write(Lnn4;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
