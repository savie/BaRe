.class public final La82;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:Lf98;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Z

.field public final synthetic e:Leo6;

.field public final synthetic f:Lmt3;


# direct methods
.method public constructor <init>(Ljv1;Lmt3;Leo6;Z)V
    .locals 0

    .line 1
    iput-boolean p4, p0, La82;->d:Z

    .line 2
    .line 3
    iput-object p3, p0, La82;->e:Leo6;

    .line 4
    .line 5
    iput-object p2, p0, La82;->f:Lmt3;

    .line 6
    .line 7
    const/4 p2, 0x2

    .line 8
    invoke-direct {p0, p2, p1}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 3

    .line 1
    new-instance v0, La82;

    .line 2
    .line 3
    iget-object v1, p0, La82;->e:Leo6;

    .line 4
    .line 5
    iget-object v2, p0, La82;->f:Lmt3;

    .line 6
    .line 7
    iget-boolean p0, p0, La82;->d:Z

    .line 8
    .line 9
    invoke-direct {v0, p2, v2, v1, p0}, La82;-><init>(Ljv1;Lmt3;Leo6;Z)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, La82;->c:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg98;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, La82;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, La82;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, La82;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, La82;->b:I

    .line 2
    .line 3
    iget-object v1, p0, La82;->f:Lmt3;

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iget-object v3, p0, La82;->e:Leo6;

    .line 9
    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x1

    .line 14
    sget-object v8, Lyx1;->a:Lyx1;

    .line 15
    .line 16
    if-eq v0, v7, :cond_3

    .line 17
    .line 18
    if-eq v0, v6, :cond_2

    .line 19
    .line 20
    if-eq v0, v5, :cond_1

    .line 21
    .line 22
    if-ne v0, v4, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, La82;->c:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v2

    .line 37
    :cond_1
    iget-object v0, p0, La82;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lg98;

    .line 40
    .line 41
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2
    iget-object v0, p0, La82;->a:Lf98;

    .line 46
    .line 47
    iget-object v6, p0, La82;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v6, Lg98;

    .line 50
    .line 51
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    iget-object v0, p0, La82;->a:Lf98;

    .line 56
    .line 57
    iget-object v7, p0, La82;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v7, Lg98;

    .line 60
    .line 61
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    check-cast p1, Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_6

    .line 71
    .line 72
    invoke-virtual {v3}, Leo6;->d()Lkg4;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object v7, p0, La82;->c:Ljava/lang/Object;

    .line 77
    .line 78
    iput-object v0, p0, La82;->a:Lf98;

    .line 79
    .line 80
    iput v6, p0, La82;->b:I

    .line 81
    .line 82
    iget-object p1, p1, Lkg4;->b:Lmb8;

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Lmb8;->e(Lkv1;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-ne p1, v8, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    sget-object p1, Lbe8;->a:Lbe8;

    .line 92
    .line 93
    :goto_0
    if-ne p1, v8, :cond_5

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_5
    move-object v6, v7

    .line 97
    :goto_1
    move-object p1, v0

    .line 98
    move-object v0, v6

    .line 99
    goto :goto_2

    .line 100
    :cond_6
    move-object p1, v0

    .line 101
    move-object v0, v7

    .line 102
    :goto_2
    new-instance v6, Lz72;

    .line 103
    .line 104
    invoke-direct {v6, v1, v2}, Lz72;-><init>(Lmt3;Ljv1;)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, La82;->c:Ljava/lang/Object;

    .line 108
    .line 109
    iput-object v2, p0, La82;->a:Lf98;

    .line 110
    .line 111
    iput v5, p0, La82;->b:I

    .line 112
    .line 113
    invoke-interface {v0, p1, v6, p0}, Lg98;->a(Lf98;Lqt3;Lws7;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-ne p1, v8, :cond_7

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_7
    :goto_3
    iget-boolean v1, p0, La82;->d:Z

    .line 121
    .line 122
    if-nez v1, :cond_a

    .line 123
    .line 124
    iput-object p1, p0, La82;->c:Ljava/lang/Object;

    .line 125
    .line 126
    iput v4, p0, La82;->b:I

    .line 127
    .line 128
    invoke-interface {v0, p0}, Lg98;->b(Ljv1;)Ljava/lang/Boolean;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    if-ne p0, v8, :cond_8

    .line 133
    .line 134
    :goto_4
    return-object v8

    .line 135
    :cond_8
    move-object v9, p1

    .line 136
    move-object p1, p0

    .line 137
    move-object p0, v9

    .line 138
    :goto_5
    check-cast p1, Ljava/lang/Boolean;

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_9

    .line 145
    .line 146
    invoke-virtual {v3}, Leo6;->d()Lkg4;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lkg4;->a()V

    .line 151
    .line 152
    .line 153
    :cond_9
    return-object p0

    .line 154
    :cond_a
    return-object p1

    .line 155
    :cond_b
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    iget-object p0, p0, La82;->c:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast p0, Lg98;

    .line 161
    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    check-cast p0, Lgf6;

    .line 166
    .line 167
    invoke-interface {p0}, Lgf6;->d()Lfw6;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-interface {v1, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    return-object p0
.end method
