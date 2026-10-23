.class public final Lb23;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Luw1;


# instance fields
.field public final a:Ld23;

.field public final b:J

.field public final c:I

.field public d:J

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Ld23;Ljava/time/Duration;Ljava/time/Duration;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lb23;->d:J

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lb23;->b:J

    .line 15
    .line 16
    iput-object p1, p0, Lb23;->a:Ld23;

    .line 17
    .line 18
    iget-object p2, p1, Lyi7;->b:Ljava/net/Socket;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/net/Socket;->getSoTimeout()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iput p2, p0, Lb23;->c:I

    .line 25
    .line 26
    invoke-static {p3}, Lz85;->F(Ljava/time/Duration;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    iget-object p1, p1, Lyi7;->b:Ljava/net/Socket;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-wide v0, p0, Lb23;->d:J

    .line 6
    .line 7
    sub-long v0, p1, v0

    .line 8
    .line 9
    iget-wide v2, p0, Lb23;->b:J

    .line 10
    .line 11
    cmp-long p3, v0, v2

    .line 12
    .line 13
    if-lez p3, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object p3, p0, Lb23;->a:Ld23;

    .line 16
    .line 17
    const-string v0, "NOOP"

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "\r\n"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p3, v0}, Lz13;->k(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p3, v0}, Lz13;->h(Z)I

    .line 41
    .line 42
    .line 43
    iget p3, p0, Lb23;->f:I

    .line 44
    .line 45
    add-int/lit8 p3, p3, 0x1

    .line 46
    .line 47
    iput p3, p0, Lb23;->f:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    iget p3, p0, Lb23;->g:I

    .line 51
    .line 52
    add-int/lit8 p3, p3, 0x1

    .line 53
    .line 54
    iput p3, p0, Lb23;->g:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_1
    iget p3, p0, Lb23;->e:I

    .line 58
    .line 59
    add-int/lit8 p3, p3, 0x1

    .line 60
    .line 61
    iput p3, p0, Lb23;->e:I

    .line 62
    .line 63
    :goto_0
    iput-wide p1, p0, Lb23;->d:J

    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget v0, p0, Lb23;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lb23;->a:Ld23;

    .line 4
    .line 5
    :goto_0
    :try_start_0
    iget v2, p0, Lb23;->e:I

    .line 6
    .line 7
    if-lez v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lz13;->h(Z)I

    .line 11
    .line 12
    .line 13
    iget v3, p0, Lb23;->e:I

    .line 14
    .line 15
    sub-int/2addr v3, v2

    .line 16
    iput v3, p0, Lb23;->e:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    :cond_0
    iget-object p0, v1, Lyi7;->b:Ljava/net/Socket;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :goto_1
    iget-object v1, v1, Lyi7;->b:Ljava/net/Socket;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :goto_2
    return-void
.end method
