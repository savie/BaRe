.class public final Ln06;
.super Lp06;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Lvz0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lp06;-><init>(Lvz0;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Ln06;->c:Ljava/security/MessageDigest;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 0

    .line 1
    iget-object p0, p0, Ln06;->c:Ljava/security/MessageDigest;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final b(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Ln06;->c:Ljava/security/MessageDigest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c([BII)V
    .locals 0

    .line 1
    iget-object p0, p0, Ln06;->c:Ljava/security/MessageDigest;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final engineInitSign(Ljava/security/PrivateKey;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lp06;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Ln06;->c:Ljava/security/MessageDigest;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
