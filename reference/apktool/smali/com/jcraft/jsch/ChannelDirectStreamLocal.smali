.class public Lcom/jcraft/jsch/ChannelDirectStreamLocal;
.super Lcom/jcraft/jsch/ChannelDirectTCPIP;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final B:[B


# instance fields
.field public A:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    const-string v1, "direct-streamlocal@openssh.com"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/jcraft/jsch/ChannelDirectStreamLocal;->B:[B

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/jcraft/jsch/ChannelDirectStreamLocal;->B:[B

    .line 5
    .line 6
    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->c:[B

    .line 7
    .line 8
    const/high16 v0, 0x20000

    .line 9
    .line 10
    iput v0, p0, Lcom/jcraft/jsch/Channel;->d:I

    .line 11
    .line 12
    iput v0, p0, Lcom/jcraft/jsch/Channel;->e:I

    .line 13
    .line 14
    const/16 v0, 0x4000

    .line 15
    .line 16
    iput v0, p0, Lcom/jcraft/jsch/Channel;->f:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final e()Lcom/jcraft/jsch/Packet;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelDirectStreamLocal;->A:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->s:Lcom/jcraft/jsch/Session;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v2, Lcom/jcraft/jsch/Buffer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, 0x32

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->k()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, v0

    .line 20
    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/jcraft/jsch/Packet;

    .line 24
    .line 25
    invoke-direct {v0, v2}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x5a

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->c:[B

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/jcraft/jsch/Channel;->a:I

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/jcraft/jsch/Channel;->e:I

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/jcraft/jsch/Channel;->f:I

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelDirectStreamLocal;->A:Ljava/lang/String;

    .line 57
    .line 58
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 59
    .line 60
    invoke-static {v1, v3}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->x:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v1, v3}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 74
    .line 75
    .line 76
    iget p0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->y:I

    .line 77
    .line 78
    invoke-virtual {v2, p0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 79
    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_0
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const/4 v0, 0x4

    .line 87
    const-string v1, "socketPath must be set"

    .line 88
    .line 89
    invoke-interface {p0, v0, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lg84;->h(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x0

    .line 96
    return-object p0
.end method

.method public final getSocketPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelDirectStreamLocal;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setSocketPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelDirectStreamLocal;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
