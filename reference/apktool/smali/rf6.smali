.class public final Lrf6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyw0;


# instance fields
.field public final a:Lnh7;

.field public final b:Lnw0;

.field public c:Z


# direct methods
.method public constructor <init>(Lnh7;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lrf6;->a:Lnh7;

    .line 8
    .line 9
    new-instance p1, Lnw0;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lrf6;->b:Lnw0;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final B(Lij7;)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :goto_0
    const-wide/16 v2, 0x2000

    .line 4
    .line 5
    move-object v4, p1

    .line 6
    check-cast v4, Lrc4;

    .line 7
    .line 8
    iget-object v5, p0, Lrf6;->b:Lnw0;

    .line 9
    .line 10
    invoke-virtual {v4, v5, v2, v3}, Lrc4;->H(Lnw0;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const-wide/16 v4, -0x1

    .line 15
    .line 16
    cmp-long v4, v2, v4

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    add-long/2addr v0, v2

    .line 21
    invoke-virtual {p0}, Lrf6;->a()Lyw0;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-wide v0
.end method

.method public final K(Ljava/lang/String;)Lyw0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lrf6;->c:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lrf6;->b:Lnw0;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lnw0;->Z(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lrf6;->a()Lyw0;

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string p0, "closed"

    .line 18
    .line 19
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final P(Lhy0;)Lyw0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lrf6;->c:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lrf6;->b:Lnw0;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lnw0;->D(Lhy0;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lrf6;->a()Lyw0;

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string p0, "closed"

    .line 18
    .line 19
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final Q(J)Lyw0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrf6;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lrf6;->b:Lnw0;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lnw0;->S(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lrf6;->a()Lyw0;

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "closed"

    .line 15
    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final V(Lrc4;J)Lyw0;
    .locals 4

    .line 1
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lrf6;->b:Lnw0;

    .line 8
    .line 9
    invoke-virtual {p1, v0, p2, p3}, Lrc4;->H(Lnw0;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, -0x1

    .line 14
    .line 15
    cmp-long v2, v0, v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    sub-long/2addr p2, v0

    .line 20
    invoke-virtual {p0}, Lrf6;->a()Lyw0;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Ld6;->d()V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    :cond_1
    return-object p0
.end method

.method public final a()Lyw0;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lrf6;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lrf6;->b:Lnw0;

    .line 6
    .line 7
    iget-wide v1, v0, Lnw0;->b:J

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v5, v1, v3

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    move-wide v1, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v5, v0, Lnw0;->a:Lm67;

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v5, v5, Lm67;->g:Lm67;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget v6, v5, Lm67;->c:I

    .line 28
    .line 29
    const/16 v7, 0x2000

    .line 30
    .line 31
    if-ge v6, v7, :cond_1

    .line 32
    .line 33
    iget-boolean v7, v5, Lm67;->e:Z

    .line 34
    .line 35
    if-eqz v7, :cond_1

    .line 36
    .line 37
    iget v5, v5, Lm67;->b:I

    .line 38
    .line 39
    sub-int/2addr v6, v5

    .line 40
    int-to-long v5, v6

    .line 41
    sub-long/2addr v1, v5

    .line 42
    :cond_1
    :goto_0
    cmp-long v3, v1, v3

    .line 43
    .line 44
    if-lez v3, :cond_2

    .line 45
    .line 46
    iget-object v3, p0, Lrf6;->a:Lnh7;

    .line 47
    .line 48
    invoke-interface {v3, v0, v1, v2}, Lnh7;->f0(Lnw0;J)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-object p0

    .line 52
    :cond_3
    const-string p0, "closed"

    .line 53
    .line 54
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method

.method public final c()Lnw0;
    .locals 0

    .line 1
    iget-object p0, p0, Lrf6;->b:Lnw0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final close()V
    .locals 6

    .line 1
    iget-object v0, p0, Lrf6;->a:Lnh7;

    .line 2
    .line 3
    iget-boolean v1, p0, Lrf6;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_3

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Lrf6;->b:Lnw0;

    .line 8
    .line 9
    iget-wide v2, v1, Lnw0;->b:J

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v4, v2, v4

    .line 14
    .line 15
    if-lez v4, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, v1, v2, v3}, Lnh7;->f0(Lnw0;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 24
    :goto_1
    :try_start_1
    invoke-interface {v0}, Lnh7;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :catchall_1
    move-exception v0

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    move-object v1, v0

    .line 32
    :cond_1
    :goto_2
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lrf6;->c:Z

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    throw v1

    .line 39
    :cond_3
    :goto_3
    return-void
.end method

.method public final d()Lf48;
    .locals 0

    .line 1
    iget-object p0, p0, Lrf6;->a:Lnh7;

    .line 2
    .line 3
    invoke-interface {p0}, Lnh7;->d()Lf48;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final f0(Lnw0;J)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lrf6;->c:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lrf6;->b:Lnw0;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lnw0;->f0(Lnw0;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lrf6;->a()Lyw0;

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "closed"

    .line 18
    .line 19
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final flush()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lrf6;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lrf6;->b:Lnw0;

    .line 6
    .line 7
    iget-wide v1, v0, Lnw0;->b:J

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v3, v1, v3

    .line 12
    .line 13
    iget-object p0, p0, Lrf6;->a:Lnh7;

    .line 14
    .line 15
    if-lez v3, :cond_0

    .line 16
    .line 17
    invoke-interface {p0, v0, v1, v2}, Lnh7;->f0(Lnw0;J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p0}, Lnh7;->flush()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const-string p0, "closed"

    .line 25
    .line 26
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final isOpen()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lrf6;->c:Z

    .line 2
    .line 3
    xor-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    return p0
.end method

.method public final n0()Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Lqf6;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lqf6;-><init>(Lrf6;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "buffer("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lrf6;->a:Lnh7;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    iget-boolean v0, p0, Lrf6;->c:Z

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lrf6;->b:Lnw0;

    .line 28
    invoke-virtual {v0, p1}, Lnw0;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 29
    invoke-virtual {p0}, Lrf6;->a()Lyw0;

    return p1

    .line 30
    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final write([B)Lyw0;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lrf6;->c:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    array-length v1, p1

    .line 10
    iget-object v2, p0, Lrf6;->b:Lnw0;

    .line 11
    .line 12
    invoke-virtual {v2, p1, v0, v1}, Lnw0;->write([BII)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lrf6;->a()Lyw0;

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "closed"

    .line 20
    .line 21
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final write([BII)Lyw0;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget-boolean v0, p0, Lrf6;->c:Z

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lrf6;->b:Lnw0;

    .line 33
    invoke-virtual {v0, p1, p2, p3}, Lnw0;->write([BII)V

    .line 34
    invoke-virtual {p0}, Lrf6;->a()Lyw0;

    return-object p0

    .line 35
    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final writeByte(I)Lyw0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrf6;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lrf6;->b:Lnw0;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lnw0;->J(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lrf6;->a()Lyw0;

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "closed"

    .line 15
    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final writeInt(I)Lyw0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrf6;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lrf6;->b:Lnw0;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lnw0;->U(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lrf6;->a()Lyw0;

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "closed"

    .line 15
    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final writeShort(I)Lyw0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrf6;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lrf6;->b:Lnw0;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lnw0;->W(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lrf6;->a()Lyw0;

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "closed"

    .line 15
    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method
