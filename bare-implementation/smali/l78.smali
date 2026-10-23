.class public final enum Ll78;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AfterDoctypeName"

    .line 2
    .line 3
    const/16 v1, 0x35

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lo58;Le51;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lo58;->m:Ly48;

    .line 2
    .line 3
    invoke-virtual {p2}, Le51;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Le88;->a:Lz58;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lo58;->j()V

    .line 18
    .line 19
    .line 20
    iput-object v2, p1, Lo58;->c:Le88;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v1, 0x5

    .line 24
    new-array v1, v1, [C

    .line 25
    .line 26
    fill-array-data v1, :array_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v1}, Le51;->n([C)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2}, Le51;->a()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/16 v1, 0x3e

    .line 40
    .line 41
    invoke-virtual {p2, v1}, Le51;->m(C)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Lo58;->j()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2}, Lo58;->a(Le88;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    const-string v1, "PUBLIC"

    .line 55
    .line 56
    invoke-virtual {p2, v1}, Le51;->l(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    sget-object p0, Le88;->t0:Lm78;

    .line 66
    .line 67
    iput-object p0, p1, Lo58;->c:Le88;

    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    const-string v1, "SYSTEM"

    .line 71
    .line 72
    invoke-virtual {p2, v1}, Le51;->l(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_4

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    sget-object p0, Le88;->z0:Lt78;

    .line 82
    .line 83
    iput-object p0, p1, Lo58;->c:Le88;

    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    sget-object p0, Le88;->E0:Ly78;

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
    .end array-data
.end method
