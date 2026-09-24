.class public final Lp92;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldh5;
.implements Lry3;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp92;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lq92;
    .locals 15

    .line 1
    iget-object p0, p0, Lp92;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lq92;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lk55;->d:Lus2;

    .line 11
    .line 12
    invoke-static {v1}, Lbo2;->a(Lz23;)Lea6;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lq92;->a:Lea6;

    .line 17
    .line 18
    new-instance v1, Lrb;

    .line 19
    .line 20
    const/16 v2, 0x11

    .line 21
    .line 22
    invoke-direct {v1, p0, v2}, Lrb;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lq92;->b:Lrb;

    .line 26
    .line 27
    new-instance p0, Lrb;

    .line 28
    .line 29
    const/16 v3, 0x9

    .line 30
    .line 31
    invoke-direct {p0, v1, v3}, Lrb;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Lh80;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    const/16 v5, 0xc

    .line 38
    .line 39
    invoke-direct {v3, v1, p0, v5, v4}, Lh80;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 40
    .line 41
    .line 42
    invoke-static {v3}, Lbo2;->a(Lz23;)Lea6;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iput-object p0, v0, Lq92;->c:Lea6;

    .line 47
    .line 48
    iget-object p0, v0, Lq92;->b:Lrb;

    .line 49
    .line 50
    new-instance v1, Ltr9;

    .line 51
    .line 52
    const/16 v3, 0x12

    .line 53
    .line 54
    invoke-direct {v1, p0, v3}, Ltr9;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    iput-object v1, v0, Lq92;->d:Ltr9;

    .line 58
    .line 59
    new-instance v1, Lrb;

    .line 60
    .line 61
    const/16 v3, 0xe

    .line 62
    .line 63
    invoke-direct {v1, p0, v3}, Lrb;-><init>(Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Lbo2;->a(Lz23;)Lea6;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iget-object v1, v0, Lq92;->d:Ltr9;

    .line 71
    .line 72
    new-instance v3, Loe;

    .line 73
    .line 74
    invoke-direct {v3, v5, v1, p0}, Loe;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v3}, Lbo2;->a(Lz23;)Lea6;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    iput-object v9, v0, Lq92;->e:Lea6;

    .line 82
    .line 83
    new-instance p0, Lma2;

    .line 84
    .line 85
    invoke-direct {p0, v2}, Lma2;-><init>(I)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lq92;->b:Lrb;

    .line 89
    .line 90
    new-instance v10, Ll22;

    .line 91
    .line 92
    const/4 v2, 0x6

    .line 93
    invoke-direct {v10, v2, v1, v9, p0}, Ll22;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget-object v7, v0, Lq92;->a:Lea6;

    .line 97
    .line 98
    iget-object v8, v0, Lq92;->c:Lea6;

    .line 99
    .line 100
    new-instance v6, Ltf2;

    .line 101
    .line 102
    move-object v11, v9

    .line 103
    move-object v14, v10

    .line 104
    move-object v10, v9

    .line 105
    move-object v9, v14

    .line 106
    invoke-direct/range {v6 .. v11}, Ltf2;-><init>(Lea6;Lea6;Ll22;Lea6;Lea6;)V

    .line 107
    .line 108
    .line 109
    move-object p0, v10

    .line 110
    move-object v10, v9

    .line 111
    move-object v9, p0

    .line 112
    move-object p0, v6

    .line 113
    new-instance v6, Lzr7;

    .line 114
    .line 115
    move-object v12, v9

    .line 116
    move-object v13, v9

    .line 117
    move-object v11, v7

    .line 118
    move-object v7, v1

    .line 119
    invoke-direct/range {v6 .. v13}, Lzr7;-><init>(Lea6;Lea6;Lea6;Ll22;Lea6;Lea6;Lea6;)V

    .line 120
    .line 121
    .line 122
    move-object v7, v11

    .line 123
    new-instance v1, Llj3;

    .line 124
    .line 125
    invoke-direct {v1, v7, v9, v10, v9}, Llj3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    new-instance v2, Lu94;

    .line 129
    .line 130
    invoke-direct {v2, p0, v6, v1}, Lu94;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v2}, Lbo2;->a(Lz23;)Lea6;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    iput-object p0, v0, Lq92;->f:Lea6;

    .line 138
    .line 139
    return-object v0

    .line 140
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 141
    .line 142
    const-class v0, Landroid/content/Context;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, " must be set"

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lp92;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "connectivity"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    return-object p0
.end method

.method public y(Lai5;)Lch5;
    .locals 0

    .line 1
    new-instance p1, Lv83;

    .line 2
    .line 3
    iget-object p0, p0, Lp92;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lv83;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method
