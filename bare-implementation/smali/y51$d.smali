.class public Ly51$d;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/zip/Checksum;
.implements Lz51;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final b:[J

.field public static final c:[[J


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [J

    .line 4
    .line 5
    sput-object v1, Ly51$d;->b:[J

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    aput v0, v1, v2

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/16 v4, 0x8

    .line 15
    .line 16
    aput v4, v1, v3

    .line 17
    .line 18
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 19
    .line 20
    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, [[J

    .line 25
    .line 26
    sput-object v1, Ly51$d;->c:[[J

    .line 27
    .line 28
    move v1, v3

    .line 29
    :goto_0
    if-ge v1, v0, :cond_2

    .line 30
    .line 31
    int-to-long v5, v1

    .line 32
    move v7, v3

    .line 33
    :goto_1
    if-ge v7, v4, :cond_1

    .line 34
    .line 35
    const-wide/16 v8, 0x1

    .line 36
    .line 37
    and-long v10, v5, v8

    .line 38
    .line 39
    cmp-long v8, v10, v8

    .line 40
    .line 41
    if-nez v8, :cond_0

    .line 42
    .line 43
    ushr-long/2addr v5, v2

    .line 44
    const-wide v8, -0x65936cd653b4364bL

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    xor-long/2addr v5, v8

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    ushr-long/2addr v5, v2

    .line 52
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    sget-object v7, Ly51$d;->b:[J

    .line 56
    .line 57
    aput-wide v5, v7, v1

    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object v1, Ly51$d;->c:[[J

    .line 63
    .line 64
    sget-object v5, Ly51$d;->b:[J

    .line 65
    .line 66
    aput-object v5, v1, v3

    .line 67
    .line 68
    :goto_3
    if-ge v3, v0, :cond_4

    .line 69
    .line 70
    sget-object v1, Ly51$d;->b:[J

    .line 71
    .line 72
    aget-wide v5, v1, v3

    .line 73
    .line 74
    move v1, v2

    .line 75
    :goto_4
    if-ge v1, v4, :cond_3

    .line 76
    .line 77
    sget-object v7, Ly51$d;->b:[J

    .line 78
    .line 79
    long-to-int v8, v5

    .line 80
    and-int/lit16 v8, v8, 0xff

    .line 81
    .line 82
    aget-wide v8, v7, v8

    .line 83
    .line 84
    ushr-long/2addr v5, v4

    .line 85
    xor-long/2addr v5, v8

    .line 86
    sget-object v7, Ly51$d;->c:[[J

    .line 87
    .line 88
    aget-object v7, v7, v1

    .line 89
    .line 90
    aput-wide v5, v7, v3

    .line 91
    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Ly51$d;->a:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ly51$d;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final reset()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Ly51$d;->a:J

    .line 4
    .line 5
    return-void
.end method

.method public final sum()[B
    .locals 10

    .line 1
    iget-wide v0, p0, Ly51$d;->a:J

    .line 2
    .line 3
    const/16 p0, 0x38

    .line 4
    .line 5
    ushr-long v2, v0, p0

    .line 6
    .line 7
    long-to-int p0, v2

    .line 8
    int-to-byte p0, p0

    .line 9
    const/16 v2, 0x30

    .line 10
    .line 11
    ushr-long v2, v0, v2

    .line 12
    .line 13
    long-to-int v2, v2

    .line 14
    int-to-byte v2, v2

    .line 15
    const/16 v3, 0x28

    .line 16
    .line 17
    ushr-long v3, v0, v3

    .line 18
    .line 19
    long-to-int v3, v3

    .line 20
    int-to-byte v3, v3

    .line 21
    const/16 v4, 0x20

    .line 22
    .line 23
    ushr-long v4, v0, v4

    .line 24
    .line 25
    long-to-int v4, v4

    .line 26
    int-to-byte v4, v4

    .line 27
    const/16 v5, 0x18

    .line 28
    .line 29
    ushr-long v5, v0, v5

    .line 30
    .line 31
    long-to-int v5, v5

    .line 32
    int-to-byte v5, v5

    .line 33
    const/16 v6, 0x10

    .line 34
    .line 35
    ushr-long v6, v0, v6

    .line 36
    .line 37
    long-to-int v6, v6

    .line 38
    int-to-byte v6, v6

    .line 39
    const/16 v7, 0x8

    .line 40
    .line 41
    ushr-long v8, v0, v7

    .line 42
    .line 43
    long-to-int v8, v8

    .line 44
    int-to-byte v8, v8

    .line 45
    long-to-int v0, v0

    .line 46
    int-to-byte v0, v0

    .line 47
    new-array v1, v7, [B

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    aput-byte p0, v1, v7

    .line 51
    .line 52
    const/4 p0, 0x1

    .line 53
    aput-byte v2, v1, p0

    .line 54
    .line 55
    const/4 p0, 0x2

    .line 56
    aput-byte v3, v1, p0

    .line 57
    .line 58
    const/4 p0, 0x3

    .line 59
    aput-byte v4, v1, p0

    .line 60
    .line 61
    const/4 p0, 0x4

    .line 62
    aput-byte v5, v1, p0

    .line 63
    .line 64
    const/4 p0, 0x5

    .line 65
    aput-byte v6, v1, p0

    .line 66
    .line 67
    const/4 p0, 0x6

    .line 68
    aput-byte v8, v1, p0

    .line 69
    .line 70
    const/4 p0, 0x7

    .line 71
    aput-byte v0, v1, p0

    .line 72
    .line 73
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CRC64NVME{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ly51$d;->sum()[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Ly51;->b([B)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, "}"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final update(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 164
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Ly51$d;->update([BII)V

    return-void
.end method

.method public final update([BII)V
    .locals 11

    .line 1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-wide v1, p0, Ly51$d;->a:J

    .line 15
    .line 16
    not-long v1, v1

    .line 17
    iput-wide v1, p0, Ly51$d;->a:J

    .line 18
    .line 19
    :goto_0
    array-length v1, p1

    .line 20
    const/16 v2, 0x40

    .line 21
    .line 22
    const/16 v3, 0x8

    .line 23
    .line 24
    const-wide/16 v4, 0xff

    .line 25
    .line 26
    if-lt v1, v2, :cond_0

    .line 27
    .line 28
    array-length v1, p1

    .line 29
    sub-int/2addr v1, v0

    .line 30
    if-le v1, v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getLong()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iget-wide v6, p0, Ly51$d;->a:J

    .line 37
    .line 38
    xor-long/2addr v0, v6

    .line 39
    iput-wide v0, p0, Ly51$d;->a:J

    .line 40
    .line 41
    const/4 v2, 0x7

    .line 42
    sget-object v6, Ly51$d;->c:[[J

    .line 43
    .line 44
    aget-object v2, v6, v2

    .line 45
    .line 46
    and-long v7, v0, v4

    .line 47
    .line 48
    long-to-int v7, v7

    .line 49
    aget-wide v7, v2, v7

    .line 50
    .line 51
    const/4 v2, 0x6

    .line 52
    aget-object v2, v6, v2

    .line 53
    .line 54
    ushr-long v9, v0, v3

    .line 55
    .line 56
    and-long/2addr v9, v4

    .line 57
    long-to-int v3, v9

    .line 58
    aget-wide v9, v2, v3

    .line 59
    .line 60
    xor-long v2, v7, v9

    .line 61
    .line 62
    const/4 v7, 0x5

    .line 63
    aget-object v7, v6, v7

    .line 64
    .line 65
    const/16 v8, 0x10

    .line 66
    .line 67
    ushr-long v8, v0, v8

    .line 68
    .line 69
    and-long/2addr v8, v4

    .line 70
    long-to-int v8, v8

    .line 71
    aget-wide v8, v7, v8

    .line 72
    .line 73
    xor-long/2addr v2, v8

    .line 74
    const/4 v7, 0x4

    .line 75
    aget-object v7, v6, v7

    .line 76
    .line 77
    const/16 v8, 0x18

    .line 78
    .line 79
    ushr-long v8, v0, v8

    .line 80
    .line 81
    and-long/2addr v8, v4

    .line 82
    long-to-int v8, v8

    .line 83
    aget-wide v8, v7, v8

    .line 84
    .line 85
    xor-long/2addr v2, v8

    .line 86
    const/4 v7, 0x3

    .line 87
    aget-object v7, v6, v7

    .line 88
    .line 89
    const/16 v8, 0x20

    .line 90
    .line 91
    ushr-long v8, v0, v8

    .line 92
    .line 93
    and-long/2addr v8, v4

    .line 94
    long-to-int v8, v8

    .line 95
    aget-wide v8, v7, v8

    .line 96
    .line 97
    xor-long/2addr v2, v8

    .line 98
    const/4 v7, 0x2

    .line 99
    aget-object v7, v6, v7

    .line 100
    .line 101
    const/16 v8, 0x28

    .line 102
    .line 103
    ushr-long v8, v0, v8

    .line 104
    .line 105
    and-long/2addr v8, v4

    .line 106
    long-to-int v8, v8

    .line 107
    aget-wide v8, v7, v8

    .line 108
    .line 109
    xor-long/2addr v2, v8

    .line 110
    const/4 v7, 0x1

    .line 111
    aget-object v7, v6, v7

    .line 112
    .line 113
    const/16 v8, 0x30

    .line 114
    .line 115
    ushr-long v8, v0, v8

    .line 116
    .line 117
    and-long/2addr v4, v8

    .line 118
    long-to-int v4, v4

    .line 119
    aget-wide v4, v7, v4

    .line 120
    .line 121
    xor-long/2addr v2, v4

    .line 122
    const/4 v4, 0x0

    .line 123
    aget-object v4, v6, v4

    .line 124
    .line 125
    const/16 v5, 0x38

    .line 126
    .line 127
    ushr-long/2addr v0, v5

    .line 128
    long-to-int v0, v0

    .line 129
    aget-wide v0, v4, v0

    .line 130
    .line 131
    xor-long/2addr v0, v2

    .line 132
    iput-wide v0, p0, Ly51$d;->a:J

    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    goto :goto_0

    .line 139
    :cond_0
    :goto_1
    iget-wide v1, p0, Ly51$d;->a:J

    .line 140
    .line 141
    if-ge v0, p3, :cond_1

    .line 142
    .line 143
    aget-byte p2, p1, v0

    .line 144
    .line 145
    int-to-long v6, p2

    .line 146
    xor-long/2addr v6, v1

    .line 147
    and-long/2addr v6, v4

    .line 148
    long-to-int p2, v6

    .line 149
    sget-object v6, Ly51$d;->b:[J

    .line 150
    .line 151
    aget-wide v7, v6, p2

    .line 152
    .line 153
    ushr-long/2addr v1, v3

    .line 154
    xor-long/2addr v1, v7

    .line 155
    iput-wide v1, p0, Ly51$d;->a:J

    .line 156
    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_1
    not-long p1, v1

    .line 161
    iput-wide p1, p0, Ly51$d;->a:J

    .line 162
    .line 163
    return-void
.end method
