.class public final Lks2;
.super Ljava/lang/Object;

# interfaces
.implements Lyf7;


# instance fields
.field public final a:Ljs2;

.field public final b:[B

.field public c:Z

.field public d:Lhs2;

.field public e:Lis2;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljs2;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lks2;->a:Ljs2;

    .line 10
    .line 11
    invoke-static {p1}, Lms8;->k([B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lks2;->b:[B

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a([B)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lks2;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lks2;->e:Lis2;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lks2;->a:Ljs2;

    .line 10
    .line 11
    iget-object p0, p0, Lks2;->b:[B

    .line 12
    .line 13
    invoke-virtual {v1, v0, p0, p1}, Ljs2;->b(Lis2;[B[B)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const-string p0, "Ed448Signer not initialised for verification"

    .line 19
    .line 20
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final b(ZLn60;)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lks2;->c:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    check-cast p2, Lhs2;

    .line 7
    .line 8
    iput-object p2, p0, Lks2;->d:Lhs2;

    .line 9
    .line 10
    iput-object v0, p0, Lks2;->e:Lis2;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object v0, p0, Lks2;->d:Lhs2;

    .line 14
    .line 15
    check-cast p2, Lis2;

    .line 16
    .line 17
    iput-object p2, p0, Lks2;->e:Lis2;

    .line 18
    .line 19
    :goto_0
    invoke-static {}, Le42;->a()V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lks2;->a:Ljs2;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljs2;->reset()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final c()[B
    .locals 2

    .line 1
    iget-boolean v0, p0, Lks2;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lks2;->d:Lhs2;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lks2;->a:Ljs2;

    .line 10
    .line 11
    iget-object p0, p0, Lks2;->b:[B

    .line 12
    .line 13
    invoke-virtual {v1, v0, p0}, Ljs2;->a(Lhs2;[B)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "Ed448Signer not initialised for signature generation."

    .line 19
    .line 20
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public final d([BI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lks2;->a:Ljs2;

    .line 3
    .line 4
    invoke-virtual {p0, p1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
