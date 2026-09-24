.class public final synthetic Lmu7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lmu7;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lmu7;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lmu7;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lmu7;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lmu7;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lmu7;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 11
    .line 12
    check-cast v1, Lcom/microsoft/identity/common/java/net/HttpRequest;

    .line 13
    .line 14
    invoke-static {p0, v1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->a(Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;Lcom/microsoft/identity/common/java/net/HttpRequest;)Lcom/microsoft/identity/common/java/net/HttpResponse;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_0
    check-cast p0, Lbv7;

    .line 20
    .line 21
    check-cast v1, Lqc6;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Lqc6;->a:Lgy5;

    .line 27
    .line 28
    iget-object v2, p0, Lbv7;->a:Lua4;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    move-object v5, v0

    .line 33
    move v6, v4

    .line 34
    :goto_0
    invoke-virtual {v2}, Lua4;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const/4 v8, 0x1

    .line 39
    if-nez v7, :cond_5

    .line 40
    .line 41
    iget-object v7, v2, Lua4;->a:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v7, Llu7;

    .line 44
    .line 45
    if-eqz v7, :cond_3

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v7, v5}, Llu7;->c(Lgy5;)Lqn5;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    :goto_1
    if-nez v6, :cond_2

    .line 55
    .line 56
    invoke-virtual {v7}, Llu7;->g()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    move v6, v4

    .line 64
    goto :goto_3

    .line 65
    :cond_2
    :goto_2
    move v6, v8

    .line 66
    :cond_3
    :goto_3
    invoke-virtual {v5}, Lgy5;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_4

    .line 71
    .line 72
    const-string v7, ""

    .line 73
    .line 74
    invoke-static {v7}, Lm61;->b(Ljava/lang/String;)Lm61;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    goto :goto_4

    .line 79
    :cond_4
    invoke-virtual {v5}, Lgy5;->k()Lm61;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    :goto_4
    invoke-virtual {v2, v7}, Lua4;->f(Lm61;)Lua4;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v5}, Lgy5;->p()Lgy5;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    goto :goto_0

    .line 92
    :cond_5
    iget-object v2, p0, Lbv7;->a:Lua4;

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Lua4;->e(Lgy5;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Llu7;

    .line 99
    .line 100
    if-nez v2, :cond_6

    .line 101
    .line 102
    new-instance v2, Llu7;

    .line 103
    .line 104
    iget-object v5, p0, Lbv7;->g:Leo5;

    .line 105
    .line 106
    invoke-direct {v2, v5}, Llu7;-><init>(Leo5;)V

    .line 107
    .line 108
    .line 109
    iget-object v5, p0, Lbv7;->a:Lua4;

    .line 110
    .line 111
    invoke-virtual {v5, v0, v2}, Lua4;->i(Lgy5;Ljava/lang/Object;)Lua4;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    iput-object v5, p0, Lbv7;->a:Lua4;

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_6
    if-eqz v3, :cond_7

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_7
    sget-object v3, Lgy5;->d:Lgy5;

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Llu7;->c(Lgy5;)Lqn5;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    :goto_5
    new-instance v5, Lgz0;

    .line 128
    .line 129
    if-eqz v3, :cond_8

    .line 130
    .line 131
    move-object v6, v3

    .line 132
    goto :goto_6

    .line 133
    :cond_8
    sget-object v6, Lqv2;->e:Lqv2;

    .line 134
    .line 135
    :goto_6
    iget-object v7, v1, Lqc6;->b:Loc6;

    .line 136
    .line 137
    iget-object v7, v7, Loc6;->e:Lnb4;

    .line 138
    .line 139
    new-instance v9, Lsb4;

    .line 140
    .line 141
    invoke-direct {v9, v6, v7}, Lsb4;-><init>(Lqn5;Lnb4;)V

    .line 142
    .line 143
    .line 144
    if-eqz v3, :cond_9

    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_9
    move v8, v4

    .line 148
    :goto_7
    invoke-direct {v5, v9, v8, v4}, Lgz0;-><init>(Lsb4;ZZ)V

    .line 149
    .line 150
    .line 151
    iget-object p0, p0, Lbv7;->b:Lvq;

    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    new-instance v3, Lyf1;

    .line 157
    .line 158
    const/16 v4, 0xd

    .line 159
    .line 160
    invoke-direct {v3, v4, v0, p0}, Lyf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v1, v3, v5}, Llu7;->f(Lqc6;Lyf1;Lgz0;)Lik8;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    iget-object p0, p0, Lik8;->c:Lib;

    .line 168
    .line 169
    invoke-virtual {p0}, Lib;->f()Lqn5;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    return-object p0

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
