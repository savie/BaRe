.class public final Lf61;
.super Lez2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Lwj6;

.field public final e:Le61;

.field public final f:Lqc6;


# direct methods
.method public constructor <init>(Lwj6;Le61;Lqc6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lez2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf61;->d:Lwj6;

    .line 5
    .line 6
    iput-object p2, p0, Lf61;->e:Le61;

    .line 7
    .line 8
    iput-object p3, p0, Lf61;->f:Lqc6;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lqc6;)Lez2;
    .locals 2

    .line 1
    new-instance v0, Lf61;

    .line 2
    .line 3
    iget-object v1, p0, Lf61;->d:Lwj6;

    .line 4
    .line 5
    iget-object p0, p0, Lf61;->e:Le61;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p1}, Lf61;-><init>(Lwj6;Le61;Lqc6;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final b(Lk31;Lqc6;)Lpa2;
    .locals 2

    .line 1
    iget-object p2, p2, Lqc6;->a:Lgy5;

    .line 2
    .line 3
    iget-object v0, p1, Lk31;->d:Lm61;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lgy5;->d(Lm61;)Lgy5;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    new-instance v0, Lzc2;

    .line 10
    .line 11
    iget-object v1, p0, Lf61;->d:Lwj6;

    .line 12
    .line 13
    invoke-direct {v0, v1, p2}, Lzc2;-><init>(Lwj6;Lgy5;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p1, Lk31;->b:Lsb4;

    .line 17
    .line 18
    new-instance v1, Leb2;

    .line 19
    .line 20
    invoke-direct {v1, v0, p2}, Leb2;-><init>(Lzc2;Lsb4;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p1, Lk31;->e:Lm61;

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    iget-object p2, p2, Lm61;->a:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p2, 0x0

    .line 31
    :goto_0
    new-instance v0, Lpa2;

    .line 32
    .line 33
    iget p1, p1, Lk31;->a:I

    .line 34
    .line 35
    invoke-direct {v0, p1, p0, v1, p2}, Lpa2;-><init>(ILez2;Leb2;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public final c(Lwc2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lf61;->e:Le61;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Le61;->onCancelled(Lwc2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Lpa2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lez2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p1, Lpa2;->a:I

    .line 11
    .line 12
    iget-object p1, p1, Lpa2;->c:Leb2;

    .line 13
    .line 14
    invoke-static {v0}, Ldj7;->A(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object p0, p0, Lf61;->e:Le61;

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-eq v0, v1, :cond_3

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-interface {p0, p1}, Le61;->b(Leb2;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-interface {p0, p1}, Le61;->c(Leb2;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    invoke-interface {p0, p1}, Le61;->d(Leb2;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_4
    invoke-interface {p0, p1}, Le61;->a(Leb2;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final e()Lqc6;
    .locals 0

    .line 1
    iget-object p0, p0, Lf61;->f:Lqc6;

    .line 2
    .line 3
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lf61;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lf61;

    .line 6
    .line 7
    iget-object v0, p1, Lf61;->e:Le61;

    .line 8
    .line 9
    iget-object v1, p0, Lf61;->e:Le61;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Lf61;->d:Lwj6;

    .line 18
    .line 19
    iget-object v1, p0, Lf61;->d:Lwj6;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object p1, p1, Lf61;->f:Lqc6;

    .line 28
    .line 29
    iget-object p0, p0, Lf61;->f:Lqc6;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lqc6;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public final f(Lez2;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lf61;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lf61;

    .line 6
    .line 7
    iget-object p1, p1, Lf61;->e:Le61;

    .line 8
    .line 9
    iget-object p0, p0, Lf61;->e:Le61;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final g(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x5

    .line 2
    if-eq p1, p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf61;->e:Le61;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lf61;->d:Lwj6;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object p0, p0, Lf61;->f:Lqc6;

    .line 19
    .line 20
    invoke-virtual {p0}, Lqc6;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/2addr p0, v1

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ChildEventRegistration"

    .line 2
    .line 3
    return-object p0
.end method
