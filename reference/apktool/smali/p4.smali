.class public final Lp4;
.super Lm4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field public final synthetic f:Ly24;


# direct methods
.method public constructor <init>(Ly24;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lp4;->f:Ly24;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lm4;-><init>(Lq4;Ljava/lang/Object;Ljava/util/Collection;Lm4;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lm4;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lm4;->b:Ljava/util/Collection;

    .line 14
    .line 15
    check-cast v1, Ljava/util/Set;

    .line 16
    .line 17
    invoke-static {v1, p1}, Lly8;->K(Ljava/util/Set;Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lm4;->b:Ljava/util/Collection;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sub-int/2addr v1, v0

    .line 30
    iget-object v0, p0, Lp4;->f:Ly24;

    .line 31
    .line 32
    iget v2, v0, Lq4;->e:I

    .line 33
    .line 34
    add-int/2addr v2, v1

    .line 35
    iput v2, v0, Lq4;->e:I

    .line 36
    .line 37
    invoke-virtual {p0}, Lm4;->e()V

    .line 38
    .line 39
    .line 40
    :cond_1
    return p1
.end method
