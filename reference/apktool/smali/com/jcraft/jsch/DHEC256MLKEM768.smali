.class Lcom/jcraft/jsch/DHEC256MLKEM768;
.super Lcom/jcraft/jsch/DHECNKEM;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "mlkem768"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/jcraft/jsch/DHECNKEM;->t:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "sha-256"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/jcraft/jsch/DHECNKEM;->u:Ljava/lang/String;

    .line 11
    .line 12
    const/16 v0, 0x4a0

    .line 13
    .line 14
    iput v0, p0, Lcom/jcraft/jsch/DHECNKEM;->v:I

    .line 15
    .line 16
    const/16 v0, 0x440

    .line 17
    .line 18
    iput v0, p0, Lcom/jcraft/jsch/DHECNKEM;->w:I

    .line 19
    .line 20
    const/16 v0, 0x100

    .line 21
    .line 22
    iput v0, p0, Lcom/jcraft/jsch/DHECNKEM;->x:I

    .line 23
    .line 24
    const/16 v0, 0x41

    .line 25
    .line 26
    iput v0, p0, Lcom/jcraft/jsch/DHECNKEM;->y:I

    .line 27
    .line 28
    return-void
.end method
