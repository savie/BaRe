.class public final Ljz9;
.super Lk79;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final zzc:Ljz9;

.field private static volatile zzd:La89;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La89;"
        }
    .end annotation
.end field


# instance fields
.field private zze:Ljava/lang/String;

.field private zzf:Lt69;

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljz9;

    .line 2
    .line 3
    invoke-direct {v0}, Ljz9;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ljz9;->zzc:Ljz9;

    .line 7
    .line 8
    const-class v1, Ljz9;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lk79;->j(Ljava/lang/Class;Lk79;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk79;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Ljz9;->zze:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lt69;->b:Lx69;

    .line 9
    .line 10
    iput-object v0, p0, Ljz9;->zzf:Lt69;

    .line 11
    .line 12
    return-void
.end method

.method public static t()Liz9;
    .locals 1

    .line 1
    sget-object v0, Ljz9;->zzc:Ljz9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk79;->o()Lj79;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Liz9;

    .line 8
    .line 9
    return-object v0
.end method

.method public static u(Ljz9;I)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    throw p0

    .line 9
    :pswitch_0
    const/4 p1, -0x1

    .line 10
    goto :goto_0

    .line 11
    :pswitch_1
    const/4 p1, 0x4

    .line 12
    goto :goto_0

    .line 13
    :pswitch_2
    const/4 p1, 0x3

    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    const/4 p1, 0x2

    .line 16
    goto :goto_0

    .line 17
    :pswitch_4
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :pswitch_5
    const/4 p1, 0x0

    .line 20
    :goto_0
    iput p1, p0, Ljz9;->zzg:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {}, Ll79;->c()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    throw p0

    .line 28
    nop

    .line 29
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

.method public static synthetic v(Ljz9;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljz9;->zze:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic w(Ljz9;Lt69;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljz9;->zzf:Lt69;

    .line 5
    .line 6
    return-void
.end method

.method public static y()Ljz9;
    .locals 1

    .line 1
    sget-object v0, Ljz9;->zzc:Ljz9;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ljz9;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p0, Lhz9;->a:[I

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
    sget-object p0, Ljz9;->zzd:La89;

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    const-class p1, Ljz9;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p0, Ljz9;->zzd:La89;

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
    sput-object p0, Ljz9;->zzd:La89;

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
    sget-object p0, Ljz9;->zzc:Ljz9;

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
    const-string v0, "zzg"

    .line 51
    .line 52
    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string p1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    .line 57
    .line 58
    sget-object v0, Ljz9;->zzc:Ljz9;

    .line 59
    .line 60
    new-instance v1, Ld89;

    .line 61
    .line 62
    invoke-direct {v1, v0, p1, p0}, Ld89;-><init>(Lo69;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    :pswitch_4
    new-instance p0, Liz9;

    .line 67
    .line 68
    sget-object p1, Ljz9;->zzc:Ljz9;

    .line 69
    .line 70
    invoke-direct {p0, p1}, Lj79;-><init>(Lk79;)V

    .line 71
    .line 72
    .line 73
    return-object p0

    .line 74
    :pswitch_5
    new-instance p0, Ljz9;

    .line 75
    .line 76
    invoke-direct {p0}, Ljz9;-><init>()V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    nop

    .line 81
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

.method public final x()I
    .locals 2

    .line 1
    iget p0, p0, Ljz9;->zzg:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    if-eq p0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x5

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, v1

    .line 22
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 23
    .line 24
    const/4 p0, 0x6

    .line 25
    return p0

    .line 26
    :cond_3
    return v0
.end method

.method public final z()Lt69;
    .locals 0

    .line 1
    iget-object p0, p0, Ljz9;->zzf:Lt69;

    .line 2
    .line 3
    return-object p0
.end method
