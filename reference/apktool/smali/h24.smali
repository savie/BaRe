.class public final Lh24;
.super Ljava/lang/Object;

# interfaces
.implements Lb55;


# static fields
.field public static final h:Ljava/util/Hashtable;


# instance fields
.field public final a:Lhl2;

.field public final b:I

.field public final c:I

.field public d:Lxb5;

.field public e:Lxb5;

.field public final f:[B

.field public final g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lh24;->h:Ljava/util/Hashtable;

    .line 7
    .line 8
    const/16 v1, 0x20

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "GOST3411"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x10

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "MD2"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x40

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "MD4"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string v2, "MD5"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const-string v2, "RIPEMD128"

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-string v2, "RIPEMD160"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v2, "SHA-1"

    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const-string v2, "SHA-224"

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const-string v2, "SHA-256"

    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    const/16 v2, 0x80

    .line 72
    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string v3, "SHA-384"

    .line 78
    .line 79
    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const-string v3, "SHA-512"

    .line 83
    .line 84
    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-string v2, "Tiger"

    .line 88
    .line 89
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-string v2, "Whirlpool"

    .line 93
    .line 94
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public constructor <init>(Luu3;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x40

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lh24;->h:Ljava/util/Hashtable;

    .line 7
    .line 8
    invoke-interface {p1}, Lhl2;->f()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lh24;->a:Lhl2;

    .line 28
    .line 29
    invoke-interface {p1}, Lhl2;->c()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lh24;->b:I

    .line 34
    .line 35
    iput v0, p0, Lh24;->c:I

    .line 36
    .line 37
    new-array v1, v0, [B

    .line 38
    .line 39
    iput-object v1, p0, Lh24;->f:[B

    .line 40
    .line 41
    add-int/2addr v0, p1

    .line 42
    new-array p1, v0, [B

    .line 43
    .line 44
    iput-object p1, p0, Lh24;->g:[B

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    const-string p0, "unknown digest passed: "

    .line 48
    .line 49
    invoke-interface {p1}, Lhl2;->f()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1, p0}, Lb6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    throw p0
.end method


# virtual methods
.method public final a(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lh24;->a:Lhl2;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lhl2;->a(B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()I
    .locals 0

    .line 1
    iget p0, p0, Lh24;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public final c(Lz61;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lh24;->a:Lhl2;

    .line 2
    .line 3
    invoke-interface {v0}, Lhl2;->reset()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Loo4;

    .line 7
    .line 8
    iget-object p1, p1, Loo4;->a:[B

    .line 9
    .line 10
    array-length v1, p1

    .line 11
    iget-object v2, p0, Lh24;->f:[B

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    iget v4, p0, Lh24;->c:I

    .line 15
    .line 16
    if-le v1, v4, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, p1, v3, v1}, Lhl2;->update([BII)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v2, v3}, Lhl2;->doFinal([BI)I

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lh24;->b:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    :goto_0
    array-length p1, v2

    .line 31
    if-ge v1, p1, :cond_1

    .line 32
    .line 33
    aput-byte v3, v2, v1

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lh24;->g:[B

    .line 39
    .line 40
    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    move v1, v3

    .line 44
    :goto_1
    if-ge v1, v4, :cond_2

    .line 45
    .line 46
    aget-byte v5, v2, v1

    .line 47
    .line 48
    xor-int/lit8 v5, v5, 0x36

    .line 49
    .line 50
    int-to-byte v5, v5

    .line 51
    aput-byte v5, v2, v1

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move v1, v3

    .line 57
    :goto_2
    if-ge v1, v4, :cond_3

    .line 58
    .line 59
    aget-byte v5, p1, v1

    .line 60
    .line 61
    xor-int/lit8 v5, v5, 0x5c

    .line 62
    .line 63
    int-to-byte v5, v5

    .line 64
    aput-byte v5, p1, v1

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    instance-of v1, v0, Lxb5;

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    move-object v5, v0

    .line 74
    check-cast v5, Lxb5;

    .line 75
    .line 76
    invoke-interface {v5}, Lxb5;->copy()Lxb5;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    iput-object v5, p0, Lh24;->e:Lxb5;

    .line 81
    .line 82
    check-cast v5, Lhl2;

    .line 83
    .line 84
    invoke-interface {v5, p1, v3, v4}, Lhl2;->update([BII)V

    .line 85
    .line 86
    .line 87
    :cond_4
    array-length p1, v2

    .line 88
    invoke-interface {v0, v2, v3, p1}, Lhl2;->update([BII)V

    .line 89
    .line 90
    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    check-cast v0, Lxb5;

    .line 94
    .line 95
    invoke-interface {v0}, Lxb5;->copy()Lxb5;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Lh24;->d:Lxb5;

    .line 100
    .line 101
    :cond_5
    return-void
.end method

.method public final doFinal([BI)I
    .locals 6

    .line 1
    iget-object v0, p0, Lh24;->a:Lhl2;

    .line 2
    .line 3
    iget-object v1, p0, Lh24;->g:[B

    .line 4
    .line 5
    iget v2, p0, Lh24;->c:I

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lhl2;->doFinal([BI)I

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lh24;->e:Lxb5;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    move-object v5, v0

    .line 16
    check-cast v5, Lxb5;

    .line 17
    .line 18
    invoke-interface {v5, v3}, Lxb5;->b(Lxb5;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Lhl2;->c()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-interface {v0, v1, v2, v3}, Lhl2;->update([BII)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    array-length v3, v1

    .line 30
    invoke-interface {v0, v1, v4, v3}, Lhl2;->update([BII)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-interface {v0, p1, p2}, Lhl2;->doFinal([BI)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    :goto_1
    array-length p2, v1

    .line 38
    if-ge v2, p2, :cond_1

    .line 39
    .line 40
    aput-byte v4, v1, v2

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object p2, p0, Lh24;->d:Lxb5;

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    check-cast v0, Lxb5;

    .line 50
    .line 51
    invoke-interface {v0, p2}, Lxb5;->b(Lxb5;)V

    .line 52
    .line 53
    .line 54
    return p1

    .line 55
    :cond_2
    iget-object p0, p0, Lh24;->f:[B

    .line 56
    .line 57
    array-length p2, p0

    .line 58
    invoke-interface {v0, p0, v4, p2}, Lhl2;->update([BII)V

    .line 59
    .line 60
    .line 61
    return p1
.end method

.method public final update([BII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lh24;->a:Lhl2;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lhl2;->update([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
