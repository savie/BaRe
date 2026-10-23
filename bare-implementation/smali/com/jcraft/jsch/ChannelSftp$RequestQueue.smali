.class Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ChannelSftp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;,
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;
    }
.end annotation


# instance fields
.field public final a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

.field public b:I

.field public c:I

.field public final synthetic d:Lcom/jcraft/jsch/ChannelSftp;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/ChannelSftp;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->d:Lcom/jcraft/jsch/ChannelSftp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 8
    .line 9
    new-array p1, p2, [Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    move p2, p1

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 16
    .line 17
    array-length v1, v0

    .line 18
    if-ge p2, v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    aput-object v1, v0, p2

    .line 26
    .line 27
    add-int/lit8 p2, p2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    .line 31
    .line 32
    iput p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    .line 7
    sget v3, Lcom/jcraft/jsch/ChannelSftp;->SSH_FX_OK:I

    .line 8
    .line 9
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->d:Lcom/jcraft/jsch/ChannelSftp;

    .line 10
    .line 11
    invoke-virtual {v3, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 12
    .line 13
    .line 14
    iget v4, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 15
    .line 16
    move v5, v1

    .line 17
    :goto_1
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 18
    .line 19
    array-length v7, v6

    .line 20
    if-ge v5, v7, :cond_1

    .line 21
    .line 22
    aget-object v6, v6, v5

    .line 23
    .line 24
    iget v7, v6, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    .line 25
    .line 26
    iget v8, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    .line 27
    .line 28
    if-ne v7, v8, :cond_0

    .line 29
    .line 30
    iput v1, v6, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_2
    int-to-long v4, v4

    .line 37
    invoke-virtual {v3, v4, v5}, Lcom/jcraft/jsch/ChannelSftp;->P(J)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    .line 44
    .line 45
    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    .line 46
    .line 47
    return-void
.end method

.method public final b(I)Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;
    .locals 8

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    .line 6
    .line 7
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    .line 8
    .line 9
    add-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    .line 12
    .line 13
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    const/4 v4, 0x0

    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    iput v4, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    .line 20
    .line 21
    :cond_0
    aget-object v0, v2, v0

    .line 22
    .line 23
    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    .line 24
    .line 25
    if-eq v1, p1, :cond_6

    .line 26
    .line 27
    const-wide v0, 0x7fffffffffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    move v3, v4

    .line 33
    :goto_0
    array-length v5, v2

    .line 34
    if-ge v3, v5, :cond_3

    .line 35
    .line 36
    aget-object v5, v2, v3

    .line 37
    .line 38
    iget v6, v5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    .line 39
    .line 40
    if-nez v6, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-wide v5, v5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->b:J

    .line 44
    .line 45
    cmp-long v7, v0, v5

    .line 46
    .line 47
    if-lez v7, :cond_2

    .line 48
    .line 49
    move-wide v0, v5

    .line 50
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    move v3, v4

    .line 54
    :goto_2
    array-length v5, v2

    .line 55
    if-ge v3, v5, :cond_5

    .line 56
    .line 57
    aget-object v5, v2, v3

    .line 58
    .line 59
    iget v6, v5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    .line 60
    .line 61
    if-eq v6, p1, :cond_4

    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    iput v4, v5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    .line 67
    .line 68
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;

    .line 69
    .line 70
    invoke-direct {p1, p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;-><init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;J)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_5
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 75
    .line 76
    const-string v0, "RequestQueue: unknown request id "

    .line 77
    .line 78
    invoke-static {p1, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/4 v0, 0x4

    .line 83
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_6
    iput v4, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    .line 88
    .line 89
    return-object v0
.end method
