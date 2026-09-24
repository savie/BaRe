.class public final Lokhttp3/internal/cache/DiskLruCache$Entry$newSource$1;
.super Lar3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public b:Z


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    invoke-super {p0}, Lar3;->close()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry$newSource$1;->b:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry$newSource$1;->b:Z

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    throw p0
.end method
