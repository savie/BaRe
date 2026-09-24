.class public final Lej8;
.super Lji8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final n:Lqn5;


# direct methods
.method public constructor <init>(Lqn5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lej8;->n:Lqn5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final D()Lqn5;
    .locals 0

    .line 1
    iget-object p0, p0, Lej8;->n:Lqn5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final o(Lm61;)Lji8;
    .locals 0

    .line 1
    iget-object p0, p0, Lej8;->n:Lqn5;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lqn5;->m(Lm61;)Lqn5;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance p1, Lej8;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lej8;-><init>(Lqn5;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method
