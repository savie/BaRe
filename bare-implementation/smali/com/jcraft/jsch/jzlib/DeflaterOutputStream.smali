.class final Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lcom/jcraft/jsch/jzlib/Deflater;

.field public final b:[B

.field public c:Z

.field public final d:[B

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/jcraft/jsch/jzlib/Deflater;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/jzlib/Deflater;-><init>(I)V

    const/16 v1, 0x200

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lcom/jcraft/jsch/jzlib/Deflater;IZ)V

    .line 42
    iput-boolean v2, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/jcraft/jsch/jzlib/Deflater;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    const/4 v1, 0x1

    .line 39
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lcom/jcraft/jsch/jzlib/Deflater;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/jcraft/jsch/jzlib/Deflater;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lcom/jcraft/jsch/jzlib/Deflater;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/jcraft/jsch/jzlib/Deflater;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->c:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [B

    .line 9
    .line 10
    iput-object v2, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->d:[B

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->e:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->f:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    if-lez p3, :cond_0

    .line 22
    .line 23
    iput-object p2, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->a:Lcom/jcraft/jsch/jzlib/Deflater;

    .line 24
    .line 25
    new-array p1, p3, [B

    .line 26
    .line 27
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->b:[B

    .line 28
    .line 29
    iput-boolean p4, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->f:Z

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string p0, "buffer size must be greater than 0"

    .line 33
    .line 34
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_1
    throw v0
.end method


# virtual methods
.method public final a(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->b:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->a:Lcom/jcraft/jsch/jzlib/Deflater;

    .line 5
    .line 6
    iput-object v0, v2, Lcom/jcraft/jsch/jzlib/ZStream;->e:[B

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    iput v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->f:I

    .line 10
    .line 11
    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Lcom/jcraft/jsch/jzlib/Deflater;->c(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v4, -0x5

    .line 18
    if-eq v1, v4, :cond_0

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    if-ne v1, p1, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v4, v2, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 27
    .line 28
    if-gtz v4, :cond_3

    .line 29
    .line 30
    const/4 v4, 0x4

    .line 31
    if-eq p1, v4, :cond_3

    .line 32
    .line 33
    :cond_1
    :goto_0
    iget p1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->f:I

    .line 34
    .line 35
    if-lez p1, :cond_2

    .line 36
    .line 37
    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 38
    .line 39
    invoke-virtual {p0, v0, v3, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return v1

    .line 43
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 44
    .line 45
    const-string p1, "failed to deflate: error="

    .line 46
    .line 47
    const-string v0, " avail_out="

    .line 48
    .line 49
    invoke-static {v1, p1, v0}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget v0, v2, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->a:Lcom/jcraft/jsch/jzlib/Deflater;

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/jcraft/jsch/jzlib/Deflater;->m:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->a(I)I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v1, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->e:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Deflater;->d()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->f:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 30
    .line 31
    .line 32
    :cond_2
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->c:Z

    .line 34
    .line 35
    :cond_3
    return-void
.end method

.method public final flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 45
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->d:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, v0, v1, p1}, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->a:Lcom/jcraft/jsch/jzlib/Deflater;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/jcraft/jsch/jzlib/Deflater;->m:Z

    .line 4
    .line 5
    if-nez v1, :cond_4

    .line 6
    .line 7
    if-ltz p2, :cond_3

    .line 8
    .line 9
    if-ltz p3, :cond_3

    .line 10
    .line 11
    add-int v1, p2, p3

    .line 12
    .line 13
    array-length v2, p1

    .line 14
    if-gt v1, v2, :cond_3

    .line 15
    .line 16
    if-nez p3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/jzlib/ZStream;->b([BII)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget p1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 23
    .line 24
    if-lez p1, :cond_2

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->a(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 p2, 0x1

    .line 32
    if-ne p1, p2, :cond_1

    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void

    .line 35
    :cond_3
    invoke-static {}, Ll0;->a()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_4
    const-string p0, "finished"

    .line 40
    .line 41
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
