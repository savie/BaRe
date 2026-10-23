.class public final Lye5;
.super Lme5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:Lex6;

.field public final g:Lex6;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lme5;-><init>()V

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
    iput-object v0, p0, Lye5;->f:Lex6;

    .line 10
    .line 11
    new-instance v0, Lex6;

    .line 12
    .line 13
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lye5;->g:Lex6;

    .line 17
    .line 18
    sget-object v0, Lhx0;->b:Lhx0;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lhx0;->i(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lzn4;->a:Lzn4;

    .line 24
    .line 25
    new-instance v0, Lzz;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-direct {v0, p0, v2, v1}, Lzz;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 33
    .line 34
    .line 35
    new-instance v0, Lqj;

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    invoke-direct {v0, p0, v2, v1}, Lqj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final onMessagesEvent(Laf5;)V
    .locals 3
    .annotation runtime Lqr7;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lzn4;->a:Lzn4;

    .line 5
    .line 6
    new-instance v0, Lzz;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, p0, v2, v1}, Lzz;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Laf5;->a:Lze5;

    .line 17
    .line 18
    sget-object v0, Lze5;->LOCAL_AND_CLOUD:Lze5;

    .line 19
    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    new-instance p1, Lqj;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-direct {p1, p0, v2, v0}, Lqj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
