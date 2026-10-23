.class public final Lh87;
.super Lp61;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic i:Lji8;

.field public final synthetic j:Ljava/util/HashMap;

.field public final synthetic k:Lnh;


# direct methods
.method public constructor <init>(Lji8;Ljava/util/HashMap;Lnh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh87;->i:Lji8;

    .line 5
    .line 6
    iput-object p2, p0, Lh87;->j:Ljava/util/HashMap;

    .line 7
    .line 8
    iput-object p3, p0, Lh87;->k:Lnh;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final G(Lm61;Lqn5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh87;->i:Lji8;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lji8;->o(Lm61;)Lji8;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lh87;->j:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-static {p2, v0, v1}, Lms8;->L(Lqn5;Lji8;Ljava/util/HashMap;)Lqn5;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eq v0, p2, :cond_0

    .line 14
    .line 15
    new-instance p2, Lgy5;

    .line 16
    .line 17
    iget-object p1, p1, Lm61;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lgy5;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lh87;->k:Lnh;

    .line 23
    .line 24
    iget-object p1, p0, Lnh;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lqn5;

    .line 27
    .line 28
    invoke-interface {p1, p2, v0}, Lqn5;->h0(Lgy5;Lqn5;)Lqn5;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lnh;->b:Ljava/lang/Object;

    .line 33
    .line 34
    :cond_0
    return-void
.end method
