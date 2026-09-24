.class public final Lo61;
.super Liz1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public i:Z

.field public final synthetic j:Lp61;

.field public final synthetic k:Lq61;


# direct methods
.method public constructor <init>(Lq61;Lp61;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo61;->k:Lq61;

    .line 5
    .line 6
    iput-object p2, p0, Lo61;->j:Lp61;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lo61;->i:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lm61;

    .line 2
    .line 3
    check-cast p2, Lqn5;

    .line 4
    .line 5
    iget-boolean v0, p0, Lo61;->i:Z

    .line 6
    .line 7
    iget-object v1, p0, Lo61;->j:Lp61;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lm61;->d:Lm61;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lm61;->a(Lm61;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Lo61;->i:Z

    .line 21
    .line 22
    iget-object p0, p0, Lo61;->k:Lq61;

    .line 23
    .line 24
    invoke-virtual {p0}, Lq61;->n()Lqn5;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v1, v0, p0}, Lp61;->G(Lm61;Lqn5;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v1, p1, p2}, Lp61;->G(Lm61;Lqn5;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
