.class public Lcom/jcraft/jsch/jce/HMACSHA2562SSHCOM;
.super Lcom/jcraft/jsch/jce/HMAC;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMAC;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "hmac-sha256-2@ssh.com"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0x20

    .line 9
    .line 10
    iput v0, p0, Lcom/jcraft/jsch/jce/HMAC;->b:I

    .line 11
    .line 12
    const-string v0, "HmacSHA256"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->c:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final bridge synthetic doFinal([BI)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/jce/HMAC;->doFinal([BI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getBlockSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/jce/HMAC;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/HMAC;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final bridge synthetic init([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/HMAC;->init([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final isEtM()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jcraft/jsch/jce/HMAC;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public final bridge synthetic update(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/HMAC;->update(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic update([BII)V
    .locals 0

    .line 5
    invoke-super {p0, p1, p2, p3}, Lcom/jcraft/jsch/jce/HMAC;->update([BII)V

    return-void
.end method
