.class public final Lv01;
.super Lb11;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:Lex6;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb11;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lex6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lv01;->f:Lex6;

    .line 10
    .line 11
    sget-object v0, Lhx0;->b:Lhx0;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lhx0;->i(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final j(Ljava/util/List;Z)V
    .locals 2

    .line 1
    sget-object v0, Lzn4;->a:Lzn4;

    .line 2
    .line 3
    new-instance v0, Lt01;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, p1, p2, v1}, Lt01;-><init>(Lv01;Ljava/util/List;ZLjv1;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onCallEvent(Lqz0;)V
    .locals 3
    .annotation runtime Lqr7;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, La55;->b:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "event:"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    sget-object p1, Lzn4;->a:Lzn4;

    .line 24
    .line 25
    new-instance p1, Lu01;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {p1, p0, v1, v0}, Lu01;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onCallsBundleEvent(Lr01;)V
    .locals 3
    .annotation runtime Lqr7;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, La55;->b:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "["

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, "]"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    new-instance v0, Ls01;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iget-object v2, p1, Lr01;->a:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0, v2, v1}, Ls01;-><init>(Ljava/util/ArrayList;Z)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lv01;->f:Lex6;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-boolean p1, p1, Lr01;->b:Z

    .line 42
    .line 43
    iput-boolean p1, p0, Lv01;->g:Z

    .line 44
    .line 45
    return-void
.end method
