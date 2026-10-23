.class public final Lep9;
.super Lxi9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final zzb:Lep9;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Ldj9;

.field private zzh:Lej9;

.field private zzi:Lro9;

.field private zzj:Z

.field private zzk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lep9;

    .line 2
    .line 3
    invoke-direct {v0}, Lep9;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lep9;->zzb:Lep9;

    .line 7
    .line 8
    const-class v1, Lep9;

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
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lep9;->zze:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lyi9;->e:Lyi9;

    .line 9
    .line 10
    iput-object v0, p0, Lep9;->zzg:Ldj9;

    .line 11
    .line 12
    sget-object v0, Lem9;->e:Lem9;

    .line 13
    .line 14
    iput-object v0, p0, Lep9;->zzh:Lej9;

    .line 15
    .line 16
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
    sget-object p0, Lep9;->zzb:Lep9;

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
    new-instance p0, Lyo9;

    .line 23
    .line 24
    sget-object p1, Lep9;->zzb:Lep9;

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lri9;-><init>(Lxi9;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    new-instance p0, Lep9;

    .line 31
    .line 32
    invoke-direct {p0}, Lep9;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_3
    sget-object v5, Lvo9;->b:Lvo9;

    .line 37
    .line 38
    const-string v9, "zzj"

    .line 39
    .line 40
    const-string v10, "zzk"

    .line 41
    .line 42
    const-string v0, "zzd"

    .line 43
    .line 44
    const-string v1, "zze"

    .line 45
    .line 46
    const-string v2, "zzf"

    .line 47
    .line 48
    sget-object v3, Lap9;->a:Lap9;

    .line 49
    .line 50
    const-string v4, "zzg"

    .line 51
    .line 52
    const-string v6, "zzh"

    .line 53
    .line 54
    const-class v7, Lkq9;

    .line 55
    .line 56
    const-string v8, "zzi"

    .line 57
    .line 58
    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    sget-object p1, Lep9;->zzb:Lep9;

    .line 63
    .line 64
    new-instance v0, Lhm9;

    .line 65
    .line 66
    const-string v1, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u180c\u0001\u0003\u082c\u0004\u001b\u0005\u1009\u0002\u0006\u1007\u0003\u0007\u1007\u0004"

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
