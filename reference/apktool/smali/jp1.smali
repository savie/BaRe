.class public final Ljp1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ljava/lang/StringBuilder;

.field public final b:Ljava/util/Stack;

.field public c:I

.field public d:I

.field public e:Z

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Lkp1;


# direct methods
.method public constructor <init>(Lkp1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    new-instance v0, Ljava/util/Stack;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ljp1;->b:Ljava/util/Stack;

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Ljp1;->c:I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Ljp1;->e:Z

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Ljp1;->f:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Ljp1;->g:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object p1, p0, Ljp1;->h:Lkp1;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a(I)Lgy5;
    .locals 3

    .line 1
    new-array v0, p1, [Lm61;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Ljp1;->b:Ljava/util/Stack;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lm61;

    .line 13
    .line 14
    aput-object v2, v0, v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Lgy5;

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lgy5;-><init>([Lm61;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    const-string v2, "Can\'t end range without starting a range!"

    .line 10
    .line 11
    invoke-static {v2, v0}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    :goto_1
    iget v0, p0, Ljp1;->d:I

    .line 15
    .line 16
    iget-object v2, p0, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, ")"

    .line 19
    .line 20
    if-ge v1, v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v0, p0, Ljp1;->c:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljp1;->a(I)Lgy5;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Lzm5;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Ljp1;->g:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Ljp1;->f:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 59
    .line 60
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "("

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v0, p0, Ljp1;->d:I

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljp1;->a(I)Lgy5;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ldy5;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Ldy5;-><init>(Lgy5;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v1}, Ldy5;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Ldy5;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lm61;

    .line 40
    .line 41
    iget-object v2, p0, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 42
    .line 43
    iget-object v0, v0, Lm61;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v0}, Lzm5;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, ":("

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Ljp1;->e:Z

    .line 62
    .line 63
    return-void
.end method
