.class Lcom/jcraft/jsch/DH25519;
.super Lcom/jcraft/jsch/DHXEC;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "sha-256"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/jcraft/jsch/DHXEC;->s:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "X25519"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/jcraft/jsch/DHXEC;->t:Ljava/lang/String;

    .line 11
    .line 12
    const/16 v0, 0x20

    .line 13
    .line 14
    iput v0, p0, Lcom/jcraft/jsch/DHXEC;->u:I

    .line 15
    .line 16
    return-void
.end method
