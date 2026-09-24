.class public final Lc0;
.super Ljava/lang/Object;


# static fields
.field public static final d:[Lb0;


# instance fields
.field public a:[Lb0;

.field public b:I

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lb0;

    .line 3
    .line 4
    sput-object v0, Lc0;->d:[Lb0;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 28
    invoke-direct {p0, v0}, Lc0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lc0;->d:[Lb0;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-array p1, p1, [Lb0;

    .line 12
    .line 13
    :goto_0
    iput-object p1, p0, Lc0;->a:[Lb0;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lc0;->b:I

    .line 17
    .line 18
    iput-boolean p1, p0, Lc0;->c:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const-string p0, "\'initialCapacity\' must not be negative"

    .line 22
    .line 23
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    throw p0
.end method


# virtual methods
.method public final a(Lb0;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lc0;->a:[Lb0;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    iget v2, p0, Lc0;->b:I

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    add-int/2addr v2, v3

    .line 10
    const/4 v4, 0x0

    .line 11
    if-le v2, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v4

    .line 15
    :goto_0
    iget-boolean v1, p0, Lc0;->c:Z

    .line 16
    .line 17
    or-int/2addr v1, v3

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    array-length v0, v0

    .line 21
    shr-int/lit8 v1, v2, 0x1

    .line 22
    .line 23
    add-int/2addr v1, v2

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    new-array v0, v0, [Lb0;

    .line 29
    .line 30
    iget-object v1, p0, Lc0;->a:[Lb0;

    .line 31
    .line 32
    iget v3, p0, Lc0;->b:I

    .line 33
    .line 34
    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lc0;->a:[Lb0;

    .line 38
    .line 39
    iput-boolean v4, p0, Lc0;->c:Z

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lc0;->a:[Lb0;

    .line 42
    .line 43
    iget v1, p0, Lc0;->b:I

    .line 44
    .line 45
    aput-object p1, v0, v1

    .line 46
    .line 47
    iput v2, p0, Lc0;->b:I

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    const-string p0, "\'element\' cannot be null"

    .line 51
    .line 52
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final b(I)Lb0;
    .locals 2

    .line 1
    iget v0, p0, Lc0;->b:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lc0;->a:[Lb0;

    .line 6
    .line 7
    aget-object p0, p0, p1

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 11
    .line 12
    iget p0, p0, Lc0;->b:I

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " >= "

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public final c()[Lb0;
    .locals 3

    .line 1
    iget v0, p0, Lc0;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lc0;->d:[Lb0;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v1, p0, Lc0;->a:[Lb0;

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-ne v2, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lc0;->c:Z

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_1
    new-array p0, v0, [Lb0;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v1, v2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method
