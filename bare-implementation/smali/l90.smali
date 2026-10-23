.class public Ll90;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbw1;
.implements Ljk8;
.implements Los4;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lai5;Lix2;Lln5;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Ll90;->a:I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lj65;

    const/4 v1, 0x0

    .line 58
    invoke-direct {v0, p1, p3, v1}, Ly23;-><init>(Lai5;Lvb8;Ljava/lang/Class;)V

    .line 59
    iput-object v0, p0, Ll90;->b:Ljava/lang/Object;

    .line 60
    invoke-virtual {p2, p1}, Lix2;->d(Lai5;)Lbw1;

    move-result-object p3

    iput-object p3, p0, Ll90;->c:Ljava/lang/Object;

    .line 61
    invoke-virtual {p2, p1}, Lix2;->b(Lai5;)Lbw1;

    move-result-object p3

    iput-object p3, p0, Ll90;->d:Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Lai5;->n()Lcz4;

    move-result-object p1

    iput-object p1, p0, Ll90;->e:Ljava/lang/Object;

    .line 63
    iput-object p2, p0, Ll90;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x4

    iput v0, p0, Ll90;->a:I

    const v5, 0x7f0404b4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 55
    invoke-direct/range {v1 .. v6}, Ll90;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 8

    const/4 v0, 0x4

    iput v0, p0, Ll90;->a:I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ll90;->b:Ljava/lang/Object;

    .line 66
    new-instance v4, Lfc5;

    invoke-direct {v4, p1}, Lfc5;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Ll90;->c:Ljava/lang/Object;

    .line 67
    new-instance v0, Lzq8;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lzq8;-><init>(Ljava/lang/Object;I)V

    .line 68
    iput-object v0, v4, Lfc5;->e:Ldc5;

    .line 69
    new-instance v1, Lqc5;

    const/4 v7, 0x0

    move-object v5, p1

    move-object v6, p2

    move v2, p4

    move v3, p5

    invoke-direct/range {v1 .. v7}, Lqc5;-><init>(IILfc5;Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v1, p0, Ll90;->d:Ljava/lang/Object;

    .line 70
    iput p3, v1, Lqc5;->g:I

    .line 71
    new-instance p1, Lpc5;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lpc5;-><init>(Ljava/lang/Object;I)V

    .line 72
    iput-object p1, v1, Lqc5;->k:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll90;->a:I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    iput-object p1, p0, Ll90;->b:Ljava/lang/Object;

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    iput-object p2, p0, Ll90;->c:Ljava/lang/Object;

    .line 78
    iput-object p3, p0, Ll90;->e:Ljava/lang/Object;

    .line 79
    iput-object p4, p0, Ll90;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Ll90;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 0

    .line 81
    iput p6, p0, Ll90;->a:I

    iput-object p1, p0, Ll90;->b:Ljava/lang/Object;

    iput-object p2, p0, Ll90;->c:Ljava/lang/Object;

    iput-object p3, p0, Ll90;->d:Ljava/lang/Object;

    iput-object p4, p0, Ll90;->e:Ljava/lang/Object;

    iput-object p5, p0, Ll90;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ln81;Lbt3;Lbt3;Lbt3;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Ll90;->a:I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ll90;->b:Ljava/lang/Object;

    .line 52
    iput-object p2, p0, Ll90;->c:Ljava/lang/Object;

    .line 53
    iput-object p3, p0, Ll90;->d:Ljava/lang/Object;

    .line 54
    iput-object p4, p0, Ll90;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ln90;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ll90;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ll90;->f:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v0, Ln90;->c:Lfn4;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ln90;->a(Lao;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/net/Uri;

    .line 16
    .line 17
    iput-object v0, p0, Ll90;->b:Ljava/lang/Object;

    .line 18
    .line 19
    sget-object v0, Ln90;->d:Lfn4;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ln90;->a(Lao;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/net/Uri;

    .line 26
    .line 27
    iput-object v0, p0, Ll90;->c:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v0, Ln90;->f:Lfn4;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ln90;->a(Lao;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/net/Uri;

    .line 36
    .line 37
    iput-object v0, p0, Ll90;->e:Ljava/lang/Object;

    .line 38
    .line 39
    sget-object v0, Ln90;->e:Lfn4;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ln90;->a(Lao;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/net/Uri;

    .line 46
    .line 47
    iput-object p1, p0, Ll90;->d:Ljava/lang/Object;

    .line 48
    .line 49
    return-void
.end method

.method public static e(Lorg/json/JSONObject;)Ll90;
    .locals 5

    .line 1
    const-string v0, "json object cannot be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "discoveryDoc"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    :try_start_0
    new-instance v1, Ln90;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v1, p0}, Ln90;-><init>(Lorg/json/JSONObject;)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Ll90;

    .line 24
    .line 25
    invoke-direct {p0, v1}, Ll90;-><init>(Ln90;)V
    :try_end_0
    .catch Lm90; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance v0, Lorg/json/JSONException;

    .line 31
    .line 32
    iget-object p0, p0, Lm90;->a:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Missing required field in discovery doc: "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_0
    const-string v0, "authorizationEndpoint"

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const-string v2, "missing authorizationEndpoint"

    .line 59
    .line 60
    invoke-static {v2, v1}, Ljb9;->h(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const-string v1, "tokenEndpoint"

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    const-string v3, "missing tokenEndpoint"

    .line 70
    .line 71
    invoke-static {v3, v2}, Ljb9;->h(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Ll90;

    .line 75
    .line 76
    invoke-static {p0, v0}, Ljm1;->x(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {p0, v1}, Ljm1;->x(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v3, "registrationEndpoint"

    .line 85
    .line 86
    invoke-static {p0, v3}, Ljm1;->y(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    const-string v4, "endSessionEndpoint"

    .line 91
    .line 92
    invoke-static {p0, v4}, Ljm1;->y(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-direct {v2, v0, v1, v3, p0}, Ll90;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 97
    .line 98
    .line 99
    return-object v2
.end method


# virtual methods
.method public a(Lev5;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Ll90;->f:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lix2;

    .line 24
    .line 25
    invoke-virtual {v2}, Lix2;->a()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Ll90;->e:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lcz4;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v2}, Lev5;->i(Ljava/lang/String;)Lev5;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v4, p0, Ll90;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v4, Lbw1;

    .line 47
    .line 48
    invoke-interface {v4, v2, v1}, Lbw1;->a(Lev5;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Ll90;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lbw1;

    .line 54
    .line 55
    invoke-interface {v1, v2, v3}, Lbw1;->a(Lev5;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public b(Lmc4;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ll90;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj65;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lj65;->g(Lmc4;)Lgd4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lgd4;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0}, Lgd4;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1, v1}, Ll90;->h(Lmc4;Ljava/lang/Object;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    return-object v1
.end method

.method public c(Lmc4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ll90;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj65;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lj65;->g(Lmc4;)Lgd4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lgd4;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lgd4;->d()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-interface {v0, p2}, Lgd4;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Ll90;->h(Lmc4;Ljava/lang/Object;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    return-object p2
.end method

.method public d(Lmc4;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ll90;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj65;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lj65;->g(Lmc4;)Lgd4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lgd4;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0, v1}, Lgd4;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {p1}, Lmc4;->d()Lmc4;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v1, p0, Ll90;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lbw1;

    .line 29
    .line 30
    invoke-interface {v1, v0}, Lbw1;->d(Lmc4;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object v1, p0, Ll90;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lbw1;

    .line 40
    .line 41
    invoke-interface {v1, v0}, Lbw1;->d(Lmc4;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    :goto_0
    const/4 p0, 0x0

    .line 48
    return p0

    .line 49
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 50
    return p0
.end method

.method public f(I)V
    .locals 2

    .line 1
    new-instance v0, Lks7;

    .line 2
    .line 3
    iget-object v1, p0, Ll90;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lks7;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Ll90;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lfc5;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p0}, Lks7;->inflate(ILandroid/view/Menu;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Ll90;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ll90;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ll90;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltl8;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Ll90;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lbt3;

    .line 10
    .line 11
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lyl8;

    .line 16
    .line 17
    iget-object v1, p0, Ll90;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lbt3;

    .line 20
    .line 21
    invoke-interface {v1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lwl8;

    .line 26
    .line 27
    iget-object v2, p0, Ll90;->e:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Lbt3;

    .line 30
    .line 31
    invoke-interface {v2}, Lbt3;->invoke()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ln22;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance v3, Llj3;

    .line 47
    .line 48
    invoke-direct {v3, v0, v1, v2}, Llj3;-><init>(Lyl8;Lwl8;Ln22;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Ll90;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Ln81;

    .line 54
    .line 55
    invoke-virtual {v0}, Ln81;->b()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v3, v0, v1}, Llj3;->b(Ln81;Ljava/lang/String;)Ltl8;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Ll90;->f:Ljava/lang/Object;

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_0
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 75
    .line 76
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    return-object p0

    .line 81
    :cond_1
    return-object v0
.end method

.method public h(Lmc4;Ljava/lang/Object;)Ljava/util/Map;
    .locals 3

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    .line 3
    :goto_0
    invoke-interface {p1}, Lmc4;->d()Lmc4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Ljava/util/Map;

    .line 10
    .line 11
    return-object p2

    .line 12
    :cond_0
    iget-object v1, p0, Ll90;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lbw1;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Lbw1;->b(Lmc4;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Ll90;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lbw1;

    .line 23
    .line 24
    invoke-interface {v2, v0}, Lbw1;->b(Lmc4;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0
.end method

.method public i()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ll90;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Landroid/net/Uri;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "authorizationEndpoint"

    .line 15
    .line 16
    invoke-static {v0, v2, v1}, Ljm1;->H(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Ll90;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Landroid/net/Uri;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "tokenEndpoint"

    .line 28
    .line 29
    invoke-static {v0, v2, v1}, Ljm1;->H(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Ll90;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Landroid/net/Uri;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const-string v2, "registrationEndpoint"

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v2, v1}, Ljm1;->H(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v1, p0, Ll90;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Landroid/net/Uri;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    const-string v2, "endSessionEndpoint"

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0, v2, v1}, Ljm1;->H(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object p0, p0, Ll90;->f:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Ln90;

    .line 65
    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    const-string v1, "discoveryDoc"

    .line 69
    .line 70
    iget-object p0, p0, Ln90;->a:Lorg/json/JSONObject;

    .line 71
    .line 72
    invoke-static {v0, v1, p0}, Ljm1;->J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-object v0
.end method
