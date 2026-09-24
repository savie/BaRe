.class public final Lng1;
.super La55;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public c:Z

.field public d:Lqo0;

.field public e:Z

.field public final f:Lex6;

.field public g:Lzc2;

.field public h:Ljg1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, La55;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lng1;->e:Z

    .line 6
    .line 7
    new-instance v0, Lex6;

    .line 8
    .line 9
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lng1;->f:Lex6;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    invoke-super {p0}, La55;->b()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lre3;->a:Lzc2;

    .line 5
    .line 6
    iget-object v0, p0, Lng1;->g:Lzc2;

    .line 7
    .line 8
    iget-object p0, p0, Lng1;->h:Ljg1;

    .line 9
    .line 10
    invoke-static {v0, p0}, Lre3;->n(Lzc2;Laj8;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final c()V
    .locals 7

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
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-boolean v0, Ltb1;->f:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 14
    .line 15
    iget-object v2, p0, La55;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v3, "Checking backups in new tag "

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v5, 0x4

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    sget-object v0, Lre3;->a:Lzc2;

    .line 34
    .line 35
    iget-object v0, p0, Lng1;->g:Lzc2;

    .line 36
    .line 37
    iget-object v1, p0, Lng1;->h:Ljg1;

    .line 38
    .line 39
    invoke-static {v0, v1}, Lre3;->n(Lzc2;Laj8;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lng1;->f:Lex6;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lre3;->f()Lzc2;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lng1;->g:Lzc2;

    .line 61
    .line 62
    new-instance v1, Ljg1;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Ljg1;-><init>(Lng1;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lng1;->h:Ljg1;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lzc2;->c(Laj8;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final onBackupTagChangeEvent(Lpb1;)V
    .locals 3
    .annotation runtime Lqr7;
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
    invoke-virtual {p0}, Lng1;->c()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
