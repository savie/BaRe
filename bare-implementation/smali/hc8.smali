.class public final Lhc8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:[Lgc8;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;[Lgc8;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhc8;->a:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, Lhc8;->b:[Lgc8;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    mul-int/lit8 p1, p1, 0x1f

    .line 13
    .line 14
    add-int/2addr p1, p3

    .line 15
    iput p1, p0, Lhc8;->c:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-class v3, Lhc8;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lhc8;

    .line 19
    .line 20
    iget v2, p0, Lhc8;->c:I

    .line 21
    .line 22
    iget v3, p1, Lhc8;->c:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_5

    .line 25
    .line 26
    iget-object v2, p0, Lhc8;->a:Ljava/lang/Class;

    .line 27
    .line 28
    iget-object v3, p1, Lhc8;->a:Ljava/lang/Class;

    .line 29
    .line 30
    if-ne v2, v3, :cond_5

    .line 31
    .line 32
    iget-object p1, p1, Lhc8;->b:[Lgc8;

    .line 33
    .line 34
    iget-object p0, p0, Lhc8;->b:[Lgc8;

    .line 35
    .line 36
    array-length v2, p0

    .line 37
    array-length v3, p1

    .line 38
    if-ne v2, v3, :cond_5

    .line 39
    .line 40
    move v3, v1

    .line 41
    :goto_0
    if-ge v3, v2, :cond_4

    .line 42
    .line 43
    aget-object v4, p0, v3

    .line 44
    .line 45
    aget-object v5, p1, v3

    .line 46
    .line 47
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_3

    .line 52
    .line 53
    return v1

    .line 54
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    return v0

    .line 58
    :cond_5
    return v1
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lhc8;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lhc8;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "<>"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
