.class abstract Lcom/jcraft/jsch/Request;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Z

.field public b:Lcom/jcraft/jsch/Session;

.field public c:Lcom/jcraft/jsch/Channel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/jcraft/jsch/Request;->a:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/jcraft/jsch/Request;->b:Lcom/jcraft/jsch/Session;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lcom/jcraft/jsch/Packet;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Request;->a:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    .line 7
    .line 8
    iput v1, v0, Lcom/jcraft/jsch/Channel;->q:I

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Request;->b:Lcom/jcraft/jsch/Session;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 13
    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/jcraft/jsch/Request;->a:Z

    .line 16
    .line 17
    if-eqz p1, :cond_5

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iget-object p1, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    .line 24
    .line 25
    iget p1, p1, Lcom/jcraft/jsch/Channel;->r:I

    .line 26
    .line 27
    int-to-long v4, p1

    .line 28
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    iget-object p1, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    .line 37
    .line 38
    iget p1, p1, Lcom/jcraft/jsch/Channel;->q:I

    .line 39
    .line 40
    if-ne p1, v1, :cond_3

    .line 41
    .line 42
    const-wide/16 v6, 0xa

    .line 43
    .line 44
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    const-wide/16 v6, 0x0

    .line 48
    .line 49
    cmp-long p1, v4, v6

    .line 50
    .line 51
    if-lez p1, :cond_1

    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    sub-long/2addr v6, v2

    .line 58
    cmp-long p1, v6, v4

    .line 59
    .line 60
    if-gtz p1, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object p0, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/jcraft/jsch/Channel;->q:I

    .line 67
    .line 68
    const-string p0, "channel request: timeout"

    .line 69
    .line 70
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    iget-object p0, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    .line 75
    .line 76
    iget p0, p0, Lcom/jcraft/jsch/Channel;->q:I

    .line 77
    .line 78
    if-eqz p0, :cond_4

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    const-string p0, "failed to send channel request"

    .line 82
    .line 83
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_1
    return-void
.end method

.method public request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Request;->b:Lcom/jcraft/jsch/Session;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    .line 4
    .line 5
    iget p1, p2, Lcom/jcraft/jsch/Channel;->r:I

    .line 6
    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/jcraft/jsch/Request;->a:Z

    .line 11
    .line 12
    :cond_0
    return-void
.end method
