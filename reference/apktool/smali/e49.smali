.class public final Le49;
.super Lh59;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic n:I

.field public final o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lau2;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Le49;->n:I

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-direct {p0, v0}, Lh59;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lu59;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p1, v1, p2}, Lu59;-><init>(Lau2;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Le49;->o:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Le49;->n:I

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v0}, Lh59;-><init>(I)V

    .line 18
    const-string v0, "refresh token cannot be null"

    invoke-static {p1, v0}, Lly8;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Le49;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Le49;->n:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "sendSignInLinkToEmail"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "getAccessToken"

    .line 10
    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/google/android/gms/tasks/TaskCompletionSource;Lw49;)V
    .locals 4

    .line 1
    iget v0, p0, Le49;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lh59;->b:Ls79;

    .line 4
    .line 5
    iget-object v2, p0, Le49;->o:Ljava/lang/Object;

    .line 6
    .line 7
    const/16 v3, 0xa

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lwc9;

    .line 13
    .line 14
    invoke-direct {v0, v3, p0, p1}, Lwc9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lh59;->g:Lwc9;

    .line 18
    .line 19
    check-cast v2, Lu59;

    .line 20
    .line 21
    invoke-virtual {p2, v2, v1}, Lw49;->b(Lu59;Lv49;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    new-instance v0, Lwc9;

    .line 26
    .line 27
    invoke-direct {v0, v3, p0, p1}, Lwc9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lh59;->g:Lwc9;

    .line 31
    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Lly8;->e(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lly8;->h(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p2, Lw49;->a:Lke;

    .line 44
    .line 45
    new-instance p1, Lyf1;

    .line 46
    .line 47
    sget-object p2, Lw49;->b:Lu50;

    .line 48
    .line 49
    invoke-direct {p1, v1, p2}, Lyf1;-><init>(Lv49;Lu50;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Lly8;->e(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Lig9;

    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    invoke-direct {p2, v2, v0}, Lig9;-><init>(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lke;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Lg59;

    .line 67
    .line 68
    new-instance v1, Lzq8;

    .line 69
    .line 70
    invoke-direct {v1, p0, p1}, Lzq8;-><init>(Lke;Lyf1;)V

    .line 71
    .line 72
    .line 73
    iget-object p0, v0, Lg59;->c:Lc59;

    .line 74
    .line 75
    iget-object p1, v0, Lg59;->f:Ljava/lang/String;

    .line 76
    .line 77
    const-string v0, "/token"

    .line 78
    .line 79
    invoke-virtual {p0, v0, p1}, Lao;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v0, Lb69;

    .line 84
    .line 85
    invoke-direct {v0}, Lb69;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lao;->b:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p0, Lxt1;

    .line 91
    .line 92
    invoke-static {p1, p2, v1, v0, p0}, Lms8;->U(Ljava/lang/String;Le59;Ln59;Lf59;Lxt1;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 3

    .line 1
    iget v0, p0, Le49;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh59;->c:Lcom/google/firebase/FirebaseApp;

    .line 7
    .line 8
    iget-object v1, p0, Lh59;->i:Lx59;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lix0;->o(Lcom/google/firebase/FirebaseApp;Lx59;)Lp49;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lh59;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Llo9;

    .line 17
    .line 18
    iget-object v2, p0, Lh59;->h:Lb69;

    .line 19
    .line 20
    invoke-interface {v1, v2, v0}, Llo9;->b(Lb69;Lp49;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lf0a;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lf0a;-><init>(Lp49;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lh59;->f(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lh59;->h:Lb69;

    .line 33
    .line 34
    iget-object v0, v0, Lb69;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lh59;->h:Lb69;

    .line 43
    .line 44
    iget-object v1, p0, Le49;->o:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lly8;->e(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, v0, Lb69;->a:Ljava/lang/String;

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lh59;->e:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Llo9;

    .line 59
    .line 60
    iget-object v1, p0, Lh59;->h:Lb69;

    .line 61
    .line 62
    iget-object v2, p0, Lh59;->d:Lp49;

    .line 63
    .line 64
    invoke-interface {v0, v1, v2}, Llo9;->b(Lb69;Lp49;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lh59;->h:Lb69;

    .line 68
    .line 69
    iget-object v0, v0, Lb69;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v0}, Lq99;->a(Ljava/lang/String;)Ldx3;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lh59;->f(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
