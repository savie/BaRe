.class public final Lj8;
.super Lyq3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic q:Lk8;


# direct methods
.method public constructor <init>(Lk8;Lk8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj8;->q:Lk8;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lyq3;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()Laf7;
    .locals 0

    .line 1
    iget-object p0, p0, Lj8;->q:Lk8;

    .line 2
    .line 3
    iget-object p0, p0, Lk8;->d:Lo8;

    .line 4
    .line 5
    iget-object p0, p0, Lo8;->L:Ll8;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lqc5;->a()Loc5;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final c()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj8;->q:Lk8;

    .line 2
    .line 3
    iget-object p0, p0, Lk8;->d:Lo8;

    .line 4
    .line 5
    invoke-virtual {p0}, Lo8;->n()Z

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lj8;->q:Lk8;

    .line 2
    .line 3
    iget-object p0, p0, Lk8;->d:Lo8;

    .line 4
    .line 5
    iget-object v0, p0, Lo8;->N:Li8;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lo8;->b()Z

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0
.end method
