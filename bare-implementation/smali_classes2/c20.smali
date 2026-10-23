.class public final Lc20;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

.field public final synthetic b:Ltn2;

.field public final synthetic c:Lq63;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;Ltn2;Lq63;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc20;->a:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lc20;->b:Ltn2;

    .line 4
    .line 5
    iput-object p3, p0, Lc20;->c:Lq63;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    new-instance p1, Lc20;

    .line 2
    .line 3
    iget-object v0, p0, Lc20;->b:Ltn2;

    .line 4
    .line 5
    iget-object v1, p0, Lc20;->c:Lq63;

    .line 6
    .line 7
    iget-object p0, p0, Lc20;->a:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lc20;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;Ltn2;Lq63;Ljv1;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lc20;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lc20;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lc20;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lc20;->a:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->l0()Lr20;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v1, 0x7f13042d

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lqo0;->h(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lc20;->b:Ltn2;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lf13;->d()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0}, Ltn2;->e()Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Lc20;->c:Lq63;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v1, v0}, Lq63;->e(Ljava/io/OutputStream;Lmt3;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const v0, 0x7f130207

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    sget-object v1, Lzn4;->a:Lzn4;

    .line 63
    .line 64
    new-instance v1, Lcv;

    .line 65
    .line 66
    const/16 v2, 0xe

    .line 67
    .line 68
    invoke-direct {v1, v2, p0, v0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    const v1, 0x7f130222

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-object v2, Lzn4;->a:Lzn4;

    .line 96
    .line 97
    invoke-static {p0, v1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 101
    .line 102
    invoke-virtual {p1}, Lk28;->r()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v0}, Ltn2;->e()Landroid/net/Uri;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v1, "Couldn\'t get output stream for writing apps list at "

    .line 113
    .line 114
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const/4 v7, 0x4

    .line 125
    const/4 v8, 0x0

    .line 126
    const/4 v6, 0x0

    .line 127
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :goto_0
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->l0()Lr20;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lqo0;->f()V

    .line 135
    .line 136
    .line 137
    sget-object p0, Lbe8;->a:Lbe8;

    .line 138
    .line 139
    return-object p0
.end method
