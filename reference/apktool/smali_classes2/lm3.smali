.class public final Llm3;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Z

.field public f:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

.field public g:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

.field public final h:Lex6;

.field public final i:Lex6;

.field public final j:Lex6;


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
    iput-object v0, p0, Llm3;->h:Lex6;

    .line 10
    .line 11
    new-instance v0, Lex6;

    .line 12
    .line 13
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Llm3;->i:Lex6;

    .line 17
    .line 18
    new-instance v0, Lex6;

    .line 19
    .line 20
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Llm3;->j:Lex6;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final j(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)V
    .locals 3

    .line 1
    iput-object p1, p0, Llm3;->g:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->validateSourceFolder()Lom3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Llm3;->i:Lex6;

    .line 12
    .line 13
    iget-object v0, v0, Lom3;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->validateDisplayName()Lom3;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Llm3;->h:Lex6;

    .line 27
    .line 28
    iget-object v0, v0, Lom3;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Llm3;->f:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->isValid()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Llm3;->f:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 48
    .line 49
    invoke-static {v0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    move v1, v2

    .line 56
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    if-eqz p1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->isValid()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-ne p1, v2, :cond_4

    .line 68
    .line 69
    move v1, v2

    .line 70
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_0
    iget-object p0, p0, Llm3;->j:Lex6;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
