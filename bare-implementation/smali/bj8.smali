.class public final Lbj8;
.super Lez2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Lwj6;

.field public final e:Laj8;

.field public final f:Lqc6;


# direct methods
.method public constructor <init>(Lwj6;Laj8;Lqc6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lez2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbj8;->d:Lwj6;

    .line 5
    .line 6
    iput-object p2, p0, Lbj8;->e:Laj8;

    .line 7
    .line 8
    iput-object p3, p0, Lbj8;->f:Lqc6;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lqc6;)Lez2;
    .locals 2

    .line 1
    new-instance v0, Lbj8;

    .line 2
    .line 3
    iget-object v1, p0, Lbj8;->d:Lwj6;

    .line 4
    .line 5
    iget-object p0, p0, Lbj8;->e:Laj8;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p1}, Lbj8;-><init>(Lwj6;Laj8;Lqc6;)V

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
    new-instance v0, Lzc2;

    .line 4
    .line 5
    iget-object v1, p0, Lbj8;->d:Lwj6;

    .line 6
    .line 7
    invoke-direct {v0, v1, p2}, Lzc2;-><init>(Lwj6;Lgy5;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lk31;->b:Lsb4;

    .line 11
    .line 12
    new-instance p2, Leb2;

    .line 13
    .line 14
    invoke-direct {p2, v0, p1}, Leb2;-><init>(Lzc2;Lsb4;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lpa2;

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {p1, v0, p0, p2, v1}, Lpa2;-><init>(ILez2;Leb2;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method

.method public final c(Lwc2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lbj8;->e:Laj8;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Laj8;->onCancelled(Lwc2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Lpa2;)V
    .locals 1

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
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lbj8;->e:Laj8;

    .line 11
    .line 12
    iget-object p1, p1, Lpa2;->c:Leb2;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Laj8;->onDataChange(Leb2;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final e()Lqc6;
    .locals 0

    .line 1
    iget-object p0, p0, Lbj8;->f:Lqc6;

    .line 2
    .line 3
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lbj8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lbj8;

    .line 6
    .line 7
    iget-object v0, p1, Lbj8;->e:Laj8;

    .line 8
    .line 9
    iget-object v1, p0, Lbj8;->e:Laj8;

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
    iget-object v0, p1, Lbj8;->d:Lwj6;

    .line 18
    .line 19
    iget-object v1, p0, Lbj8;->d:Lwj6;

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
    iget-object p1, p1, Lbj8;->f:Lqc6;

    .line 28
    .line 29
    iget-object p0, p0, Lbj8;->f:Lqc6;

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
    instance-of v0, p1, Lbj8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lbj8;

    .line 6
    .line 7
    iget-object p1, p1, Lbj8;->e:Laj8;

    .line 8
    .line 9
    iget-object p0, p0, Lbj8;->e:Laj8;

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
    if-ne p1, p0, :cond_0

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
    iget-object v0, p0, Lbj8;->e:Laj8;

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
    iget-object v1, p0, Lbj8;->d:Lwj6;

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
    iget-object p0, p0, Lbj8;->f:Lqc6;

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
    const-string p0, "ValueEventRegistration"

    .line 2
    .line 3
    return-object p0
.end method
