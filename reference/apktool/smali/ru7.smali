.class public final Lru7;
.super Liz1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic i:Lqn5;

.field public final synthetic j:Lyf1;

.field public final synthetic k:Lgu2;

.field public final synthetic l:Ljava/util/ArrayList;

.field public final synthetic m:Lbv7;


# direct methods
.method public constructor <init>(Lbv7;Lqn5;Lyf1;Lgu2;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru7;->m:Lbv7;

    .line 5
    .line 6
    iput-object p2, p0, Lru7;->i:Lqn5;

    .line 7
    .line 8
    iput-object p3, p0, Lru7;->j:Lyf1;

    .line 9
    .line 10
    iput-object p4, p0, Lru7;->k:Lgu2;

    .line 11
    .line 12
    iput-object p5, p0, Lru7;->l:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lm61;

    .line 2
    .line 3
    check-cast p2, Lua4;

    .line 4
    .line 5
    iget-object v0, p0, Lru7;->i:Lqn5;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lqn5;->m(Lm61;)Lqn5;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    new-instance v1, Lyf1;

    .line 16
    .line 17
    iget-object v2, p0, Lru7;->j:Lyf1;

    .line 18
    .line 19
    iget-object v3, v2, Lyf1;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Lgy5;

    .line 22
    .line 23
    invoke-virtual {v3, p1}, Lgy5;->d(Lm61;)Lgy5;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v2, v2, Lyf1;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Lvq;

    .line 30
    .line 31
    const/16 v4, 0xd

    .line 32
    .line 33
    invoke-direct {v1, v4, v3, v2}, Lyf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lru7;->k:Lgu2;

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Lgu2;->x(Lm61;)Lgu2;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object v2, p0, Lru7;->m:Lbv7;

    .line 45
    .line 46
    invoke-virtual {v2, p1, p2, v0, v1}, Lbv7;->e(Lgu2;Lua4;Lqn5;Lyf1;)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p0, p0, Lru7;->l:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method
