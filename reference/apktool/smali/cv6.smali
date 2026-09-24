.class public final Lcv6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Ll15;


# instance fields
.field public a:Lju7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcv6;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcv6;->b:Ll15;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/AutoCloseable;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcv6;->a:Lju7;

    .line 2
    .line 3
    iget-object p0, p0, Lju7;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lzr7;

    .line 6
    .line 7
    iget-object v0, p0, Lzr7;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lzq7;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ln3;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lzr7;->a(Ljava/lang/AutoCloseable;)[Lxr7;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    iget-object v2, p0, Lzr7;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lkm5;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lkm5;->n(Ljava/lang/Class;)Lpd5;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v2, v2, Lpd5;->a:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    new-array v4, v4, [Lnd5;

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, [Lnd5;

    .line 50
    .line 51
    array-length v4, v2

    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ln3;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    new-array v0, v4, [Lxr7;

    .line 59
    .line 60
    :goto_0
    if-ge v3, v4, :cond_2

    .line 61
    .line 62
    aget-object v1, v2, v3

    .line 63
    .line 64
    iget-object v5, p0, Lzr7;->e:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v5, Lus2;

    .line 67
    .line 68
    iget-object v6, p0, Lzr7;->k:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v6, Lix0;

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {v6, v1}, Lus2;->y(Lix0;Lnd5;)Lxr7;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    aput-object v1, v0, v3

    .line 80
    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0, p1, v0}, Lzr7;->b(Ljava/lang/AutoCloseable;[Lxr7;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    array-length p0, v2

    .line 89
    :goto_1
    if-ge v3, p0, :cond_4

    .line 90
    .line 91
    aget-object v0, v2, v3

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Lxr7;->a(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    :goto_2
    return-void

    .line 100
    :catch_0
    move-exception p0

    .line 101
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method
