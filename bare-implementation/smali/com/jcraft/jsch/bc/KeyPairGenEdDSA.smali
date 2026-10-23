.class public Lcom/jcraft/jsch/bc/KeyPairGenEdDSA;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/KeyPairGenEdDSA;


# instance fields
.field public a:[B

.field public b:[B


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
.method public final getPrv()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/bc/KeyPairGenEdDSA;->a:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPub()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/bc/KeyPairGenEdDSA;->b:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final init(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    const-string p2, "Ed25519"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "Ed448"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string p2, "invalid curve "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_1
    :goto_0
    const-string p2, "Ed25519"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 123
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    const/16 p2, 0x20

    .line 124
    new-array v0, p2, [B

    .line 125
    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 126
    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Ljb9;->y([B)Lke;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    new-array p2, p2, [B

    .line 128
    invoke-static {p1, p2}, Ljb9;->w(Lke;[B)V

    .line 129
    iput-object p2, p0, Lcom/jcraft/jsch/bc/KeyPairGenEdDSA;->b:[B

    .line 130
    invoke-static {v0}, Lms8;->k([B)[B

    move-result-object p1

    .line 131
    iput-object p1, p0, Lcom/jcraft/jsch/bc/KeyPairGenEdDSA;->a:[B

    return-void

    :catchall_0
    move-exception p0

    .line 132
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 133
    :cond_2
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    const/16 p2, 0x39

    .line 134
    new-array v0, p2, [B

    .line 135
    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 136
    monitor-enter v0

    :try_start_2
    invoke-static {v0}, Lyc9;->r([B)Lnh;

    move-result-object p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    new-array p2, p2, [B

    .line 138
    invoke-static {p1, p2}, Lyc9;->n(Lnh;[B)V

    .line 139
    iput-object p2, p0, Lcom/jcraft/jsch/bc/KeyPairGenEdDSA;->b:[B

    .line 140
    invoke-static {v0}, Lms8;->k([B)[B

    move-result-object p1

    .line 141
    iput-object p1, p0, Lcom/jcraft/jsch/bc/KeyPairGenEdDSA;->a:[B

    return-void

    :catchall_1
    move-exception p0

    .line 142
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final init(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "Ed25519"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "Ed448"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    .line 19
    .line 20
    const-string p2, "invalid curve "

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    const-string v0, "Ed25519"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/4 v0, 0x0

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    array-length p1, p2

    .line 40
    const/16 v1, 0x20

    .line 41
    .line 42
    if-ne p1, v1, :cond_2

    .line 43
    .line 44
    new-array p1, v1, [B

    .line 45
    .line 46
    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    monitor-enter p1

    .line 50
    :try_start_0
    invoke-static {p1}, Ljb9;->y([B)Lke;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    new-array v0, v1, [B

    .line 56
    .line 57
    invoke-static {p2, v0}, Ljb9;->w(Lke;[B)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/jcraft/jsch/bc/KeyPairGenEdDSA;->b:[B

    .line 61
    .line 62
    invoke-static {p1}, Lms8;->k([B)[B

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/jcraft/jsch/bc/KeyPairGenEdDSA;->a:[B

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p0

    .line 72
    :cond_2
    const-string p0, "\'buf\' must have length 32"

    .line 73
    .line 74
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    array-length p1, p2

    .line 79
    const/16 v1, 0x39

    .line 80
    .line 81
    if-ne p1, v1, :cond_4

    .line 82
    .line 83
    new-array p1, v1, [B

    .line 84
    .line 85
    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    .line 87
    .line 88
    monitor-enter p1

    .line 89
    :try_start_2
    invoke-static {p1}, Lyc9;->r([B)Lnh;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    new-array v0, v1, [B

    .line 95
    .line 96
    invoke-static {p2, v0}, Lyc9;->n(Lnh;[B)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/jcraft/jsch/bc/KeyPairGenEdDSA;->b:[B

    .line 100
    .line 101
    invoke-static {p1}, Lms8;->k([B)[B

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p1, p0, Lcom/jcraft/jsch/bc/KeyPairGenEdDSA;->a:[B

    .line 106
    .line 107
    :goto_1
    iget-object p0, p0, Lcom/jcraft/jsch/bc/KeyPairGenEdDSA;->a:[B

    .line 108
    .line 109
    array-length p0, p0

    .line 110
    return-void

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    throw p0

    .line 114
    :cond_4
    const-string p0, "\'buf\' must have length 57"

    .line 115
    .line 116
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method
