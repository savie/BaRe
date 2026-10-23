.class public final Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;
    }
.end annotation


# instance fields
.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Z

.field public final h:Lex6;

.field public final i:Lex6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

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
    sget-object v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;->Loading:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->h:Lex6;

    .line 15
    .line 16
    new-instance v0, Lex6;

    .line 17
    .line 18
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->i:Lex6;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final onCallsTaskComplete(Lc21;)V
    .locals 0
    .annotation runtime Lqr7;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lqo0;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
