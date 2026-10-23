.class public final Lxq7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Lm3;

.field public final synthetic b:Lzq7;


# direct methods
.method public constructor <init>(Lzq7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxq7;->b:Lzq7;

    .line 5
    .line 6
    iget-object p1, p1, Ln3;->d:Lm3;

    .line 7
    .line 8
    iput-object p1, p0, Lxq7;->a:Lm3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lxq7;->a:Lm3;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lxq7;->a:Lm3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lm3;->a()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lxq7;->a:Lm3;

    .line 12
    .line 13
    iget-object v1, v1, Lm3;->a:Lm3;

    .line 14
    .line 15
    iput-object v1, p0, Lxq7;->a:Lm3;

    .line 16
    .line 17
    return-object v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lxq7;->a:Lm3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, v0, Lm3;->a:Lm3;

    .line 7
    .line 8
    iget-object v2, p0, Lxq7;->b:Lzq7;

    .line 9
    .line 10
    invoke-virtual {v0}, Lm3;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v2, v0}, Ln3;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lxq7;->a:Lm3;

    .line 18
    .line 19
    return-void
.end method
