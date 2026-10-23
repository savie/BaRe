.class public final Lqs9;
.super Lbd9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lot9;


# direct methods
.method public constructor <init>(Lot9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqs9;->a:Lot9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lqs9;->a:Lot9;

    .line 2
    .line 3
    iget-object p0, p0, Lot9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lmz9;

    .line 6
    .line 7
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lr0a;->e:Lr0a;

    .line 12
    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lqs9;->a:Lot9;

    .line 2
    .line 3
    iget-object p0, p0, Lot9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lmz9;

    .line 6
    .line 7
    instance-of v0, p1, Lqs9;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    check-cast p1, Lqs9;

    .line 13
    .line 14
    iget-object p1, p1, Lqs9;->a:Lot9;

    .line 15
    .line 16
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object p1, p1, Lot9;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lmz9;

    .line 23
    .line 24
    invoke-virtual {p1}, Lmz9;->z()Lr0a;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lmz9;->B()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Lmz9;->A()Lt69;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p1}, Lmz9;->A()Lt69;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lt69;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_1

    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    return p0

    .line 64
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 65
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object p0, p0, Lqs9;->a:Lot9;

    .line 2
    .line 3
    iget-object v0, p0, Lot9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lmz9;

    .line 6
    .line 7
    iget-object p0, p0, Lot9;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ld2a;

    .line 10
    .line 11
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lqs9;->a:Lot9;

    .line 2
    .line 3
    iget-object p0, p0, Lot9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lmz9;

    .line 6
    .line 7
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object v1, Lss9;->a:[I

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    aget p0, v1, p0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq p0, v1, :cond_3

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    if-eq p0, v1, :cond_2

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    if-eq p0, v1, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    if-eq p0, v1, :cond_0

    .line 34
    .line 35
    const-string p0, "UNKNOWN"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string p0, "CRUNCHY"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string p0, "RAW"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-string p0, "LEGACY"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const-string p0, "TINK"

    .line 48
    .line 49
    :goto_0
    const-string v1, ", outputPrefixType="

    .line 50
    .line 51
    const-string v2, ")"

    .line 52
    .line 53
    const-string v3, "(typeUrl="

    .line 54
    .line 55
    invoke-static {v3, v0, v1, p0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method
