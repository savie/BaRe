.class public final Llg2;
.super Lat4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lqn5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lat4;-><init>(Lqn5;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llg2;->c:Ljava/util/Map;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lat4;)I
    .locals 0

    .line 1
    check-cast p1, Llg2;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0
.end method

.method public final d()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Llg2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Llg2;

    .line 7
    .line 8
    iget-object v0, p0, Llg2;->c:Ljava/util/Map;

    .line 9
    .line 10
    iget-object v1, p1, Llg2;->c:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lat4;->a:Lqn5;

    .line 19
    .line 20
    iget-object p1, p1, Lat4;->a:Lqn5;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Llg2;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Llg2;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p0, p0, Lat4;->a:Lqn5;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    add-int/2addr p0, v0

    .line 14
    return p0
.end method

.method public final q(Lqn5;)Lqn5;
    .locals 1

    .line 1
    invoke-static {p1}, Lxh8;->v(Lqn5;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lzm5;->s(Z)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Llg2;

    .line 9
    .line 10
    iget-object p0, p0, Llg2;->c:Ljava/util/Map;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Llg2;-><init>(Ljava/util/Map;Lqn5;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final v(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lat4;->e(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, "deferredValue:"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Llg2;->c:Ljava/util/Map;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
