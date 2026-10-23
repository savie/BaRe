.class public final Lv37;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Z

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public final h:Lex6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lov2;->a:Lov2;

    .line 5
    .line 6
    iput-object v0, p0, Lv37;->f:Ljava/util/List;

    .line 7
    .line 8
    iput-object v0, p0, Lv37;->g:Ljava/util/List;

    .line 9
    .line 10
    new-instance v0, Lex6;

    .line 11
    .line 12
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lv37;->h:Lex6;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lv37;->g:Ljava/util/List;

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-static {p1, v0}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-static {v0, p1}, Lel1;->e1(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-static {p1}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lv37;->g:Ljava/util/List;

    .line 28
    .line 29
    new-instance p1, Las4;

    .line 30
    .line 31
    const/16 p2, 0xd

    .line 32
    .line 33
    invoke-direct {p1, p0, p2}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_1
    return-void
.end method
