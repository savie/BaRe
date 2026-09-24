.class public final Lgr6;
.super Ls51;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls51;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    iput v0, p0, Ls51;->b:I

    .line 7
    .line 8
    const-string v0, "SHA-256"

    .line 9
    .line 10
    iput-object v0, p0, Ls51;->c:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lgr6;->d:Ljava/security/MessageDigest;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .line 1
    iget-object p0, p0, Lgr6;->d:Ljava/security/MessageDigest;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final d([BII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lgr6;->d:Ljava/security/MessageDigest;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
