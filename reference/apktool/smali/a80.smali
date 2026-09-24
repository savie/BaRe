.class public final La80;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public final synthetic b:Lb80;


# direct methods
.method public constructor <init>(Lb80;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La80;->b:Lb80;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, La80;->a:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, La80;->a:I

    .line 2
    .line 3
    iget-object p0, p0, La80;->b:Lb80;

    .line 4
    .line 5
    iget p0, p0, Lb80;->a:I

    .line 6
    .line 7
    if-ge v0, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, La80;->b:Lb80;

    .line 2
    .line 3
    iget-object v1, v0, Lb80;->c:[Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, La80;->a:I

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    new-instance v3, Lv70;

    .line 10
    .line 11
    iget-object v4, v0, Lb80;->b:[Ljava/lang/String;

    .line 12
    .line 13
    aget-object v2, v4, v2

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    :cond_0
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iput-object v5, v3, Lv70;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iput-object v1, v3, Lv70;->b:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, v3, Lv70;->c:Lb80;

    .line 40
    .line 41
    iget v0, p0, La80;->a:I

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    iput v0, p0, La80;->a:I

    .line 46
    .line 47
    return-object v3

    .line 48
    :cond_1
    const-string p0, "String must not be empty"

    .line 49
    .line 50
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v4

    .line 54
    :cond_2
    const-string p0, "Object must not be null"

    .line 55
    .line 56
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v4
.end method

.method public final remove()V
    .locals 4

    .line 1
    iget v0, p0, La80;->a:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iput v1, p0, La80;->a:I

    .line 6
    .line 7
    iget-object p0, p0, La80;->b:Lb80;

    .line 8
    .line 9
    iget v2, p0, Lb80;->a:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    sub-int/2addr v2, v1

    .line 14
    add-int/lit8 v2, v2, -0x1

    .line 15
    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Lb80;->b:[Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v3, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lb80;->c:[Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v3, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget v0, p0, Lb80;->a:I

    .line 29
    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    iput v0, p0, Lb80;->a:I

    .line 33
    .line 34
    iget-object v1, p0, Lb80;->b:[Ljava/lang/String;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    aput-object v2, v1, v0

    .line 38
    .line 39
    iget-object p0, p0, Lb80;->c:[Ljava/lang/String;

    .line 40
    .line 41
    aput-object v2, p0, v0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const-string p0, "Must be false"

    .line 45
    .line 46
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
