.class public final enum Lp58;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "TagName"

    .line 2
    .line 3
    const/16 v1, 0x9

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
    .locals 12

    .line 1
    invoke-virtual {p2}, Le51;->b()V

    .line 2
    .line 3
    .line 4
    iget v0, p2, Le51;->e:I

    .line 5
    .line 6
    iget v1, p2, Le51;->c:I

    .line 7
    .line 8
    iget-object v2, p2, Le51;->a:[C

    .line 9
    .line 10
    :goto_0
    iget v3, p2, Le51;->e:I

    .line 11
    .line 12
    const/16 v4, 0x3e

    .line 13
    .line 14
    const/16 v5, 0x2f

    .line 15
    .line 16
    const/16 v6, 0x20

    .line 17
    .line 18
    const/16 v7, 0xc

    .line 19
    .line 20
    const/16 v8, 0xd

    .line 21
    .line 22
    const/16 v9, 0xa

    .line 23
    .line 24
    const/16 v10, 0x9

    .line 25
    .line 26
    if-ge v3, v1, :cond_1

    .line 27
    .line 28
    aget-char v11, v2, v3

    .line 29
    .line 30
    if-eq v11, v10, :cond_1

    .line 31
    .line 32
    if-eq v11, v9, :cond_1

    .line 33
    .line 34
    if-eq v11, v8, :cond_1

    .line 35
    .line 36
    if-eq v11, v7, :cond_1

    .line 37
    .line 38
    if-eq v11, v6, :cond_1

    .line 39
    .line 40
    if-eq v11, v5, :cond_1

    .line 41
    .line 42
    if-eq v11, v4, :cond_1

    .line 43
    .line 44
    if-nez v11, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    iput v3, p2, Le51;->e:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :goto_1
    if-le v3, v0, :cond_2

    .line 53
    .line 54
    iget-object v1, p2, Le51;->h:[Ljava/lang/String;

    .line 55
    .line 56
    sub-int/2addr v3, v0

    .line 57
    invoke-static {v2, v1, v0, v3}, Le51;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const-string v0, ""

    .line 63
    .line 64
    :goto_2
    iget-object v1, p1, Lo58;->i:Lc58;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lc58;->m(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Le51;->d()C

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_7

    .line 74
    .line 75
    if-eq p2, v6, :cond_6

    .line 76
    .line 77
    if-eq p2, v5, :cond_5

    .line 78
    .line 79
    sget-object v0, Le88;->a:Lz58;

    .line 80
    .line 81
    if-eq p2, v4, :cond_4

    .line 82
    .line 83
    const v1, 0xffff

    .line 84
    .line 85
    .line 86
    if-eq p2, v1, :cond_3

    .line 87
    .line 88
    if-eq p2, v10, :cond_6

    .line 89
    .line 90
    if-eq p2, v9, :cond_6

    .line 91
    .line 92
    if-eq p2, v7, :cond_6

    .line 93
    .line 94
    if-eq p2, v8, :cond_6

    .line 95
    .line 96
    iget-object p0, p1, Lo58;->i:Lc58;

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lc58;->m(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_3
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p1, Lo58;->c:Le88;

    .line 113
    .line 114
    return-void

    .line 115
    :cond_4
    invoke-virtual {p1}, Lo58;->k()V

    .line 116
    .line 117
    .line 118
    iput-object v0, p1, Lo58;->c:Le88;

    .line 119
    .line 120
    return-void

    .line 121
    :cond_5
    sget-object p0, Le88;->g0:Ly68;

    .line 122
    .line 123
    iput-object p0, p1, Lo58;->c:Le88;

    .line 124
    .line 125
    return-void

    .line 126
    :cond_6
    sget-object p0, Le88;->Y:Lp68;

    .line 127
    .line 128
    iput-object p0, p1, Lo58;->c:Le88;

    .line 129
    .line 130
    return-void

    .line 131
    :cond_7
    iget-object p0, p1, Lo58;->i:Lc58;

    .line 132
    .line 133
    sget-object p1, Le88;->K0:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lc58;->m(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method
