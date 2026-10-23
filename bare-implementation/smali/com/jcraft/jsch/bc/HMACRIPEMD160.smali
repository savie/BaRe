.class public Lcom/jcraft/jsch/bc/HMACRIPEMD160;
.super Lcom/jcraft/jsch/bc/HMAC;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/bc/HMAC;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "hmac-ripemd160"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/jcraft/jsch/bc/HMAC;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0x14

    .line 9
    .line 10
    iput v0, p0, Lcom/jcraft/jsch/bc/HMAC;->b:I

    .line 11
    .line 12
    new-instance v0, Lle6;

    .line 13
    .line 14
    sget-object v1, Lb42;->a:Lb42;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Luu3;-><init>(Lb42;)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x10

    .line 20
    .line 21
    new-array v1, v1, [I

    .line 22
    .line 23
    iput-object v1, v0, Lle6;->j:[I

    .line 24
    .line 25
    invoke-static {v0}, Lzh8;->r(Lhl2;)Lff9;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Le42;->a()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lle6;->reset()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/jcraft/jsch/bc/HMAC;->c:Lle6;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final bridge synthetic doFinal([BI)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/bc/HMAC;->doFinal([BI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getBlockSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/bc/HMAC;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/bc/HMAC;->a:Ljava/lang/String;

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
    invoke-super {p0, p1}, Lcom/jcraft/jsch/bc/HMAC;->init([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final isEtM()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jcraft/jsch/bc/HMAC;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public final bridge synthetic update(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/bc/HMAC;->update(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic update([BII)V
    .locals 0

    .line 5
    invoke-super {p0, p1, p2, p3}, Lcom/jcraft/jsch/bc/HMAC;->update([BII)V

    return-void
.end method
