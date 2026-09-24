.class Lcom/jcraft/jsch/RequestEnv;
.super Lcom/jcraft/jsch/Request;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public d:[B

.field public e:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    iput-object v1, p0, Lcom/jcraft/jsch/RequestEnv;->d:[B

    .line 8
    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    iput-object v0, p0, Lcom/jcraft/jsch/RequestEnv;->e:[B

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 3
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
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/jcraft/jsch/Request;->a:Z

    .line 6
    .line 7
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/jcraft/jsch/Packet;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x62

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 23
    .line 24
    .line 25
    iget p2, p2, Lcom/jcraft/jsch/Channel;->b:I

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 28
    .line 29
    .line 30
    sget-object p2, Lcom/jcraft/jsch/Util;->a:[B

    .line 31
    .line 32
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    const-string v2, "env"

    .line 35
    .line 36
    invoke-virtual {v2, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/jcraft/jsch/RequestEnv;->d:[B

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/jcraft/jsch/RequestEnv;->e:[B

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Packet;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
