.class final Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;
.super Ltl4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field lastName:Ljava/lang/String;

.field final synthetic val$in:Ltl4;

.field final synthetic val$otherKeys:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ltl4;Ljava/util/LinkedHashMap;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$otherKeys:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ltl4;-><init>(Ljava/io/Reader;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->lastName:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final beginArray()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltl4;->beginArray()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final beginObject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltl4;->beginObject()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltl4;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final endArray()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltl4;->endArray()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final endObject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltl4;->endObject()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltl4;->getPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final hasNext()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltl4;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final nextBoolean()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltl4;->nextBoolean()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final nextDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltl4;->nextDouble()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final nextInt()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltl4;->nextInt()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final nextLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltl4;->nextLong()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final nextName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ltl4;->nextName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->lastName:Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final nextNull()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltl4;->nextNull()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final nextString()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltl4;->nextString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final peek()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltl4;->peek()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final skipValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ltl4;->peek()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x6

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->lastName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Ltl4;->nextString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$otherKeys:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {v0}, Ltl4;->skipValue()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Ltl4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltl4;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
