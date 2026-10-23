.class public Lqo0;
.super La55;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Lgv7;

.field public final d:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, La55;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lel;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Lel;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lgv7;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lqo0;->c:Lgv7;

    .line 16
    .line 17
    new-instance v0, Lzk;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v0, v1}, Lzk;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lgv7;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lqo0;->d:Lgv7;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Class;Lpw6;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lqo0;->e()Lix6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Loo0;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Loo0;-><init>(Ljava/lang/Class;Lpw6;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lqo0;->e()Lix6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lho0;->a:Lho0;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final e()Lix6;
    .locals 0

    .line 1
    iget-object p0, p0, Lqo0;->d:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lix6;

    .line 8
    .line 9
    return-object p0
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object p0, p0, Lqo0;->c:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lex6;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final g(Lzc6;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lqo0;->e()Lix6;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Ljo0;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljo0;-><init>(Lzc6;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final h(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lqo0;->c:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lex6;

    .line 8
    .line 9
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 10
    .line 11
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lqo0;->c:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lex6;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
