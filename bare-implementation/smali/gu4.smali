.class public final Lgu4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lst4;

.field public b:Lau4;


# virtual methods
.method public final a(Lfu4;Lrt4;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lrt4;->a()Lst4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lgu4;->a:Lst4;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-gez v2, :cond_0

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    :cond_0
    iput-object v1, p0, Lgu4;->a:Lst4;

    .line 18
    .line 19
    iget-object v1, p0, Lgu4;->b:Lau4;

    .line 20
    .line 21
    invoke-interface {v1, p1, p2}, Lau4;->g(Lfu4;Lrt4;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lgu4;->a:Lst4;

    .line 25
    .line 26
    return-void
.end method
