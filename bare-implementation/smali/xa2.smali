.class public final Lxa2;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:Ljava/util/Iterator;

.field public b:Lcd7;

.field public c:Ljava/lang/Object;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic k:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/ArrayList;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxa2;->f:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lxa2;->k:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    new-instance v0, Lxa2;

    .line 2
    .line 3
    iget-object v1, p0, Lxa2;->f:Ljava/util/List;

    .line 4
    .line 5
    iget-object p0, p0, Lxa2;->k:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Lxa2;-><init>(Ljava/util/List;Ljava/util/ArrayList;Ljv1;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lxa2;->e:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljv1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lxa2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lxa2;

    .line 8
    .line 9
    sget-object p1, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lxa2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lxa2;->d:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Lyx1;->a:Lyx1;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lxa2;->a:Ljava/util/Iterator;

    .line 15
    .line 16
    check-cast v0, Ljava/util/Iterator;

    .line 17
    .line 18
    iget-object v5, p0, Lxa2;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v5, Ljava/util/List;

    .line 21
    .line 22
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v3

    .line 32
    :cond_1
    iget-object v0, p0, Lxa2;->c:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v5, p0, Lxa2;->b:Lcd7;

    .line 35
    .line 36
    iget-object v6, p0, Lxa2;->a:Ljava/util/Iterator;

    .line 37
    .line 38
    check-cast v6, Ljava/util/Iterator;

    .line 39
    .line 40
    iget-object v7, p0, Lxa2;->e:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v7, Ljava/util/List;

    .line 43
    .line 44
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move-object v10, v7

    .line 48
    move-object v7, v5

    .line 49
    move-object v5, v10

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lxa2;->e:Ljava/lang/Object;

    .line 55
    .line 56
    iget-object v0, p0, Lxa2;->f:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v5, p0, Lxa2;->k:Ljava/util/ArrayList;

    .line 63
    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_6

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Lcd7;

    .line 75
    .line 76
    iput-object v5, p0, Lxa2;->e:Ljava/lang/Object;

    .line 77
    .line 78
    move-object v7, v0

    .line 79
    check-cast v7, Ljava/util/Iterator;

    .line 80
    .line 81
    iput-object v7, p0, Lxa2;->a:Ljava/util/Iterator;

    .line 82
    .line 83
    iput-object v6, p0, Lxa2;->b:Lcd7;

    .line 84
    .line 85
    iput-object p1, p0, Lxa2;->c:Ljava/lang/Object;

    .line 86
    .line 87
    iput v2, p0, Lxa2;->d:I

    .line 88
    .line 89
    invoke-virtual {v6, p1, p0}, Lcd7;->a(Ljava/lang/Object;Lkv1;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    if-ne v7, v4, :cond_3

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    move-object v10, v0

    .line 97
    move-object v0, p1

    .line 98
    move-object p1, v7

    .line 99
    move-object v7, v6

    .line 100
    move-object v6, v10

    .line 101
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_5

    .line 108
    .line 109
    new-instance p1, Lwa2;

    .line 110
    .line 111
    invoke-direct {p1, v7, v3}, Lwa2;-><init>(Lcd7;Ljv1;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    iput-object v5, p0, Lxa2;->e:Ljava/lang/Object;

    .line 118
    .line 119
    move-object p1, v6

    .line 120
    check-cast p1, Ljava/util/Iterator;

    .line 121
    .line 122
    iput-object p1, p0, Lxa2;->a:Ljava/util/Iterator;

    .line 123
    .line 124
    iput-object v3, p0, Lxa2;->b:Lcd7;

    .line 125
    .line 126
    iput-object v3, p0, Lxa2;->c:Ljava/lang/Object;

    .line 127
    .line 128
    iput v1, p0, Lxa2;->d:I

    .line 129
    .line 130
    iget-object p1, v7, Lcd7;->b:Ldd7;

    .line 131
    .line 132
    new-instance v8, Lgd7;

    .line 133
    .line 134
    iget-object v9, v7, Lcd7;->e:Lgv7;

    .line 135
    .line 136
    invoke-virtual {v9}, Lgv7;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    check-cast v9, Landroid/content/SharedPreferences;

    .line 141
    .line 142
    iget-object v7, v7, Lcd7;->f:Ljava/util/Set;

    .line 143
    .line 144
    invoke-direct {v8, v9, v7}, Lgd7;-><init>(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v8, v0, p0}, Ldd7;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-ne p1, v4, :cond_4

    .line 152
    .line 153
    :goto_2
    return-object v4

    .line 154
    :cond_4
    :goto_3
    move-object v0, v6

    .line 155
    goto :goto_0

    .line 156
    :cond_5
    move-object p1, v0

    .line 157
    goto :goto_3

    .line 158
    :cond_6
    return-object p1
.end method
