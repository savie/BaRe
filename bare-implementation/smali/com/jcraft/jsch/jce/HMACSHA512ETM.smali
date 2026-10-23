.class public Lcom/jcraft/jsch/jce/HMACSHA512ETM;
.super Lcom/jcraft/jsch/jce/HMACSHA512;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMACSHA512;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "hmac-sha2-512-etm@openssh.com"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/jcraft/jsch/jce/HMAC;->d:Z

    .line 10
    .line 11
    return-void
.end method
