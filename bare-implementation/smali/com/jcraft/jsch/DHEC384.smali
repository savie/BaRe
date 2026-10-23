.class Lcom/jcraft/jsch/DHEC384;
.super Lcom/jcraft/jsch/DHECN;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "sha-384"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/jcraft/jsch/DHECN;->s:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0x180

    .line 9
    .line 10
    iput v0, p0, Lcom/jcraft/jsch/DHECN;->t:I

    .line 11
    .line 12
    return-void
.end method
