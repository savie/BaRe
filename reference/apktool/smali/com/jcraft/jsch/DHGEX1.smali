.class Lcom/jcraft/jsch/DHGEX1;
.super Lcom/jcraft/jsch/DHGEX;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "sha-1"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->x:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
