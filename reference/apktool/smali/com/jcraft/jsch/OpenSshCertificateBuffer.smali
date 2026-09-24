.class Lcom/jcraft/jsch/OpenSshCertificateBuffer;
.super Lcom/jcraft/jsch/Buffer;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 6
    .line 7
    array-length p1, p1

    .line 8
    iput p1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final i()Ljava/util/LinkedHashMap;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/jcraft/jsch/OpenSshCertificateBuffer;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v1, p0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;-><init>([B)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-lez p0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    sget-object v3, Lcom/jcraft/jsch/Util;->a:[B

    .line 34
    .line 35
    array-length v3, p0

    .line 36
    new-instance v4, Ljava/lang/String;

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-direct {v4, p0, v5, v3, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    array-length v3, p0

    .line 47
    new-instance v6, Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v6, p0, v5, v3, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-object v0
.end method
