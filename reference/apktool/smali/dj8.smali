.class public final Ldj8;
.super Lji8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final n:Lbv7;

.field public final p:Lgy5;


# direct methods
.method public constructor <init>(Lbv7;Lgy5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldj8;->n:Lbv7;

    .line 5
    .line 6
    iput-object p2, p0, Ldj8;->p:Lgy5;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final D()Lqn5;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ldj8;->n:Lbv7;

    .line 7
    .line 8
    iget-object p0, p0, Ldj8;->p:Lgy5;

    .line 9
    .line 10
    invoke-virtual {v1, p0, v0}, Lbv7;->i(Lgy5;Ljava/util/ArrayList;)Lqn5;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final o(Lm61;)Lji8;
    .locals 1

    .line 1
    iget-object v0, p0, Ldj8;->p:Lgy5;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgy5;->d(Lm61;)Lgy5;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ldj8;

    .line 8
    .line 9
    iget-object p0, p0, Ldj8;->n:Lbv7;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Ldj8;-><init>(Lbv7;Lgy5;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
