.class public final Llg5;
.super Lpg5$b;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public n:Low4;

.field public final synthetic p:Lmg5;


# direct methods
.method public constructor <init>(Lmg5;)V
    .locals 1

    .line 1
    iput-object p1, p0, Llg5;->p:Lmg5;

    .line 2
    .line 3
    iget-object p1, p1, Lmg5;->b:Lpg5;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lpg5$b;-><init>(Lpg5;I)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Llg5;->n:Low4;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Llg5;->p:Lmg5;

    .line 2
    .line 3
    iget-object v1, v0, Lmg5;->b:Lpg5;

    .line 4
    .line 5
    iget-object v0, v0, Lmg5;->a:Lay4;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lpg5$b;->f:Lxx4;

    .line 9
    .line 10
    iput-object v2, p0, Lpg5$b;->b:Ljava/util/Iterator;

    .line 11
    .line 12
    iput-object v2, p0, Lpg5$b;->d:Ljava/util/Iterator;

    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Lay4;->p()Lay4$a;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0}, Lll0;->b()Lv64$c;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Lll0$a;->e(Lv64$c;)Lll0$a;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lay4$a;

    .line 27
    .line 28
    invoke-virtual {v0}, Lll0;->c()Lv64$e;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Lll0$a;->g(Lv64$e;)Lll0$a;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lay4$a;

    .line 37
    .line 38
    invoke-virtual {v0}, Lfw0;->f()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Lfw0$a;->p(Ljava/lang/String;)Lfw0$a;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lay4$a;

    .line 47
    .line 48
    invoke-virtual {v0}, Lfw0;->g()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Lfw0$a;->s(Ljava/lang/String;)Lfw0$a;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lay4$a;

    .line 57
    .line 58
    invoke-virtual {v0}, Lay4;->r()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Lay4$a;->G(Ljava/lang/String;)Lay4$a;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v0}, Lay4;->s()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Lay4$a;->H(Ljava/lang/String;)Lay4$a;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v0}, Lay4;->v()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Lay4$a;->S(Ljava/lang/Integer;)Lay4$a;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v0}, Lay4;->w()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v3, v4}, Lay4$a;->T(Ljava/lang/String;)Lay4$a;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v0}, Lay4;->x()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Lay4$a;->U(Ljava/lang/String;)Lay4$a;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    iget-object v4, p0, Llg5;->n:Low4;

    .line 103
    .line 104
    if-nez v4, :cond_0

    .line 105
    .line 106
    invoke-virtual {v0}, Lay4;->q()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception p0

    .line 112
    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual {v4}, Low4;->l()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    :goto_0
    invoke-virtual {v3, v4}, Lay4$a;->F(Ljava/lang/String;)Lay4$a;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v0}, Lay4;->t()Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    invoke-virtual {v3, v4}, Lay4$a;->I(Z)Lay4$a;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v0}, Lay4;->u()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual {v3, v0}, Lay4$a;->J(Z)Lay4$a;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lll0$a;->d()Lll0;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Lay4;

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Lcn0;->A(Lay4;)Ljava/util/concurrent/CompletableFuture;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Lby4;

    .line 152
    .line 153
    iget-object v0, v0, Lby4;->a:Low4;

    .line 154
    .line 155
    iput-object v0, p0, Llg5;->n:Low4;

    .line 156
    .line 157
    iput-object v0, p0, Lpg5$b;->f:Lxx4;
    :try_end_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    return-void

    .line 160
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {p0}, Lpg5;->W(Ljava/util/concurrent/CompletionException;)V

    .line 164
    .line 165
    .line 166
    throw v2
.end method
