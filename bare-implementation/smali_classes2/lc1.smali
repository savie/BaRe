.class public final Llc1;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Z

.field public final f:Lex6;

.field public final g:Lix6;

.field public final h:Lix6;

.field public i:Ldd1;

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Llc1;->f:Lex6;

    .line 10
    .line 11
    new-instance v0, Lix6;

    .line 12
    .line 13
    invoke-direct {v0}, Lix6;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Llc1;->g:Lix6;

    .line 17
    .line 18
    new-instance v0, Lix6;

    .line 19
    .line 20
    invoke-direct {v0}, Lix6;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Llc1;->h:Lix6;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final j()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Llc1;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ltb1;->a:Ltb1;

    .line 6
    .line 7
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ldd1;->getConstant()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "CONNECT_RESULT status=PASS cloud="

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "CloudRuntimeSmoke"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    sget-object v0, Ltb1;->a:Ltb1;

    .line 35
    .line 36
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const-string v1, "cloud_manual_delete_warning_shown"

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    .line 49
    .line 50
    sget-object v0, Ltb1;->e:Lix6;

    .line 51
    .line 52
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lqo0;->d()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    const-string p0, "editor"

    .line 62
    .line 63
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    throw p0
.end method
