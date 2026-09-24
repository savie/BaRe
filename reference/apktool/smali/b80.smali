.class public final Lb80;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final d:[Ljava/lang/String;


# instance fields
.field public a:I

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    sput-object v0, Lb80;->d:[Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lb80;->a:I

    .line 6
    .line 7
    sget-object v0, Lb80;->d:[Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lb80;->b:[Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lb80;->c:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    :goto_0
    iget v1, p0, Lb80;->a:I

    .line 5
    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lb80;->b:[Ljava/lang/String;

    .line 9
    .line 10
    aget-object v1, v1, v0

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, -0x1

    .line 23
    return p0

    .line 24
    :cond_2
    const-string p0, "Object must not be null"

    .line 25
    .line 26
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 6

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lb80;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    iget v1, p0, Lb80;->a:I

    .line 8
    .line 9
    iput v1, v0, Lb80;->a:I

    .line 10
    .line 11
    iget-object v1, p0, Lb80;->b:[Ljava/lang/String;

    .line 12
    .line 13
    iget v2, p0, Lb80;->a:I

    .line 14
    .line 15
    new-array v3, v2, [Ljava/lang/String;

    .line 16
    .line 17
    array-length v4, v1

    .line 18
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iput-object v3, p0, Lb80;->b:[Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p0, Lb80;->c:[Ljava/lang/String;

    .line 29
    .line 30
    iget v2, p0, Lb80;->a:I

    .line 31
    .line 32
    new-array v3, v2, [Ljava/lang/String;

    .line 33
    .line 34
    array-length v5, v1

    .line 35
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    iput-object v3, p0, Lb80;->c:[Ljava/lang/String;

    .line 43
    .line 44
    return-object v0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    if-eqz p1, :cond_4

    .line 6
    .line 7
    const-class v0, Lb80;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    check-cast p1, Lb80;

    .line 17
    .line 18
    iget v0, p0, Lb80;->a:I

    .line 19
    .line 20
    iget v1, p1, Lb80;->a:I

    .line 21
    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-object v0, p0, Lb80;->b:[Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p1, Lb80;->b:[Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    iget-object p0, p0, Lb80;->c:[Ljava/lang/String;

    .line 37
    .line 38
    iget-object p1, p1, Lb80;->c:[Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 46
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lb80;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lb80;->b:[Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object p0, p0, Lb80;->c:[Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    add-int/2addr v0, p0

    .line 21
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, La80;

    .line 2
    .line 3
    invoke-direct {v0, p0}, La80;-><init>(Lb80;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
