.class public final Ldo9;
.super Lxi9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final zzb:Ldo9;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:Lro9;

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldo9;

    .line 2
    .line 3
    invoke-direct {v0}, Ldo9;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ldo9;->zzb:Ldo9;

    .line 7
    .line 8
    const-class v1, Ldo9;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lxi9;->f(Ljava/lang/Class;Lxi9;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lxi9;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ldo9;->zze:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic p(Ldo9;Lvp9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldo9;->zzf:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 p1, 0x7

    .line 4
    iput p1, p0, Ldo9;->zze:I

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic q(Ldo9;Luq9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldo9;->zzf:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 p1, 0x6

    .line 4
    iput p1, p0, Ldo9;->zze:I

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic r(Ldo9;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    iput p1, p0, Ldo9;->zzg:I

    .line 4
    .line 5
    iget p1, p0, Ldo9;->zzd:I

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    iput p1, p0, Ldo9;->zzd:I

    .line 10
    .line 11
    return-void
.end method

.method public static s()Lco9;
    .locals 1

    .line 1
    sget-object v0, Ldo9;->zzb:Ldo9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lxi9;->k()Lri9;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lco9;

    .line 8
    .line 9
    return-object v0
.end method

.method public static t([B)Ldo9;
    .locals 8

    .line 1
    sget-object v0, Ldo9;->zzb:Ldo9;

    .line 2
    .line 3
    array-length v5, p0

    .line 4
    sget-object v1, Lfi9;->a:Lfi9;

    .line 5
    .line 6
    sget v1, Lpg9;->a:I

    .line 7
    .line 8
    sget-object v1, Lfi9;->a:Lfi9;

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    if-nez v5, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lxi9;->n()Lxi9;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :try_start_0
    sget-object v0, Lbm9;->c:Lbm9;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v0, v3}, Lbm9;->a(Ljava/lang/Class;)Ljm9;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v6, Lrg9;

    .line 29
    .line 30
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    move-object v3, p0

    .line 38
    move-object v1, v0

    .line 39
    invoke-interface/range {v1 .. v6}, Ljm9;->b(Ljava/lang/Object;[BIILrg9;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v2}, Ljm9;->zzf(Ljava/lang/Object;)V
    :try_end_0
    .catch Luj9; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljn9; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    .line 44
    .line 45
    move-object v0, v2

    .line 46
    :goto_0
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    invoke-static {v0, p0}, Lxi9;->i(Lxi9;Z)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance p0, Ljn9;

    .line 57
    .line 58
    invoke-direct {p0}, Ljn9;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Lb6;->f(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object v7

    .line 69
    :cond_2
    :goto_1
    check-cast v0, Ldo9;

    .line 70
    .line 71
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    move-object p0, v0

    .line 74
    goto :goto_2

    .line 75
    :catch_1
    const-string p0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 76
    .line 77
    invoke-static {p0}, Lb6;->f(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v7

    .line 81
    :catch_2
    move-exception v0

    .line 82
    move-object p0, v0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    instance-of v0, v0, Luj9;

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Luj9;

    .line 96
    .line 97
    throw p0

    .line 98
    :cond_3
    new-instance v0, Luj9;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Lb6;->f(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object v7

    .line 116
    :catch_3
    move-exception v0

    .line 117
    move-object p0, v0

    .line 118
    throw p0
.end method

.method public static v(Ldo9;Lwo9;)V
    .locals 0

    .line 1
    iget p1, p1, Lwo9;->a:I

    .line 2
    .line 3
    iput p1, p0, Ldo9;->zzi:I

    .line 4
    .line 5
    iget p1, p0, Ldo9;->zzd:I

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x4

    .line 8
    .line 9
    iput p1, p0, Ldo9;->zzd:I

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic w(Ldo9;Lro9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldo9;->zzh:Lro9;

    .line 2
    .line 3
    iget p1, p0, Ldo9;->zzd:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    iput p1, p0, Ldo9;->zzd:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final j(I)Ljava/lang/Object;
    .locals 11

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
    if-ne p1, p0, :cond_0

    .line 16
    .line 17
    sget-object p0, Ldo9;->zzb:Ldo9;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    throw p0

    .line 22
    :cond_1
    new-instance p0, Lco9;

    .line 23
    .line 24
    sget-object p1, Ldo9;->zzb:Ldo9;

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lri9;-><init>(Lxi9;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    new-instance p0, Ldo9;

    .line 31
    .line 32
    invoke-direct {p0}, Ldo9;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_3
    sget-object v8, Lvo9;->b:Lvo9;

    .line 37
    .line 38
    const-class v9, Luq9;

    .line 39
    .line 40
    const-class v10, Lvp9;

    .line 41
    .line 42
    const-string v0, "zzf"

    .line 43
    .line 44
    const-string v1, "zze"

    .line 45
    .line 46
    const-string v2, "zzd"

    .line 47
    .line 48
    const-string v3, "zzg"

    .line 49
    .line 50
    sget-object v4, Lfo9;->a:Lfo9;

    .line 51
    .line 52
    const-string v5, "zzh"

    .line 53
    .line 54
    const-class v6, Lnp9;

    .line 55
    .line 56
    const-string v7, "zzi"

    .line 57
    .line 58
    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    sget-object p1, Ldo9;->zzb:Ldo9;

    .line 63
    .line 64
    new-instance v0, Lhm9;

    .line 65
    .line 66
    const-string v1, "\u0004\u0006\u0001\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001\u0004<\u0000\u0005\u180c\u0002\u0006<\u0000\u0007<\u0000"

    .line 67
    .line 68
    invoke-direct {v0, p1, v1, p0}, Lhm9;-><init>(Lmg9;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_4
    const/4 p0, 0x1

    .line 73
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public final u()Lvp9;
    .locals 2

    .line 1
    iget v0, p0, Ldo9;->zze:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Ldo9;->zzf:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lvp9;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-static {}, Lvp9;->p()Lvp9;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
