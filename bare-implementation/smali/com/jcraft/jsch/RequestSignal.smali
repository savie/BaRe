.class Lcom/jcraft/jsch/RequestSignal;
.super Lcom/jcraft/jsch/Request;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "KILL"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/jcraft/jsch/RequestSignal;->d:Ljava/lang/String;

    .line 7
    .line 8
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
    const-string v1, "signal"

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
    iget-object v1, p0, Lcom/jcraft/jsch/RequestSignal;->d:Ljava/lang/String;

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
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Packet;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final setSignal(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/RequestSignal;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
