.class public abstract Lfw0;
.super Lll0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfw0$a;
    }
.end annotation


# instance fields
.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lll0;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfw0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lll0;-><init>(Lll0;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lfw0;->d:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lfw0;->d:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p1, p1, Lfw0;->e:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lfw0;->e:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lfw0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lll0;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    return v2

    .line 18
    :cond_2
    check-cast p1, Lfw0;

    .line 19
    .line 20
    iget-object v1, p0, Lfw0;->d:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lfw0;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget-object p0, p0, Lfw0;->e:Ljava/lang/String;

    .line 31
    .line 32
    iget-object p1, p1, Lfw0;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    return v0

    .line 41
    :cond_3
    return v2
.end method

.method public f()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfw0;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfw0;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lll0;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lfw0;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p0, p0, Lfw0;->e:Ljava/lang/String;

    .line 12
    .line 13
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method
