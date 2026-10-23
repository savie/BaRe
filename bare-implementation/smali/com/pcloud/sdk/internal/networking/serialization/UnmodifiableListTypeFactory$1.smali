.class Lcom/pcloud/sdk/internal/networking/serialization/UnmodifiableListTypeFactory$1;
.super Lcom/google/gson/b;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/b;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/gson/b;

.field public final synthetic b:Lcom/google/gson/reflect/TypeToken;


# direct methods
.method public constructor <init>(Lcom/google/gson/b;Lcom/google/gson/reflect/TypeToken;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pcloud/sdk/internal/networking/serialization/UnmodifiableListTypeFactory$1;->a:Lcom/google/gson/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/pcloud/sdk/internal/networking/serialization/UnmodifiableListTypeFactory$1;->b:Lcom/google/gson/reflect/TypeToken;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final read(Ltl4;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pcloud/sdk/internal/networking/serialization/UnmodifiableListTypeFactory$1;->a:Lcom/google/gson/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/gson/b;->read(Ltl4;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/pcloud/sdk/internal/networking/serialization/UnmodifiableListTypeFactory$1;->b:Lcom/google/gson/reflect/TypeToken;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-class v0, Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    check-cast p1, Ljava/util/List;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    return-object p1
.end method

.method public final write(Lnn4;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pcloud/sdk/internal/networking/serialization/UnmodifiableListTypeFactory$1;->a:Lcom/google/gson/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/b;->write(Lnn4;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
