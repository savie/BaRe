.class Lcom/google/gson/internal/bind/TypeAdapters$19;
.super Lcom/google/gson/b;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final read(Ltl4;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ltl4;->peek()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ltl4;->nextNull()V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Lns4;

    .line 15
    .line 16
    invoke-virtual {p1}, Ltl4;->nextString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Lns4;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public final write(Lnn4;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lns4;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lnn4;->O(Ljava/lang/Number;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
