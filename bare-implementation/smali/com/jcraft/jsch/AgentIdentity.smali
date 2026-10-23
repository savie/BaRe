.class Lcom/jcraft/jsch/AgentIdentity;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/Identity;


# instance fields
.field public final a:Lcom/jcraft/jsch/AgentProxy;

.field public final b:[B

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/AgentProxy;[BLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/jcraft/jsch/AgentIdentity;->a:Lcom/jcraft/jsch/AgentProxy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/jcraft/jsch/AgentIdentity;->b:[B

    .line 7
    .line 8
    iput-object p3, p0, Lcom/jcraft/jsch/AgentIdentity;->c:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Lcom/jcraft/jsch/Buffer;

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object p2, Lcom/jcraft/jsch/Util;->a:[B

    .line 20
    .line 21
    array-length p2, p1

    .line 22
    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/String;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, p1, v1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/jcraft/jsch/AgentIdentity;->d:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getAlgName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/AgentIdentity;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/AgentIdentity;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPublicKeyBlob()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/AgentIdentity;->b:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSignature([B)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/AgentIdentity;->b:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/jcraft/jsch/AgentIdentity;->a:Lcom/jcraft/jsch/AgentProxy;

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0, p1}, Lcom/jcraft/jsch/AgentProxy;->a(Ljava/lang/String;[B[B)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getSignature([BLjava/lang/String;)[B
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/jcraft/jsch/AgentIdentity;->a:Lcom/jcraft/jsch/AgentProxy;

    iget-object p0, p0, Lcom/jcraft/jsch/AgentIdentity;->b:[B

    invoke-virtual {v0, p2, p0, p1}, Lcom/jcraft/jsch/AgentProxy;->a(Ljava/lang/String;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final isEncrypted()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final setPassphrase([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
