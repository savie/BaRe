.class public final Lokhttp3/Cache$urls$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;
.implements Lbo4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;",
        "Lbo4;"
    }
.end annotation


# instance fields
.field public a:Z


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lokhttp3/Cache$urls$1;->a:Z

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lokhttp3/Cache$urls$1;->a:Z

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public final remove()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lokhttp3/Cache$urls$1;->a:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 6
    .line 7
    const-string v0, "remove() before next()"

    .line 8
    .line 9
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    throw p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    throw p0
.end method
