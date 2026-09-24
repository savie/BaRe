.class public final Lwm9;
.super Lih9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final zzb:Lwm9;


# instance fields
.field private zzd:Loh9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lwm9;

    .line 2
    .line 3
    invoke-direct {v0}, Lwm9;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwm9;->zzb:Lwm9;

    .line 7
    .line 8
    invoke-static {v0}, Lih9;->e(Lwm9;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lih9;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lgk9;->d:Lgk9;

    .line 5
    .line 6
    iput-object v0, p0, Lwm9;->zzd:Loh9;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic i()Lwm9;
    .locals 1

    .line 1
    sget-object v0, Lwm9;->zzb:Lwm9;

    .line 2
    .line 3
    return-object v0
.end method

.method public static j([B)Lwm9;
    .locals 7

    .line 1
    sget-object v0, Lwm9;->zzb:Lwm9;

    .line 2
    .line 3
    array-length v5, p0

    .line 4
    invoke-virtual {v0}, Lih9;->b()Lih9;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    :try_start_0
    sget-object v0, Ldk9;->c:Ldk9;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ldk9;->a(Ljava/lang/Class;)Ljk9;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v6, Lof9;

    .line 19
    .line 20
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v3, p0

    .line 25
    invoke-interface/range {v1 .. v6}, Ljk9;->d(Ljava/lang/Object;[BIILof9;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2}, Ljk9;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lxh9; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcl9; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    invoke-virtual {v2, p0}, Lih9;->h(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Byte;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ne v1, p0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Ldk9;->a(Ljava/lang/Class;)Ljk9;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-interface {p0, v2}, Ljk9;->f(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    const/4 v0, 0x2

    .line 60
    invoke-virtual {v2, v0}, Lih9;->h(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    :goto_0
    check-cast v2, Lwm9;

    .line 66
    .line 67
    return-object v2

    .line 68
    :cond_1
    new-instance p0, Lcl9;

    .line 69
    .line 70
    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    .line 71
    .line 72
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lxh9;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :catch_0
    invoke-static {}, Lxh9;->c()Lxh9;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    throw p0

    .line 90
    :catch_1
    move-exception v0

    .line 91
    move-object p0, v0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    instance-of v0, v0, Lxh9;

    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Lxh9;

    .line 105
    .line 106
    throw p0

    .line 107
    :cond_2
    new-instance v0, Lxh9;

    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :catch_2
    move-exception v0

    .line 118
    move-object p0, v0

    .line 119
    new-instance v0, Lxh9;

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :catch_3
    move-exception v0

    .line 130
    move-object p0, v0

    .line 131
    throw p0
.end method


# virtual methods
.method public final h(I)Ljava/lang/Object;
    .locals 1

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    const/4 p0, 0x2

    .line 6
    if-eq p1, p0, :cond_3

    .line 7
    .line 8
    const/4 p0, 0x3

    .line 9
    if-eq p1, p0, :cond_2

    .line 10
    .line 11
    const/4 p0, 0x4

    .line 12
    if-eq p1, p0, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x5

    .line 15
    if-eq p1, p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    sget-object p0, Lwm9;->zzb:Lwm9;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    new-instance p0, Lum9;

    .line 23
    .line 24
    invoke-direct {p0}, Lum9;-><init>()V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    new-instance p0, Lwm9;

    .line 29
    .line 30
    invoke-direct {p0}, Lwm9;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_3
    const-string p0, "zzd"

    .line 35
    .line 36
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object p1, Lwm9;->zzb:Lwm9;

    .line 41
    .line 42
    new-instance v0, Lhk9;

    .line 43
    .line 44
    invoke-direct {v0, p1, p0}, Lhk9;-><init>(Lwm9;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_4
    const/4 p0, 0x1

    .line 49
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public final k()Loh9;
    .locals 0

    .line 1
    iget-object p0, p0, Lwm9;->zzd:Loh9;

    .line 2
    .line 3
    return-object p0
.end method
