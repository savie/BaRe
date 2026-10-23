.class public final Lq67;
.super Ljava/io/Writer;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lv08;


# direct methods
.method public constructor <init>(Lqw0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv08;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lv08;-><init>(Lqw0;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq67;->a:Lv08;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object p0, p0, Lq67;->a:Lv08;

    .line 2
    .line 3
    invoke-virtual {p0}, Lv08;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lv08;->b:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lv08;->d:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Lv08;->j:Ljava/lang/Object;

    .line 15
    .line 16
    iget-boolean v3, p0, Lv08;->f:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    iput-boolean v1, p0, Lv08;->f:Z

    .line 21
    .line 22
    iget-object v3, p0, Lv08;->h:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    iput v1, p0, Lv08;->c:I

    .line 30
    .line 31
    iput v1, p0, Lv08;->d:I

    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Lv08;->g:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lqw0;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-object v3, p0, Lv08;->i:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, [C

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    iput-object v2, p0, Lv08;->i:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object p0, v1, Lqw0;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, [C

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    array-length v4, v3

    .line 59
    array-length v2, v2

    .line 60
    if-le v4, v2, :cond_2

    .line 61
    .line 62
    :cond_1
    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-object v0
.end method

.method public final append(C)Ljava/io/Writer;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lq67;->write(I)V

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 3

    .line 23
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lq67;->a:Lv08;

    invoke-virtual {v2, v0, v1, p1}, Lv08;->b(IILjava/lang/String;)V

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1

    .line 1
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    iget-object v0, p0, Lq67;->a:Lv08;

    .line 15
    .line 16
    invoke-virtual {v0, p2, p3, p1}, Lv08;->b(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public final append(C)Ljava/lang/Appendable;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lq67;->write(I)V

    return-object p0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lq67;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lq67;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    return-object p0
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public final write(I)V
    .locals 3

    .line 1
    int-to-char p1, p1

    .line 2
    iget-object p0, p0, Lq67;->a:Lv08;

    .line 3
    .line 4
    iget v0, p0, Lv08;->b:I

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x10

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lv08;->i(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lv08;->e:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lv08;->j:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v0, p0, Lv08;->i:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, [C

    .line 21
    .line 22
    iget v1, p0, Lv08;->d:I

    .line 23
    .line 24
    array-length v2, v0

    .line 25
    if-lt v1, v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lv08;->f()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lv08;->i:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, [C

    .line 33
    .line 34
    :cond_1
    iget v1, p0, Lv08;->d:I

    .line 35
    .line 36
    add-int/lit8 v2, v1, 0x1

    .line 37
    .line 38
    iput v2, p0, Lv08;->d:I

    .line 39
    .line 40
    aput-char p1, v0, v1

    .line 41
    .line 42
    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object p0, p0, Lq67;->a:Lv08;

    invoke-virtual {p0, v0, v1, p1}, Lv08;->b(IILjava/lang/String;)V

    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 0

    .line 45
    iget-object p0, p0, Lq67;->a:Lv08;

    invoke-virtual {p0, p2, p3, p1}, Lv08;->b(IILjava/lang/String;)V

    return-void
.end method

.method public final write([C)V
    .locals 2

    const/4 v0, 0x0

    .line 46
    array-length v1, p1

    iget-object p0, p0, Lq67;->a:Lv08;

    invoke-virtual {p0, p1, v0, v1}, Lv08;->c([CII)V

    return-void
.end method

.method public final write([CII)V
    .locals 0

    .line 43
    iget-object p0, p0, Lq67;->a:Lv08;

    invoke-virtual {p0, p1, p2, p3}, Lv08;->c([CII)V

    return-void
.end method
