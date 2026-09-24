.class public final Lzg7;
.super Ltn2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ler6;

.field public b:Landroid/net/Uri;


# virtual methods
.method public final a(Ljava/lang/String;)Ltn2;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lzg7;->a:Ler6;

    .line 2
    .line 3
    iget-object p0, p0, Lzg7;->b:Landroid/net/Uri;

    .line 4
    .line 5
    const-string v1, "_display_name"

    .line 6
    .line 7
    invoke-static {v0, p0, v1}, Liz1;->u(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final e()Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lzg7;->b:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()J
    .locals 4

    .line 1
    iget-object v0, p0, Lzg7;->a:Ler6;

    .line 2
    .line 3
    iget-object p0, p0, Lzg7;->b:Landroid/net/Uri;

    .line 4
    .line 5
    const-string v1, "_size"

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-static {v0, p0, v1, v2, v3}, Liz1;->t(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final g()[Ltn2;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
