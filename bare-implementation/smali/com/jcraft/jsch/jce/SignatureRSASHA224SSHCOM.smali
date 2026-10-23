.class public Lcom/jcraft/jsch/jce/SignatureRSASHA224SSHCOM;
.super Lcom/jcraft/jsch/jce/SignatureRSAN;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ssh-rsa-sha224@ssh.com"

    .line 2
    .line 3
    return-object p0
.end method

.method public final bridge synthetic init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/jce/SignatureRSAN;->init()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic setPrvKey([B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/jce/SignatureRSAN;->setPrvKey([B[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic setPubKey([B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/jce/SignatureRSAN;->setPubKey([B[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final sign()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureRSAN;->a:Ljava/security/Signature;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final bridge synthetic update([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/SignatureRSAN;->update([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic verify([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/SignatureRSAN;->verify([B)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
