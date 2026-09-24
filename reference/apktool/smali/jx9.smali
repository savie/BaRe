.class public final Ljx9;
.super Lk79;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final zzc:Ljx9;

.field private static volatile zzd:La89;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La89;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Lmz9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljx9;

    .line 2
    .line 3
    invoke-direct {v0}, Lk79;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ljx9;->zzc:Ljx9;

    .line 7
    .line 8
    const-class v1, Ljx9;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lk79;->j(Ljava/lang/Class;Lk79;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static t()Lix9;
    .locals 1

    .line 1
    sget-object v0, Ljx9;->zzc:Ljx9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk79;->o()Lj79;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lix9;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic u(Ljx9;Lmz9;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljx9;->zzf:Lmz9;

    .line 5
    .line 6
    iget p1, p0, Ljx9;->zze:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Ljx9;->zze:I

    .line 11
    .line 12
    return-void
.end method

.method public static v()Ljx9;
    .locals 1

    .line 1
    sget-object v0, Ljx9;->zzc:Ljx9;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final d(I)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p0, Llx9;->a:[I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    sub-int/2addr p1, v0

    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    throw p0

    .line 12
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_1
    sget-object p0, Ljx9;->zzd:La89;

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    const-class p1, Ljx9;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p0, Ljx9;->zzd:La89;

    .line 25
    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    new-instance p0, Li79;

    .line 29
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object p0, Ljx9;->zzd:La89;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit p1

    .line 39
    return-object p0

    .line 40
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_1
    return-object p0

    .line 43
    :pswitch_2
    sget-object p0, Ljx9;->zzc:Ljx9;

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_3
    const-string p0, "zze"

    .line 47
    .line 48
    const-string p1, "zzf"

    .line 49
    .line 50
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string p1, "\u0000\u0001\u0000\u0001\u0002\u0002\u0001\u0000\u0000\u0000\u0002\u1009\u0000"

    .line 55
    .line 56
    sget-object v0, Ljx9;->zzc:Ljx9;

    .line 57
    .line 58
    new-instance v1, Ld89;

    .line 59
    .line 60
    invoke-direct {v1, v0, p1, p0}, Ld89;-><init>(Lo69;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :pswitch_4
    new-instance p0, Lix9;

    .line 65
    .line 66
    sget-object p1, Ljx9;->zzc:Ljx9;

    .line 67
    .line 68
    invoke-direct {p0, p1}, Lj79;-><init>(Lk79;)V

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_5
    new-instance p0, Ljx9;

    .line 73
    .line 74
    invoke-direct {p0}, Lk79;-><init>()V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w()Lmz9;
    .locals 0

    .line 1
    iget-object p0, p0, Ljx9;->zzf:Lmz9;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lmz9;->y()Lmz9;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    return-object p0
.end method
