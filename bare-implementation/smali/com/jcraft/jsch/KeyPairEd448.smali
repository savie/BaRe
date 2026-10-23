.class Lcom/jcraft/jsch/KeyPairEd448;
.super Lcom/jcraft/jsch/KeyPairEdDSA;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lcom/jcraft/jsch/KeyPairEdDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/KeyPairEdDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    return-void
.end method

.method public static A(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    const-string v1, "invalid key format"

    .line 3
    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->d(ILjava/lang/String;)[[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x1

    .line 9
    aget-object v0, p1, v0

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    aget-object v1, p1, v1

    .line 13
    .line 14
    const/16 v2, 0x39

    .line 15
    .line 16
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lcom/jcraft/jsch/KeyPairEd448;

    .line 21
    .line 22
    invoke-direct {v2, p0, v0, v1}, Lcom/jcraft/jsch/KeyPairEdDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x3

    .line 26
    aget-object p0, p1, p0

    .line 27
    .line 28
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iput-object p0, v2, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    iput p0, v2, Lcom/jcraft/jsch/KeyPair;->a:I

    .line 36
    .line 37
    return-object v2
.end method


# virtual methods
.method public final getKeySize()I
    .locals 0

    .line 1
    const/16 p0, 0x39

    .line 2
    .line 3
    return p0
.end method

.method public final getKeyType()I
    .locals 0

    .line 1
    const/4 p0, 0x6

    .line 2
    return p0
.end method

.method public final y()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Ed448"

    .line 2
    .line 3
    return-object p0
.end method

.method public final z()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ssh-ed448"

    .line 2
    .line 3
    return-object p0
.end method
