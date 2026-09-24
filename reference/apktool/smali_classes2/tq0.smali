.class public final Ltq0;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lp56;


# direct methods
.method public constructor <init>(Lp56;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltq0;->b:Lp56;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 0

    .line 1
    new-instance p1, Ltq0;

    .line 2
    .line 3
    iget-object p0, p0, Ltq0;->b:Lp56;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Ltq0;-><init>(Lp56;Ljv1;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ltq0;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ltq0;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ltq0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Ltq0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lwq0;->a:Lwq0;

    .line 23
    .line 24
    const-string p1, "Restore purchase action initiated"

    .line 25
    .line 26
    const-string v0, "restorePurchases"

    .line 27
    .line 28
    invoke-static {v0, p1}, Lwq0;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lwq0;->c:Lex6;

    .line 32
    .line 33
    sget-object v3, Lpq0;->a:Lpq0;

    .line 34
    .line 35
    invoke-virtual {p1, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 39
    .line 40
    const-wide/16 v3, 0x0

    .line 41
    .line 42
    invoke-virtual {p1, v3, v4}, Lorg/swiftapps/swiftbackup/common/V;->setV(J)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lwq0;->c()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    sget-object v3, Lwb6;->Companion:Lwb6$a;

    .line 59
    .line 60
    invoke-virtual {v3}, Lwb6$a;->default()Lwb6;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {}, Lre3;->k()Lzc2;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const-string v5, "transactions"

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-string v5, "premium"

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v4, v3}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    instance-of v3, v3, Lze3;

    .line 85
    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    invoke-static {p1}, Lwq0;->a(Ljava/util/List;)Lwb6;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    invoke-static {v3, v2}, Lwq0;->g(Lwb6;Lhq0;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_0
    if-eqz p1, :cond_6

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    iput v1, p0, Ltq0;->a:I

    .line 107
    .line 108
    const-wide/16 v0, 0xfa0

    .line 109
    .line 110
    invoke-static {v0, v1, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    sget-object p1, Lyx1;->a:Lyx1;

    .line 115
    .line 116
    if-ne p0, p1, :cond_5

    .line 117
    .line 118
    return-object p1

    .line 119
    :cond_5
    :goto_1
    const-string p0, "BillingManager: Restore purchase"

    .line 120
    .line 121
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->E(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_6
    :goto_2
    const-string p1, "No purchases found"

    .line 126
    .line 127
    invoke-static {v0, p1}, Lwq0;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 131
    .line 132
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const v0, 0x7f1303ce

    .line 137
    .line 138
    .line 139
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sget-object v1, Lzn4;->a:Lzn4;

    .line 144
    .line 145
    invoke-static {p1, v0}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p0, p0, Ltq0;->b:Lp56;

    .line 149
    .line 150
    invoke-virtual {p0}, Lqo0;->d()V

    .line 151
    .line 152
    .line 153
    :goto_3
    sget-object p0, Lbe8;->a:Lbe8;

    .line 154
    .line 155
    return-object p0
.end method
