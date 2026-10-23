.class public final Lgz3;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Z

.field public final f:Lgv7;

.field public final g:Lix6;

.field public final h:Lix6;

.field public final i:Lix6;

.field public final j:Lix6;

.field public final k:Lix6;

.field public final l:Lix6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfl;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lfl;-><init>(I)V

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
    iput-object v1, p0, Lgz3;->f:Lgv7;

    .line 17
    .line 18
    new-instance v0, Lix6;

    .line 19
    .line 20
    invoke-direct {v0}, Lix6;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lgz3;->g:Lix6;

    .line 24
    .line 25
    new-instance v0, Lix6;

    .line 26
    .line 27
    invoke-direct {v0}, Lix6;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lgz3;->h:Lix6;

    .line 31
    .line 32
    new-instance v0, Lix6;

    .line 33
    .line 34
    invoke-direct {v0}, Lix6;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lgz3;->i:Lix6;

    .line 38
    .line 39
    new-instance v0, Lix6;

    .line 40
    .line 41
    invoke-direct {v0}, Lix6;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lgz3;->j:Lix6;

    .line 45
    .line 46
    new-instance v0, Lix6;

    .line 47
    .line 48
    invoke-direct {v0}, Lix6;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lgz3;->k:Lix6;

    .line 52
    .line 53
    new-instance v0, Lix6;

    .line 54
    .line 55
    invoke-direct {v0}, Lix6;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lgz3;->l:Lix6;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lgz3;->h:Lix6;

    .line 4
    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object p2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 12
    .line 13
    const p2, 0x7f13007f

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Ldj7;->g(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move-object v2, p1

    .line 34
    goto :goto_2

    .line 35
    :cond_3
    :goto_1
    move-object v2, p2

    .line 36
    :goto_2
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 37
    .line 38
    iget-object v1, p0, La55;->b:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v4, 0x4

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lgz3;->i:Lix6;

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
