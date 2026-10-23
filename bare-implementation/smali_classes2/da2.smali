.class public final synthetic Lda2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lfa2;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(ZLfa2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lda2;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lda2;->b:Lfa2;

    .line 7
    .line 8
    iput-boolean p3, p0, Lda2;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lda2;->b:Lfa2;

    .line 2
    .line 3
    iget-object v1, v0, Lfa2;->d:Lex6;

    .line 4
    .line 5
    iget-boolean v2, p0, Lda2;->a:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    sget-object v3, Lnp6$e;->INSTANCE:Lnp6$e;

    .line 10
    .line 11
    invoke-virtual {v1, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object v3, Lnp6;->Companion:Lnp6$a;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Lnp6$a;->create(Z)Lnp6;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-wide/16 v3, 0x64

    .line 21
    .line 22
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    sget-object v3, Lnp6$c;->INSTANCE:Lnp6$c;

    .line 26
    .line 27
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    sget-object v3, Lqe7;->a:Lgv7;

    .line 34
    .line 35
    invoke-static {}, Lle7;->f()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    iget-boolean p0, p0, Lda2;->c:Z

    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 46
    .line 47
    iget-object v4, v0, La55;->b:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v7, 0x4

    .line 50
    const/4 v8, 0x0

    .line 51
    const-string v5, "No root but Shizuku seems to be running. Requesting permission..."

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lnp6$e;->INSTANCE:Lnp6$e;

    .line 58
    .line 59
    invoke-virtual {v1, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, v0, Lfa2;->e:Lix6;

    .line 63
    .line 64
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v1, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lfa2;->c()V

    .line 74
    .line 75
    .line 76
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 77
    .line 78
    return-object p0
.end method
