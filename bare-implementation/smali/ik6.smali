.class public final Lik6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lq36;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lik6;->a:I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lik6;->d:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lik6;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lik6;->b:Z

    return-void
.end method

.method public constructor <init>(Lhk6;Ljava/util/List;ZI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lik6;->a:I

    .line 3
    .line 4
    and-int/lit8 v0, p4, 0x2

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object p2, Lov2;->a:Lov2;

    .line 9
    .line 10
    :cond_0
    and-int/lit8 p4, p4, 0x8

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    const/4 p3, 0x1

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lik6;->d:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p2, p0, Lik6;->c:Ljava/lang/Object;

    .line 27
    .line 28
    iput-boolean p3, p0, Lik6;->b:Z

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(ZLjava/util/List;Lgy5;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lik6;->a:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lik6;->b:Z

    iput-object p2, p0, Lik6;->c:Ljava/lang/Object;

    iput-object p3, p0, Lik6;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Lkh8;

    .line 2
    .line 3
    iget-object v0, p0, Lik6;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lgy5;

    .line 6
    .line 7
    iget-boolean v1, p1, Lkh8;->e:Z

    .line 8
    .line 9
    iget-object v2, p1, Lkh8;->b:Lgy5;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lik6;->b:Z

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lik6;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Ljava/util/List;

    .line 20
    .line 21
    iget-wide v3, p1, Lkh8;->a:J

    .line 22
    .line 23
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Lgy5;->g(Lgy5;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lgy5;->g(Lgy5;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    :cond_1
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_2
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lik6;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lik6;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lhk6;

    .line 14
    .line 15
    iget-object v1, p0, Lik6;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-boolean p0, p0, Lik6;->b:Z

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, "RepositoryResult(status="

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ", message=null, data size="

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", scrollListToTop="

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ")"

    .line 49
    .line 50
    invoke-static {v2, p0, v0}, Ldj7;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
