.class public Lcom/jcraft/jsch/HostKey;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final ECDSA256:I = 0x3

.field public static final ECDSA384:I = 0x4

.field public static final ECDSA521:I = 0x5

.field public static final ED25519:I = 0x6

.field public static final ED448:I = 0x7

.field public static final GUESS:I = 0x0

.field public static final SSHDSS:I = 0x1

.field public static final SSHRSA:I = 0x2

.field public static final UNKNOWN:I = -0x1

.field public static final f:[[B


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:I

.field public final d:[B

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    const-string v1, "ssh-dss"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v1, "ssh-rsa"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v1, "ecdsa-sha2-nistp256"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v1, "ecdsa-sha2-nistp384"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const-string v1, "ecdsa-sha2-nistp521"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v1, "ssh-ed25519"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const-string v1, "ssh-ed448"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    filled-new-array/range {v2 .. v8}, [[B

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/jcraft/jsch/HostKey;->f:[[B

    .line 52
    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 111
    const-string v1, ""

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/jcraft/jsch/HostKey;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    .line 7
    .line 8
    if-nez p3, :cond_7

    .line 9
    .line 10
    const/16 p1, 0x8

    .line 11
    .line 12
    aget-byte p1, p4, p1

    .line 13
    .line 14
    const/16 p2, 0x64

    .line 15
    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput p1, p0, Lcom/jcraft/jsch/HostKey;->c:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 p2, 0x72

    .line 23
    .line 24
    if-ne p1, p2, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    iput p1, p0, Lcom/jcraft/jsch/HostKey;->c:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/16 p2, 0x32

    .line 31
    .line 32
    const/16 p3, 0xa

    .line 33
    .line 34
    const/16 v0, 0x65

    .line 35
    .line 36
    if-ne p1, v0, :cond_2

    .line 37
    .line 38
    aget-byte v1, p4, p3

    .line 39
    .line 40
    if-ne v1, p2, :cond_2

    .line 41
    .line 42
    const/4 p1, 0x6

    .line 43
    iput p1, p0, Lcom/jcraft/jsch/HostKey;->c:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    if-ne p1, v0, :cond_3

    .line 47
    .line 48
    aget-byte p3, p4, p3

    .line 49
    .line 50
    const/16 v0, 0x34

    .line 51
    .line 52
    if-ne p3, v0, :cond_3

    .line 53
    .line 54
    const/4 p1, 0x7

    .line 55
    iput p1, p0, Lcom/jcraft/jsch/HostKey;->c:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/16 p3, 0x14

    .line 59
    .line 60
    const/16 v0, 0x61

    .line 61
    .line 62
    if-ne p1, v0, :cond_4

    .line 63
    .line 64
    aget-byte v1, p4, p3

    .line 65
    .line 66
    if-ne v1, p2, :cond_4

    .line 67
    .line 68
    const/4 p1, 0x3

    .line 69
    iput p1, p0, Lcom/jcraft/jsch/HostKey;->c:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    if-ne p1, v0, :cond_5

    .line 73
    .line 74
    aget-byte p2, p4, p3

    .line 75
    .line 76
    const/16 v1, 0x33

    .line 77
    .line 78
    if-ne p2, v1, :cond_5

    .line 79
    .line 80
    const/4 p1, 0x4

    .line 81
    iput p1, p0, Lcom/jcraft/jsch/HostKey;->c:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    if-ne p1, v0, :cond_6

    .line 85
    .line 86
    aget-byte p1, p4, p3

    .line 87
    .line 88
    const/16 p2, 0x35

    .line 89
    .line 90
    if-ne p1, p2, :cond_6

    .line 91
    .line 92
    const/4 p1, 0x5

    .line 93
    iput p1, p0, Lcom/jcraft/jsch/HostKey;->c:I

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    const-string p0, "invalid key type"

    .line 97
    .line 98
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/4 p0, 0x0

    .line 102
    throw p0

    .line 103
    :cond_7
    iput p3, p0, Lcom/jcraft/jsch/HostKey;->c:I

    .line 104
    .line 105
    :goto_0
    iput-object p4, p0, Lcom/jcraft/jsch/HostKey;->d:[B

    .line 106
    .line 107
    iput-object p5, p0, Lcom/jcraft/jsch/HostKey;->e:Ljava/lang/String;

    .line 108
    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, -0x1

    .line 13
    move v4, v0

    .line 14
    move v5, v4

    .line 15
    move v7, v5

    .line 16
    move v6, v3

    .line 17
    :goto_0
    const/16 v8, 0x2a

    .line 18
    .line 19
    if-ge v4, v2, :cond_3

    .line 20
    .line 21
    if-ge v5, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    const/16 v10, 0x3f

    .line 28
    .line 29
    if-eq v9, v10, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    if-ne v9, v10, :cond_1

    .line 40
    .line 41
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-ge v5, v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-ne v9, v8, :cond_2

    .line 53
    .line 54
    add-int/lit8 v6, v5, 0x1

    .line 55
    .line 56
    move v7, v6

    .line 57
    move v6, v5

    .line 58
    move v5, v7

    .line 59
    move v7, v4

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    if-eq v6, v3, :cond_5

    .line 62
    .line 63
    add-int/lit8 v5, v6, 0x1

    .line 64
    .line 65
    add-int/lit8 v7, v7, 0x1

    .line 66
    .line 67
    move v4, v7

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    :goto_1
    if-ge v5, v1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-ne p1, v8, :cond_4

    .line 76
    .line 77
    add-int/lit8 v5, v5, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    if-ne v5, v1, :cond_5

    .line 81
    .line 82
    const/4 p0, 0x1

    .line 83
    return p0

    .line 84
    :cond_5
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    const/4 v6, 0x0

    .line 12
    move v2, v6

    .line 13
    :goto_0
    if-ge v2, p0, :cond_3

    .line 14
    .line 15
    const/16 v1, 0x2c

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    const/4 v1, -0x1

    .line 22
    if-ne v7, v1, :cond_1

    .line 23
    .line 24
    sub-int/2addr p0, v2

    .line 25
    if-eq v5, p0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 v1, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    move-object v3, p1

    .line 31
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_1
    move-object v3, p1

    .line 37
    sub-int p1, v7, v2

    .line 38
    .line 39
    if-ne v5, p1, :cond_2

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_2
    add-int/lit8 v2, v7, 0x1

    .line 52
    .line 53
    move-object p1, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    :goto_1
    return v6
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    move v2, v0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_3

    .line 19
    .line 20
    const/16 v3, 0x2c

    .line 21
    .line 22
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, -0x1

    .line 27
    if-ne v3, v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0, p1}, Lcom/jcraft/jsch/HostKey;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2, p1}, Lcom/jcraft/jsch/HostKey;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    :goto_1
    const/4 p0, 0x1

    .line 59
    return p0

    .line 60
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    :goto_2
    return v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/HostKey;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFingerPrint(Lcom/jcraft/jsch/JSch;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "FingerprintHash"

    .line 3
    .line 4
    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-class v2, Lcom/jcraft/jsch/HASH;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/jcraft/jsch/HASH;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    move-object v0, v1

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    iget-object v2, p1, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x3

    .line 48
    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    iget-object p1, p1, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v4, "getFingerPrint: "

    .line 63
    .line 64
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-interface {p1, v3, v2, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/jcraft/jsch/HostKey;->d:[B

    .line 82
    .line 83
    invoke-static {v0, p0}, Lcom/jcraft/jsch/Util;->k(Lcom/jcraft/jsch/HASH;[B)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/HostKey;->d:[B

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1, p0}, Lcom/jcraft/jsch/Util;->q(IZ[B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    array-length v0, p0

    .line 10
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/String;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, p0, v3, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method

.method public final getMarker()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/HostKey;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 2

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/HostKey;->c:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x6

    .line 10
    if-eq p0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x7

    .line 13
    if-eq p0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq p0, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-ne p0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "UNKNOWN"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    :goto_0
    sget-object v1, Lcom/jcraft/jsch/HostKey;->f:[[B

    .line 29
    .line 30
    sub-int/2addr p0, v0

    .line 31
    aget-object p0, v1, p0

    .line 32
    .line 33
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
