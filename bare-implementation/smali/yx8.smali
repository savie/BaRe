.class public final Lyx8;
.super Lyp1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lgh7;


# direct methods
.method public constructor <init>(Lxx8;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lwu0;->b()Lvu0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p1, Ll5;->k:Ly4;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, v1, Ly4;->k:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/io/InputStream;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ll5;->J(Ljava/io/InputStream;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lwu0;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lwu0;-><init>(Lvu0;)V

    .line 22
    .line 23
    .line 24
    sget v0, Lxx8;->x:I

    .line 25
    .line 26
    new-instance v0, Lgh7;

    .line 27
    .line 28
    iget p1, p1, Lxx8;->t:I

    .line 29
    .line 30
    sget-object v2, Lv40;->a:Lv40;

    .line 31
    .line 32
    invoke-direct {v0, v1, p1, v2}, Lgh7;-><init>(Lwu0;ILv40;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lyx8;->a:Lgh7;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const-string p0, "origin == null"

    .line 39
    .line 40
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    throw p0
.end method


# virtual methods
.method public final available()I
    .locals 0

    .line 1
    iget-object p0, p0, Lyx8;->a:Lgh7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgh7;->available()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object p0, p0, Lyx8;->a:Lgh7;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lgh7;->a(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final read()I
    .locals 4

    .line 24
    :try_start_0
    iget-object p0, p0, Lyx8;->a:Lgh7;

    invoke-virtual {p0}, Lgh7;->read()I

    move-result p0
    :try_end_0
    .catch Lyb5; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 25
    new-instance v0, Lzb5;

    .line 26
    iget v1, p0, Lyb5;->a:I

    int-to-long v1, v1

    .line 27
    iget v3, p0, Lyb5;->b:I

    .line 28
    invoke-direct {v0, v1, v2, v3, p0}, Lzb5;-><init>(JILyb5;)V

    throw v0
.end method

.method public final read([BII)I
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    :try_start_0
    iget-object p0, p0, Lyx8;->a:Lgh7;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lgh7;->read([BII)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Lyb5; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Lzb5;

    .line 14
    .line 15
    iget p2, p0, Lyb5;->a:I

    .line 16
    .line 17
    int-to-long p2, p2

    .line 18
    iget v0, p0, Lyb5;->b:I

    .line 19
    .line 20
    invoke-direct {p1, p2, p3, v0, p0}, Lzb5;-><init>(JILyb5;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final skip(J)J
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lyx8;->a:Lgh7;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Ln84;->c(Ljava/io/InputStream;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0
    :try_end_0
    .catch Lyb5; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-wide p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Lzb5;

    .line 10
    .line 11
    iget p2, p0, Lyb5;->a:I

    .line 12
    .line 13
    int-to-long v0, p2

    .line 14
    iget p2, p0, Lyb5;->b:I

    .line 15
    .line 16
    invoke-direct {p1, v0, v1, p2, p0}, Lzb5;-><init>(JILyb5;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method
