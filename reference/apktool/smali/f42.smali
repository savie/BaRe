.class public final Lf42;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 0

    .line 1
    new-instance p0, Lf42;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-object p0
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
    invoke-virtual {p0, p1, p2}, Lf42;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lf42;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lf42;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lf42;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lxe6;->b:Lxe6;

    .line 23
    .line 24
    sget v0, Lb67;->a:I

    .line 25
    .line 26
    int-to-long v2, v0

    .line 27
    const-wide/16 v4, 0x3c5

    .line 28
    .line 29
    mul-long/2addr v2, v4

    .line 30
    const-wide/16 v4, 0x185d

    .line 31
    .line 32
    cmp-long v0, v2, v4

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    if-ltz v0, :cond_2

    .line 36
    .line 37
    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move v0, v6

    .line 40
    :goto_0
    new-array v6, v6, [Ljava/lang/Object;

    .line 41
    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    cmp-long v0, v4, v2

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    sub-long/2addr v2, v4

    .line 50
    :cond_4
    iget-object v0, p1, Lxe6;->a:Ljava/util/function/Supplier;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/util/Random;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    ushr-long/2addr v6, v1

    .line 63
    rem-long v8, v6, v2

    .line 64
    .line 65
    sub-long/2addr v6, v8

    .line 66
    add-long/2addr v6, v2

    .line 67
    const-wide/16 v10, 0x1

    .line 68
    .line 69
    sub-long/2addr v6, v10

    .line 70
    const-wide/16 v10, 0x0

    .line 71
    .line 72
    cmp-long v0, v6, v10

    .line 73
    .line 74
    if-ltz v0, :cond_4

    .line 75
    .line 76
    add-long/2addr v4, v8

    .line 77
    :goto_1
    iput v1, p0, Lf42;->a:I

    .line 78
    .line 79
    invoke-static {v4, v5, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    sget-object p1, Lyx1;->a:Lyx1;

    .line 84
    .line 85
    if-ne p0, p1, :cond_5

    .line 86
    .line 87
    return-object p1

    .line 88
    :cond_5
    :goto_2
    sget-object p0, Lmp6;->a:Lmp6;

    .line 89
    .line 90
    sget-boolean p0, Lg42;->a:Z

    .line 91
    .line 92
    const-string p0, "AQIidBEcfIA55/ZqkgcruJviQBxUyAX3QlNWB4QsjFtRr1Uo+cmzX4TYIeWPKHxNgjljcj6lTJTJSWx41YOJ6kY09KtquDSQ0CxRlueojrcPT1qqVwddQrN3zIbFdLrz22ABInvlV0XLVqAyWNOF/ZQQ8/pgRsLyciVi2fEhYA3pV8m+AQ=="

    .line 93
    .line 94
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    filled-new-array {p0}, [Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0}, Lmp6;->i([Ljava/lang/String;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    sget-object p0, Lg00;->a:Lg00;

    .line 106
    .line 107
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 108
    .line 109
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {p0}, Lg00;->g(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object p0, Lbe8;->a:Lbe8;

    .line 124
    .line 125
    return-object p0

    .line 126
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    invoke-static {v6}, Lod2;->o(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    const-string v0, "Start value must be smaller or equal to end value."

    .line 133
    .line 134
    if-eqz p1, :cond_7

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :goto_3
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0
.end method
