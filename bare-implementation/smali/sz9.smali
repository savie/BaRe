.class public final Lsz9;
.super Lk79;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final zzc:Lsz9;

.field private static volatile zzd:La89;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La89;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Ljz9;

.field private zzg:I

.field private zzh:I

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lsz9;

    .line 2
    .line 3
    invoke-direct {v0}, Lk79;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lsz9;->zzc:Lsz9;

    .line 7
    .line 8
    const-class v1, Lsz9;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lk79;->j(Ljava/lang/Class;Lk79;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static A()Lrz9;
    .locals 1

    .line 1
    sget-object v0, Lsz9;->zzc:Lsz9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk79;->o()Lj79;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lrz9;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic u(Lsz9;I)V
    .locals 0

    .line 1
    iput p1, p0, Lsz9;->zzh:I

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic v(Lsz9;Ljz9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsz9;->zzf:Ljz9;

    .line 2
    .line 3
    iget p1, p0, Lsz9;->zze:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Lsz9;->zze:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic w(Lsz9;Lr0a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lr0a;->zza()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lsz9;->zzi:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic x(Lsz9;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lu48;->d(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lsz9;->zzg:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final B()Lr0a;
    .locals 0

    .line 1
    iget p0, p0, Lsz9;->zzi:I

    .line 2
    .line 3
    invoke-static {p0}, Lr0a;->a(I)Lr0a;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lr0a;->n:Lr0a;

    .line 10
    .line 11
    :cond_0
    return-object p0
.end method

.method public final C()Z
    .locals 1

    .line 1
    iget p0, p0, Lsz9;->zze:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object p0, Lqz9;->a:[I

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
    sget-object p0, Lsz9;->zzd:La89;

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    const-class p1, Lsz9;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p0, Lsz9;->zzd:La89;

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
    sput-object p0, Lsz9;->zzd:La89;

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
    sget-object p0, Lsz9;->zzc:Lsz9;

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
    const-string v2, "zzi"

    .line 55
    .line 56
    filled-new-array {p0, p1, v0, v1, v2}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string p1, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 61
    .line 62
    sget-object v0, Lsz9;->zzc:Lsz9;

    .line 63
    .line 64
    new-instance v1, Ld89;

    .line 65
    .line 66
    invoke-direct {v1, v0, p1, p0}, Ld89;-><init>(Lo69;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :pswitch_4
    new-instance p0, Lrz9;

    .line 71
    .line 72
    sget-object p1, Lsz9;->zzc:Lsz9;

    .line 73
    .line 74
    invoke-direct {p0, p1}, Lj79;-><init>(Lk79;)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_5
    new-instance p0, Lsz9;

    .line 79
    .line 80
    invoke-direct {p0}, Lk79;-><init>()V

    .line 81
    .line 82
    .line 83
    return-object p0

    .line 84
    nop

    .line 85
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
    iget p0, p0, Lsz9;->zzh:I

    .line 2
    .line 3
    return p0
.end method

.method public final y()Ljz9;
    .locals 0

    .line 1
    iget-object p0, p0, Lsz9;->zzf:Ljz9;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljz9;->y()Ljz9;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    return-object p0
.end method

.method public final z()I
    .locals 2

    .line 1
    iget p0, p0, Lsz9;->zzg:I

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
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v0, v1

    .line 19
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 20
    .line 21
    const/4 p0, 0x5

    .line 22
    return p0

    .line 23
    :cond_3
    return v0
.end method
