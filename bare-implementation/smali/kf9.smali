.class public final Lkf9;
.super Lxi9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final zzb:Lkf9;


# instance fields
.field private zzd:I

.field private zze:Leg9;

.field private zzf:Leg9;

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkf9;

    .line 2
    .line 3
    invoke-direct {v0}, Lxi9;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkf9;->zzb:Lkf9;

    .line 7
    .line 8
    const-class v1, Lkf9;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lxi9;->f(Ljava/lang/Class;Lxi9;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final j(I)Ljava/lang/Object;
    .locals 3

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
    sget-object p0, Lkf9;->zzb:Lkf9;

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
    new-instance p0, Lif9;

    .line 23
    .line 24
    sget-object p1, Lkf9;->zzb:Lkf9;

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lri9;-><init>(Lxi9;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    new-instance p0, Lkf9;

    .line 31
    .line 32
    invoke-direct {p0}, Lxi9;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_3
    const-string p0, "zzg"

    .line 37
    .line 38
    sget-object p1, Ljg9;->a:Ljg9;

    .line 39
    .line 40
    const-string v0, "zzd"

    .line 41
    .line 42
    const-string v1, "zze"

    .line 43
    .line 44
    const-string v2, "zzf"

    .line 45
    .line 46
    filled-new-array {v0, v1, v2, p0, p1}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    sget-object p1, Lkf9;->zzb:Lkf9;

    .line 51
    .line 52
    new-instance v0, Lhm9;

    .line 53
    .line 54
    const-string v1, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u180c\u0002"

    .line 55
    .line 56
    invoke-direct {v0, p1, v1, p0}, Lhm9;-><init>(Lmg9;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_4
    const/4 p0, 0x1

    .line 61
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method
