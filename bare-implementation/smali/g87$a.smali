.class public Lg87$a;
.super Lg87;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg87;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lv64$c;

.field public final b:Lv64$c;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrg5;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg87;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "AES"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    array-length v1, v1

    .line 24
    const/16 v2, 0x20

    .line 25
    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljavax/security/auth/Destroyable;->isDestroyed()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Ly51;->a([B)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    array-length v0, p1

    .line 43
    new-instance v1, Ly51$e;

    .line 44
    .line 45
    invoke-direct {v1}, Ly51$e;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v1, v1, Ly51$e;->a:Ljava/security/MessageDigest;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v1, p1, v2, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Ly51;->a([B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    new-instance p1, Lv64$c;

    .line 63
    .line 64
    const-string v2, "X-Amz-Server-Side-Encryption-Customer-Key"

    .line 65
    .line 66
    const-string v4, "X-Amz-Server-Side-Encryption-Customer-Key-Md5"

    .line 67
    .line 68
    const-string v0, "X-Amz-Server-Side-Encryption-Customer-Algorithm"

    .line 69
    .line 70
    const-string v1, "AES256"

    .line 71
    .line 72
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p1, v0}, Lv64$c;-><init>([Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lg87$a;->a:Lv64$c;

    .line 80
    .line 81
    new-instance p1, Lv64$c;

    .line 82
    .line 83
    const-string v2, "X-Amz-Copy-Source-Server-Side-Encryption-Customer-Key"

    .line 84
    .line 85
    const-string v4, "X-Amz-Copy-Source-Server-Side-Encryption-Customer-Key-Md5"

    .line 86
    .line 87
    const-string v0, "X-Amz-Copy-Source-Server-Side-Encryption-Customer-Algorithm"

    .line 88
    .line 89
    const-string v1, "AES256"

    .line 90
    .line 91
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-direct {p1, v0}, Lv64$c;-><init>([Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lg87$a;->b:Lv64$c;

    .line 99
    .line 100
    return-void

    .line 101
    :cond_0
    const-string p0, "Secret key already destroyed"

    .line 102
    .line 103
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_1
    const-string p0, "Secret key must be 256 bit AES key"

    .line 108
    .line 109
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0
.end method


# virtual methods
.method public final a()Lv64$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lg87$a;->a:Lv64$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "SSE-C"

    .line 2
    .line 3
    return-object p0
.end method
