.class public Lcom/jcraft/jsch/SftpATTRS;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final SSH_FILEXFER_ATTR_ACMODTIME:I = 0x8

.field public static final SSH_FILEXFER_ATTR_EXTENDED:I = -0x80000000

.field public static final SSH_FILEXFER_ATTR_PERMISSIONS:I = 0x4

.field public static final SSH_FILEXFER_ATTR_SIZE:I = 0x1

.field public static final SSH_FILEXFER_ATTR_UIDGID:I = 0x2

.field public static final i:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "EEE MMM dd HH:mm:ss zzz yyyy"

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/jcraft/jsch/SftpATTRS;->i:Ljava/time/format/DateTimeFormatter;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 10

    .line 1
    new-instance v0, Lcom/jcraft/jsch/SftpATTRS;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jcraft/jsch/SftpATTRS;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 11
    .line 12
    and-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iput-wide v1, v0, Lcom/jcraft/jsch/SftpATTRS;->b:J

    .line 21
    .line 22
    :cond_0
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 23
    .line 24
    and-int/lit8 v1, v1, 0x2

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->c:I

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->d:I

    .line 39
    .line 40
    :cond_1
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 41
    .line 42
    and-int/lit8 v1, v1, 0x4

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    .line 51
    .line 52
    :cond_2
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 53
    .line 54
    and-int/lit8 v1, v1, 0x8

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->f:I

    .line 63
    .line 64
    :cond_3
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 65
    .line 66
    and-int/lit8 v1, v1, 0x8

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->g:I

    .line 75
    .line 76
    :cond_4
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 77
    .line 78
    const/high16 v2, -0x80000000

    .line 79
    .line 80
    and-int/2addr v1, v2

    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-lez v1, :cond_5

    .line 88
    .line 89
    mul-int/lit8 v2, v1, 0x2

    .line 90
    .line 91
    new-array v2, v2, [Ljava/lang/String;

    .line 92
    .line 93
    iput-object v2, v0, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    move v3, v2

    .line 97
    :goto_0
    if-ge v3, v1, :cond_5

    .line 98
    .line 99
    iget-object v4, v0, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    .line 100
    .line 101
    mul-int/lit8 v5, v3, 0x2

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    sget-object v7, Lcom/jcraft/jsch/Util;->a:[B

    .line 108
    .line 109
    array-length v7, v6

    .line 110
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 111
    .line 112
    new-instance v9, Ljava/lang/String;

    .line 113
    .line 114
    invoke-direct {v9, v6, v2, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 115
    .line 116
    .line 117
    aput-object v9, v4, v5

    .line 118
    .line 119
    iget-object v4, v0, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    .line 120
    .line 121
    add-int/lit8 v5, v5, 0x1

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    array-length v7, v6

    .line 128
    new-instance v9, Ljava/lang/String;

    .line 129
    .line 130
    invoke-direct {v9, v6, v2, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 131
    .line 132
    .line 133
    aput-object v9, v4, v5

    .line 134
    .line 135
    add-int/lit8 v3, v3, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_5
    return-object v0
.end method


# virtual methods
.method public final b(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    .line 8
    .line 9
    const v0, 0xf000

    .line 10
    .line 11
    .line 12
    and-int/2addr p0, v0

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final c()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0xc

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v2

    .line 12
    :goto_0
    and-int/lit8 v3, v0, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x8

    .line 17
    .line 18
    :cond_1
    and-int/lit8 v3, v0, 0x4

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x4

    .line 23
    .line 24
    :cond_2
    and-int/lit8 v3, v0, 0x8

    .line 25
    .line 26
    if-eqz v3, :cond_3

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x8

    .line 29
    .line 30
    :cond_3
    const/high16 v3, -0x80000000

    .line 31
    .line 32
    and-int/2addr v0, v3

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    add-int/2addr v1, v2

    .line 36
    iget-object v0, p0, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    .line 37
    .line 38
    array-length v0, v0

    .line 39
    div-int/lit8 v0, v0, 0x2

    .line 40
    .line 41
    if-lez v0, :cond_4

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_1
    if-ge v3, v0, :cond_4

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x4

    .line 47
    .line 48
    iget-object v4, p0, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    .line 49
    .line 50
    mul-int/lit8 v5, v3, 0x2

    .line 51
    .line 52
    aget-object v4, v4, v5

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    add-int/2addr v4, v1

    .line 59
    add-int/2addr v4, v2

    .line 60
    iget-object v1, p0, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    .line 61
    .line 62
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    aget-object v1, v1, v5

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    add-int/2addr v1, v4

    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    return v1
.end method

.method public final getATime()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/SftpATTRS;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public final getAtimeString()Ljava/lang/String;
    .locals 2

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/SftpATTRS;->f:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p0, v0}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v0, Lcom/jcraft/jsch/SftpATTRS;->i:Ljava/time/format/DateTimeFormatter;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final getExtended()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFlags()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public final getGId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/SftpATTRS;->d:I

    .line 2
    .line 3
    return p0
.end method

.method public final getMTime()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/SftpATTRS;->g:I

    .line 2
    .line 3
    return p0
.end method

.method public final getMtimeString()Ljava/lang/String;
    .locals 2

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/SftpATTRS;->g:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p0, v0}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v0, Lcom/jcraft/jsch/SftpATTRS;->i:Ljava/time/format/DateTimeFormatter;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final getPermissions()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public final getPermissionsString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x4000

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0x2d

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x64

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const v1, 0xa000

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x6c

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :goto_0
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    .line 43
    .line 44
    and-int/lit16 v1, v1, 0x100

    .line 45
    .line 46
    const/16 v3, 0x72

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :goto_1
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    .line 58
    .line 59
    and-int/lit16 v1, v1, 0x80

    .line 60
    .line 61
    const/16 v4, 0x77

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :goto_2
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    .line 73
    .line 74
    and-int/lit16 v5, v1, 0x800

    .line 75
    .line 76
    const/16 v6, 0x73

    .line 77
    .line 78
    const/16 v7, 0x78

    .line 79
    .line 80
    if-eqz v5, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    and-int/lit8 v1, v1, 0x40

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :goto_3
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    .line 98
    .line 99
    and-int/lit8 v1, v1, 0x20

    .line 100
    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    :goto_4
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    .line 111
    .line 112
    and-int/lit8 v1, v1, 0x10

    .line 113
    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :goto_5
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    .line 124
    .line 125
    and-int/lit16 v5, v1, 0x400

    .line 126
    .line 127
    if-eqz v5, :cond_8

    .line 128
    .line 129
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_8
    and-int/lit8 v1, v1, 0x8

    .line 134
    .line 135
    if-eqz v1, :cond_9

    .line 136
    .line 137
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :goto_6
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    .line 145
    .line 146
    and-int/lit8 v1, v1, 0x4

    .line 147
    .line 148
    if-eqz v1, :cond_a

    .line 149
    .line 150
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    :goto_7
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    .line 158
    .line 159
    and-int/lit8 v1, v1, 0x2

    .line 160
    .line 161
    if-eqz v1, :cond_b

    .line 162
    .line 163
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    goto :goto_8

    .line 167
    :cond_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    :goto_8
    iget p0, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    .line 171
    .line 172
    and-int/lit8 p0, p0, 0x1

    .line 173
    .line 174
    if-eqz p0, :cond_c

    .line 175
    .line 176
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    goto :goto_9

    .line 180
    :cond_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpATTRS;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/SftpATTRS;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public final isBlk()Z
    .locals 1

    .line 1
    const/16 v0, 0x6000

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isChr()Z
    .locals 1

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDir()Z
    .locals 1

    .line 1
    const/16 v0, 0x4000

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isFifo()Z
    .locals 1

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isLink()Z
    .locals 1

    .line 1
    const v0, 0xa000

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final isReg()Z
    .locals 1

    .line 1
    const v0, 0x8000

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final isSock()Z
    .locals 1

    .line 1
    const v0, 0xc000

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final setACMODTIME(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 6
    .line 7
    iput p1, p0, Lcom/jcraft/jsch/SftpATTRS;->f:I

    .line 8
    .line 9
    iput p2, p0, Lcom/jcraft/jsch/SftpATTRS;->g:I

    .line 10
    .line 11
    return-void
.end method

.method public final setPERMISSIONS(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 6
    .line 7
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    .line 8
    .line 9
    and-int/lit16 v0, v0, -0x1000

    .line 10
    .line 11
    and-int/lit16 p1, p1, 0xfff

    .line 12
    .line 13
    or-int/2addr p1, v0

    .line 14
    iput p1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    .line 15
    .line 16
    return-void
.end method

.method public final setSIZE(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/jcraft/jsch/SftpATTRS;->b:J

    .line 8
    .line 9
    return-void
.end method

.method public final setUIDGID(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 6
    .line 7
    iput p1, p0, Lcom/jcraft/jsch/SftpATTRS;->c:I

    .line 8
    .line 9
    iput p2, p0, Lcom/jcraft/jsch/SftpATTRS;->d:I

    .line 10
    .line 11
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->getPermissionsString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/jcraft/jsch/SftpATTRS;->c:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/jcraft/jsch/SftpATTRS;->d:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-wide v2, p0, Lcom/jcraft/jsch/SftpATTRS;->b:J

    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->getMtimeString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method
