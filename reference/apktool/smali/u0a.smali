.class public final Lu0a;
.super Lk79;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final zzc:Lu0a;

.field private static volatile zzd:La89;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La89;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:La1a;

.field private zzh:Lt69;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu0a;

    .line 2
    .line 3
    invoke-direct {v0}, Lu0a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lu0a;->zzc:Lu0a;

    .line 7
    .line 8
    const-class v1, Lu0a;

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
    sget-object v0, Lt69;->b:Lx69;

    .line 5
    .line 6
    iput-object v0, p0, Lu0a;->zzh:Lt69;

    .line 7
    .line 8
    return-void
.end method

.method public static u(Lt69;Lf79;)Lu0a;
    .locals 1

    .line 1
    sget-object v0, Lu0a;->zzc:Lu0a;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lk79;->h(Lk79;Lt69;Lf79;)Lk79;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lu0a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic v(Lu0a;Lx69;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu0a;->zzh:Lt69;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic w(Lu0a;La1a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu0a;->zzg:La1a;

    .line 2
    .line 3
    iget p1, p0, Lu0a;->zze:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Lu0a;->zze:I

    .line 8
    .line 9
    return-void
.end method

.method public static x()Lt0a;
    .locals 1

    .line 1
    sget-object v0, Lu0a;->zzc:Lu0a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk79;->o()Lj79;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lt0a;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final d(I)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p0, Lv0a;->a:[I

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
    sget-object p0, Lu0a;->zzd:La89;

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    const-class p1, Lu0a;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p0, Lu0a;->zzd:La89;

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
    sput-object p0, Lu0a;->zzd:La89;

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
    sget-object p0, Lu0a;->zzc:Lu0a;

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
    const-string v1, "zzh"

    .line 53
    .line 54
    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p1, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u1009\u0000\u0003\n"

    .line 59
    .line 60
    sget-object v0, Lu0a;->zzc:Lu0a;

    .line 61
    .line 62
    new-instance v1, Ld89;

    .line 63
    .line 64
    invoke-direct {v1, v0, p1, p0}, Ld89;-><init>(Lo69;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :pswitch_4
    new-instance p0, Lt0a;

    .line 69
    .line 70
    sget-object p1, Lu0a;->zzc:Lu0a;

    .line 71
    .line 72
    invoke-direct {p0, p1}, Lj79;-><init>(Lk79;)V

    .line 73
    .line 74
    .line 75
    return-object p0

    .line 76
    :pswitch_5
    new-instance p0, Lu0a;

    .line 77
    .line 78
    invoke-direct {p0}, Lu0a;-><init>()V

    .line 79
    .line 80
    .line 81
    return-object p0

    .line 82
    nop

    .line 83
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

.method public final t()I
    .locals 0

    .line 1
    iget p0, p0, Lu0a;->zzf:I

    .line 2
    .line 3
    return p0
.end method

.method public final y()La1a;
    .locals 0

    .line 1
    iget-object p0, p0, Lu0a;->zzg:La1a;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-static {}, La1a;->w()La1a;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    return-object p0
.end method

.method public final z()Lt69;
    .locals 0

    .line 1
    iget-object p0, p0, Lu0a;->zzh:Lt69;

    .line 2
    .line 3
    return-object p0
.end method
