.class public final Laa;
.super Lda;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public h:Lqi4;

.field public final synthetic i:[Ljava/lang/reflect/Type;

.field public final synthetic j:Ljava/lang/reflect/Type;

.field public final synthetic k:Ljava/util/Set;

.field public final synthetic l:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IZ[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p7, p0, Laa;->i:[Ljava/lang/reflect/Type;

    .line 2
    .line 3
    iput-object p8, p0, Laa;->j:Ljava/lang/reflect/Type;

    .line 4
    .line 5
    iput-object p9, p0, Laa;->k:Ljava/util/Set;

    .line 6
    .line 7
    iput-object p10, p0, Laa;->l:Ljava/util/Set;

    .line 8
    .line 9
    move p7, p6

    .line 10
    const/4 p6, 0x1

    .line 11
    invoke-direct/range {p0 .. p7}, Lda;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lnh5;Lea;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lda;->a(Lnh5;Lea;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Laa;->i:[Ljava/lang/reflect/Type;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    iget-object v1, p0, Laa;->j:Ljava/lang/reflect/Type;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lwx3;->g(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v2, p0, Laa;->l:Ljava/util/Set;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Laa;->k:Ljava/util/Set;

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, p2, v1, v2}, Lnh5;->c(Lea;Ljava/lang/reflect/Type;Ljava/util/Set;)Lqi4;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p2, 0x0

    .line 33
    invoke-virtual {p1, v1, v2, p2}, Lnh5;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lqi4;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_0
    iput-object p1, p0, Laa;->h:Lqi4;

    .line 38
    .line 39
    return-void
.end method

.method public final d(Ldn4;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lda;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p0, p0, Laa;->h:Lqi4;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lqi4;->e(Ldn4;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
