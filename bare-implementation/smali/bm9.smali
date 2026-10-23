.class public final Lbm9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:Lbm9;


# instance fields
.field public final a:Lvk9;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbm9;

    .line 2
    .line 3
    invoke-direct {v0}, Lbm9;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbm9;->c:Lbm9;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lbm9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lvk9;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lvk9;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lbm9;->a:Lvk9;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljm9;
    .locals 5

    .line 1
    sget-object v0, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_6

    .line 5
    .line 6
    iget-object v1, p0, Lbm9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ljm9;

    .line 13
    .line 14
    if-nez v2, :cond_5

    .line 15
    .line 16
    iget-object p0, p0, Lbm9;->a:Lvk9;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v2, Lnm9;->a:Lns0;

    .line 22
    .line 23
    const-class v2, Lxi9;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    sget v2, Lpg9;->a:I

    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Lz28;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lz28;->zzb(Ljava/lang/Class;)Lhm9;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iget v2, p0, Lhm9;->d:I

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    and-int/2addr v2, v3

    .line 45
    const/4 v4, 0x1

    .line 46
    if-ne v2, v3, :cond_1

    .line 47
    .line 48
    move v2, v4

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v2, 0x0

    .line 51
    :goto_0
    if-nez v2, :cond_3

    .line 52
    .line 53
    sget v2, Lpg9;->a:I

    .line 54
    .line 55
    sget v2, Lyl9;->a:I

    .line 56
    .line 57
    sget v2, Lok9;->a:I

    .line 58
    .line 59
    sget-object v2, Lnm9;->a:Lns0;

    .line 60
    .line 61
    invoke-virtual {p0}, Lhm9;->a()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    add-int/lit8 v3, v3, -0x1

    .line 66
    .line 67
    if-eq v3, v4, :cond_2

    .line 68
    .line 69
    sget-object v0, Lji9;->a:Llk;

    .line 70
    .line 71
    :cond_2
    sget v3, Lbl9;->a:I

    .line 72
    .line 73
    invoke-static {p0, v2, v0}, Lpl9;->r(Lhm9;Lns0;Llk;)Lpl9;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    sget v0, Lpg9;->a:I

    .line 79
    .line 80
    sget-object v0, Lnm9;->a:Lns0;

    .line 81
    .line 82
    sget-object v2, Lji9;->a:Llk;

    .line 83
    .line 84
    iget-object p0, p0, Lhm9;->a:Lmg9;

    .line 85
    .line 86
    new-instance v2, Ltl9;

    .line 87
    .line 88
    invoke-direct {v2, v0, p0}, Ltl9;-><init>(Lns0;Lmg9;)V

    .line 89
    .line 90
    .line 91
    move-object p0, v2

    .line 92
    :goto_1
    invoke-virtual {v1, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Ljm9;

    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    return-object p1

    .line 101
    :cond_4
    return-object p0

    .line 102
    :cond_5
    return-object v2

    .line 103
    :cond_6
    const-string p0, "messageType"

    .line 104
    .line 105
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-object v0
.end method
