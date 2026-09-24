.class public abstract Lsa1;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final K:Ll90;

.field public L:Lbl7;

.field public M:Lwa;

.field public N:Z

.field public volatile O:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Luf;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, p0, v1}, Luf;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ll90;

    .line 11
    .line 12
    const-class v2, Lwj1;

    .line 13
    .line 14
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lvf;

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    invoke-direct {v3, p0, v4}, Lvf;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lwf;

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    invoke-direct {v4, p0, v5}, Lwf;-><init>(Lil0;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lsa1;->K:Ll90;

    .line 34
    .line 35
    return-void
.end method

.method public static R(Lsa1;Ldd1;Lbt3;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lsa1;->O()Lwj1;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iput-object p2, p3, Lwj1;->c:Lbt3;

    .line 19
    .line 20
    :cond_2
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-nez p3, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Lsa1;->O()Lwj1;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iput-object v1, p0, Lwj1;->c:Lbt3;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_3
    sget-object p3, Lgg3;->a:Lgg3;

    .line 34
    .line 35
    invoke-static {}, Lgg3;->f()Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_5

    .line 40
    .line 41
    sget-object p3, Lgg3;->b:Lxf3;

    .line 42
    .line 43
    sget-object v0, Lxf3;->CONNECTED:Lxf3;

    .line 44
    .line 45
    if-ne p3, v0, :cond_4

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    invoke-virtual {p0, p1, p2}, Lsa1;->T(Ldd1;Lbt3;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_5
    :goto_0
    invoke-virtual {p0, p1, p2}, Lsa1;->Q(Ldd1;Lbt3;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final N(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lsa1;->L:Lbl7;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-wide v0, p0, Lsa1;->O:J

    .line 8
    .line 9
    const-wide/16 v2, 0x1

    .line 10
    .line 11
    add-long/2addr v0, v2

    .line 12
    iput-wide v0, p0, Lsa1;->O:J

    .line 13
    .line 14
    iget-object v0, p0, Lsa1;->L:Lbl7;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lci4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iput-object v1, p0, Lsa1;->L:Lbl7;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lil0;->G()Lqo0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lqo0;->f()V

    .line 32
    .line 33
    .line 34
    :cond_2
    return v0
.end method

.method public final O()Lwj1;
    .locals 0

    .line 1
    iget-object p0, p0, Lsa1;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lwj1;

    .line 8
    .line 9
    return-object p0
.end method

.method public final P(Lwf3;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lsa1;->O()Lwj1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lwj1;->d:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lgg3;->a:Lgg3;

    .line 11
    .line 12
    invoke-static {}, Lgg3;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v4}, Lsa1;->N(Z)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lsa1;->O()Lwj1;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iput-boolean v2, p0, Lwj1;->d:Z

    .line 29
    .line 30
    iput-object v3, p0, Lwj1;->e:Ldd1;

    .line 31
    .line 32
    invoke-virtual {v0}, Lgg3;->d()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    sget-object v1, Lpa1;->a:[I

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    aget p1, v1, p1

    .line 43
    .line 44
    if-eq p1, v4, :cond_4

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    if-eq p1, v0, :cond_3

    .line 48
    .line 49
    const/4 v0, 0x3

    .line 50
    if-ne p1, v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Lil0;->G()Lqo0;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const p1, 0x7f1305a1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lqo0;->h(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    invoke-virtual {p0}, Lil0;->G()Lqo0;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lqo0;->f()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_4
    invoke-virtual {p0, v4}, Lsa1;->N(Z)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lsa1;->O()Lwj1;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-boolean v2, p1, Lwj1;->d:Z

    .line 83
    .line 84
    iput-object v3, p1, Lwj1;->e:Ldd1;

    .line 85
    .line 86
    invoke-virtual {v0}, Lgg3;->d()V

    .line 87
    .line 88
    .line 89
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 90
    .line 91
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    const/4 v8, 0x4

    .line 96
    const/4 v9, 0x0

    .line 97
    const-string v6, "Firebase not connected after waiting. Showing tips to user."

    .line 98
    .line 99
    const/4 v7, 0x0

    .line 100
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lsa1;->S()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lsa1;->O()Lwj1;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    iput-object v3, p0, Lwj1;->c:Lbt3;

    .line 111
    .line 112
    return-void
.end method

.method public final Q(Ldd1;Lbt3;)V
    .locals 2

    .line 1
    sget-object v0, Ltb1;->a:Ltb1;

    .line 2
    .line 3
    invoke-static {}, Lqb1;->m()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lsa1;->O()Lwj1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p1, p0, Lwj1;->c:Lbt3;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object v1, p0, Lwj1;->c:Lbt3;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lsa1;->O()Lwj1;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iput-object v1, p0, Lwj1;->c:Lbt3;

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    invoke-virtual {p0}, Lsa1;->O()Lwj1;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    iput-object p2, v0, Lwj1;->c:Lbt3;

    .line 44
    .line 45
    :cond_3
    if-eqz p1, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1}, Ldd1;->getConstant()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_4
    new-instance p1, Landroid/content/Intent;

    .line 52
    .line 53
    const-class p2, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 54
    .line 55
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    const-string p2, "cloud_constant"

    .line 59
    .line 60
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const/16 p2, 0x7d4

    .line 68
    .line 69
    invoke-virtual {p0, p1, p2}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final S()V
    .locals 4

    .line 1
    sget-object v0, Lgg3;->a:Lgg3;

    .line 2
    .line 3
    invoke-static {}, Lgg3;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lsa1;->N:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lsa1;->M:Lwa;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iput-boolean v1, p0, Lsa1;->N:Z

    .line 26
    .line 27
    const v0, 0x7f130299

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lah;

    .line 35
    .line 36
    const/16 v2, 0xc

    .line 37
    .line 38
    invoke-direct {v1, p0, v2}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const/16 v3, 0x10

    .line 43
    .line 44
    invoke-static {p0, v0, v1, v2, v3}, Lgg3;->h(Lsa1;Ljava/lang/Integer;Lah;Lej;I)Lwa;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lsa1;->M:Lwa;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    new-instance v1, Loa1;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Loa1;-><init>(Lsa1;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method public final T(Ldd1;Lbt3;)V
    .locals 9

    .line 1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v2, "Firebase not connected. Waiting before continuing cloud action."

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lsa1;->N(Z)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lsa1;->O()Lwj1;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Lwj1;->d:Z

    .line 25
    .line 26
    iput-object p1, v0, Lwj1;->e:Ldd1;

    .line 27
    .line 28
    iget-wide v0, p0, Lsa1;->O:J

    .line 29
    .line 30
    const-wide/16 v2, 0x1

    .line 31
    .line 32
    add-long/2addr v0, v2

    .line 33
    iput-wide v0, p0, Lsa1;->O:J

    .line 34
    .line 35
    iget-wide v4, p0, Lsa1;->O:J

    .line 36
    .line 37
    sget-object v0, Lzn4;->a:Lzn4;

    .line 38
    .line 39
    new-instance v2, Lra1;

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    move-object v3, p0

    .line 43
    move-object v6, p1

    .line 44
    move-object v7, p2

    .line 45
    invoke-direct/range {v2 .. v8}, Lra1;-><init>(Lsa1;JLdd1;Lbt3;Ljv1;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    invoke-static {p0, v2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iput-object p0, v3, Lsa1;->L:Lbl7;

    .line 54
    .line 55
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    const/16 v0, 0x7d4

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "onActivityResult: driveConnected = "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lsa1;->O()Lwj1;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lil0;->G()Lqo0;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sget-object v3, Lzn4;->a:Lzn4;

    .line 41
    .line 42
    new-instance v3, Lvj1;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-direct {v3, v2, v0, v1, v4}, Lvj1;-><init>(Lqo0;ZLwj1;Ljv1;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v4, v3}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/u;->onActivityResult(IILandroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lg00;->a:Lg00;

    .line 5
    .line 6
    invoke-static {}, Lg00;->C()V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object v0, Ltb1;->a:Ltb1;

    .line 12
    .line 13
    invoke-static {}, Lqb1;->m()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v1, Lua1;->g:Lua1;

    .line 20
    .line 21
    iget-boolean v0, v1, Ldv;->b:Z

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x6

    .line 27
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 v0, 0x1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const-string v1, "KEY_FIREBASE_ERROR_DIALOG_SHOWING"

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-ne p1, v0, :cond_1

    .line 44
    .line 45
    iput-boolean v0, p0, Lsa1;->N:Z

    .line 46
    .line 47
    sget-object p1, Lzn4;->a:Lzn4;

    .line 48
    .line 49
    new-instance p1, Lu31;

    .line 50
    .line 51
    invoke-direct {p1, p0, v0}, Lu31;-><init>(Lsa1;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    sget-object p1, Lgg3;->a:Lgg3;

    .line 58
    .line 59
    new-instance v1, Lg70;

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x1

    .line 63
    const/4 v2, 0x1

    .line 64
    const-class v4, Lsa1;

    .line 65
    .line 66
    const-string v5, "onFirebaseBackendWaitState"

    .line 67
    .line 68
    const-string v6, "onFirebaseBackendWaitState(Lorg/swiftapps/swiftbackup/common/FirebaseConnectionWatcher$BackendWaitState;)V"

    .line 69
    .line 70
    move-object v3, p0

    .line 71
    invoke-direct/range {v1 .. v8}, Lg70;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    sget-object p0, Lgg3;->e:Lex6;

    .line 75
    .line 76
    new-instance p1, Lk3;

    .line 77
    .line 78
    const/16 v2, 0xc

    .line 79
    .line 80
    invoke-direct {p1, v1, v2}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Li7;

    .line 84
    .line 85
    invoke-direct {v1, v0, p1}, Li7;-><init>(ILmt3;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v3, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lsa1;->O()Lwj1;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iget-boolean p0, p0, Lwj1;->d:Z

    .line 96
    .line 97
    if-eqz p0, :cond_3

    .line 98
    .line 99
    iget-object p0, v3, Lsa1;->L:Lbl7;

    .line 100
    .line 101
    if-nez p0, :cond_3

    .line 102
    .line 103
    sget-object p0, Lgg3;->d:Lwf3;

    .line 104
    .line 105
    sget-object p1, Lpa1;->a:[I

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    aget p0, p1, p0

    .line 112
    .line 113
    if-ne p0, v0, :cond_2

    .line 114
    .line 115
    sget-object p0, Lwf3;->TIMED_OUT:Lwf3;

    .line 116
    .line 117
    invoke-virtual {v3, p0}, Lsa1;->P(Lwf3;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_2
    invoke-virtual {v3}, Lsa1;->O()Lwj1;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    iget-object p0, p0, Lwj1;->e:Ldd1;

    .line 126
    .line 127
    invoke-virtual {v3}, Lsa1;->O()Lwj1;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object p1, p1, Lwj1;->c:Lbt3;

    .line 132
    .line 133
    invoke-virtual {v3, p0, p1}, Lsa1;->T(Ldd1;Lbt3;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lsa1;->N(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lsa1;->O()Lwj1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v0, Lwj1;->d:Z

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, v0, Lwj1;->e:Ldd1;

    .line 23
    .line 24
    sget-object v0, Lgg3;->a:Lgg3;

    .line 25
    .line 26
    invoke-virtual {v0}, Lgg3;->d()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lsa1;->O()Lwj1;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v1, v0, Lwj1;->c:Lbt3;

    .line 34
    .line 35
    :cond_0
    invoke-super {p0}, Lil0;->onDestroy()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lsa1;->N:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lsa1;->M:Lwa;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    const-string v0, "KEY_FIREBASE_ERROR_DIALOG_SHOWING"

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    invoke-super {p0, p1}, Lil0;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
