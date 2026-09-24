.class public final Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f$a;
    }
.end annotation


# instance fields
.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Z

.field public final h:Lgv7;

.field public final i:Lex6;

.field public final j:Lex6;

.field public final k:Lex6;

.field public final l:Lex6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb7;

    .line 5
    .line 6
    const/16 v1, 0x16

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->h:Lgv7;

    .line 17
    .line 18
    new-instance v0, Lex6;

    .line 19
    .line 20
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f$a;->Loading:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f$a;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->i:Lex6;

    .line 29
    .line 30
    new-instance v0, Lex6;

    .line 31
    .line 32
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->j:Lex6;

    .line 36
    .line 37
    new-instance v0, Lex6;

    .line 38
    .line 39
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->k:Lex6;

    .line 43
    .line 44
    new-instance v0, Lex6;

    .line 45
    .line 46
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->l:Lex6;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final onMessagesTaskComplete(Ljf5;)V
    .locals 0
    .annotation runtime Lqr7;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p1, Ljf5;->a:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lqo0;->d()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lud5;->j()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->l:Lex6;

    .line 19
    .line 20
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Lqo0;->d()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
