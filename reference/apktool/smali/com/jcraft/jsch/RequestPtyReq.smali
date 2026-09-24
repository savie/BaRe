.class Lcom/jcraft/jsch/RequestPtyReq;
.super Lcom/jcraft/jsch/Request;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "vt100"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->d:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0x50

    .line 9
    .line 10
    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->e:I

    .line 11
    .line 12
    const/16 v0, 0x18

    .line 13
    .line 14
    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->f:I

    .line 15
    .line 16
    const/16 v0, 0x280

    .line 17
    .line 18
    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->g:I

    .line 19
    .line 20
    const/16 v0, 0x1e0

    .line 21
    .line 22
    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->h:I

    .line 23
    .line 24
    sget-object v0, Lcom/jcraft/jsch/Util;->c:[B

    .line 25
    .line 26
    iput-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->i:[B

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/jcraft/jsch/Buffer;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/jcraft/jsch/Packet;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x62

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 20
    .line 21
    .line 22
    iget p2, p2, Lcom/jcraft/jsch/Channel;->b:I

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 25
    .line 26
    .line 27
    sget-object p2, Lcom/jcraft/jsch/Util;->a:[B

    .line 28
    .line 29
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    const-string v1, "pty-req"

    .line 32
    .line 33
    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/jcraft/jsch/Request;->a:Z

    .line 41
    .line 42
    int-to-byte v1, v1

    .line 43
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/jcraft/jsch/RequestPtyReq;->d:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1, p2}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 53
    .line 54
    .line 55
    iget p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->e:I

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 58
    .line 59
    .line 60
    iget p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->f:I

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 63
    .line 64
    .line 65
    iget p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->g:I

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 68
    .line 69
    .line 70
    iget p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->h:I

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->i:[B

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Packet;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
