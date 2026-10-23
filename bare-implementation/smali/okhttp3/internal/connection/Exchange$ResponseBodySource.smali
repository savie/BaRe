.class public final Lokhttp3/internal/connection/Exchange$ResponseBodySource;
.super Lar3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/connection/Exchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResponseBodySource"
.end annotation


# instance fields
.field public final b:J

.field public c:J

.field public d:Z

.field public e:Z

.field public f:Z

.field public final synthetic k:Lokhttp3/internal/connection/Exchange;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/Exchange;Lij7;J)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->k:Lokhttp3/internal/connection/Exchange;

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lar3;-><init>(Lij7;)V

    .line 7
    .line 8
    .line 9
    iput-wide p3, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->b:J

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->d:Z

    .line 13
    .line 14
    const-wide/16 p1, 0x0

    .line 15
    .line 16
    cmp-long p1, p3, p1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->a(Ljava/io/IOException;)Ljava/io/IOException;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public final H(Lnw0;J)J
    .locals 9

    .line 1
    const-string v0, "expected "

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->f:Z

    .line 7
    .line 8
    if-nez v1, :cond_5

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lar3;->a:Lij7;

    .line 11
    .line 12
    invoke-interface {v1, p1, p2, p3}, Lij7;->H(Lnw0;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iget-boolean p3, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->d:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->k:Lokhttp3/internal/connection/Exchange;

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    :try_start_1
    iput-boolean p3, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->d:Z

    .line 24
    .line 25
    iget-object p3, v1, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_0
    const-wide/16 v2, -0x1

    .line 34
    .line 35
    cmp-long p3, p1, v2

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    if-nez p3, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, v4}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->a(Ljava/io/IOException;)Ljava/io/IOException;

    .line 41
    .line 42
    .line 43
    return-wide v2

    .line 44
    :cond_1
    iget-wide v5, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->c:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    .line 46
    add-long/2addr v5, p1

    .line 47
    iget-wide v7, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->b:J

    .line 48
    .line 49
    cmp-long p3, v7, v2

    .line 50
    .line 51
    if-eqz p3, :cond_3

    .line 52
    .line 53
    cmp-long p3, v5, v7

    .line 54
    .line 55
    if-gtz p3, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :try_start_2
    new-instance p1, Ljava/net/ProtocolException;

    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p3, " bytes but received "

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_3
    :goto_1
    iput-wide v5, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->c:J

    .line 85
    .line 86
    iget-object p3, v1, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 87
    .line 88
    invoke-interface {p3}, Lokhttp3/internal/http/ExchangeCodec;->c()Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-eqz p3, :cond_4

    .line 93
    .line 94
    invoke-virtual {p0, v4}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->a(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    .line 96
    .line 97
    :cond_4
    return-wide p1

    .line 98
    :goto_2
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->a(Ljava/io/IOException;)Ljava/io/IOException;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_5
    const-string p0, "closed"

    .line 107
    .line 108
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-wide/16 p0, 0x0

    .line 112
    .line 113
    return-wide p0
.end method

.method public final a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->e:Z

    .line 8
    .line 9
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->k:Lokhttp3/internal/connection/Exchange;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    iget-boolean v1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->d:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->d:Z

    .line 19
    .line 20
    iget-object p0, v0, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 p0, 0x4

    .line 26
    invoke-static {v0, p1, p0}, Lokhttp3/internal/connection/Exchange;->a(Lokhttp3/internal/connection/Exchange;Ljava/io/IOException;I)Ljava/io/IOException;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->f:Z

    .line 8
    .line 9
    :try_start_0
    invoke-super {p0}, Lar3;->close()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->a(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->a(Ljava/io/IOException;)Ljava/io/IOException;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    throw p0
.end method
