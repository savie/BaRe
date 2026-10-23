.class public final Lfs2;
.super Ljava/lang/Object;

# interfaces
.implements Lyf7;


# instance fields
.field public final a:Les2;

.field public b:Z

.field public c:Lcs2;

.field public d:Lds2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Les2;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lfs2;->a:Les2;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a([B)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfs2;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lfs2;->d:Lds2;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lfs2;->a:Les2;

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Les2;->b(Lds2;[B)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const-string p0, "Ed25519Signer not initialised for verification"

    .line 17
    .line 18
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final b(ZLn60;)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lfs2;->b:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    check-cast p2, Lcs2;

    .line 7
    .line 8
    iput-object p2, p0, Lfs2;->c:Lcs2;

    .line 9
    .line 10
    iput-object v0, p0, Lfs2;->d:Lds2;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object v0, p0, Lfs2;->c:Lcs2;

    .line 14
    .line 15
    check-cast p2, Lds2;

    .line 16
    .line 17
    iput-object p2, p0, Lfs2;->d:Lds2;

    .line 18
    .line 19
    :goto_0
    invoke-static {}, Le42;->a()V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lfs2;->a:Les2;

    .line 23
    .line 24
    invoke-virtual {p0}, Les2;->reset()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final c()[B
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfs2;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lfs2;->c:Lcs2;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lfs2;->a:Les2;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Les2;->a(Lcs2;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "Ed25519Signer not initialised for signature generation."

    .line 17
    .line 18
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public final d([BI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lfs2;->a:Les2;

    .line 3
    .line 4
    invoke-virtual {p0, p1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
